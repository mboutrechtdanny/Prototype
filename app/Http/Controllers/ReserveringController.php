<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\User;
use App\Reservering;
use App\Ticket;
use App\Maaltijd;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\DB;
use App\Events\MessageTicket;
use PDF;
use QrCode;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;


class ReserveringController extends Controller

{
    public function getReserveringIndex()
    {
        $query = DB::table('ticket_types')->get();
        $queryMaaltijd = DB::table('maaltijd_types')->get();
        return view('layouts.reserveren.reservering')->with(['tickets'=>$query, 'maaltijden'=>$queryMaaltijd]);     
       /* return view('layouts.reserveren.reservering')->with(['tickets'=>$query, 'maaltijds'=>$queryMaaltijd]);     */
       
    }
    
    
    public function getmongo() 
    {
       /* $client = new \MongoDB\Client();
        dd($client);*/
        /*phpinfo();
        die();*/

        $users = DB::connection('mongodb')->collection('reservering')->get();
        return view('mongo')->with(['users'=>$users]);
    }
    
    public function getBijeenkomst()
    {
        $query = DB::table('ticket_types')->get();
        $queryMaaltijd = DB::table('maaltijd_types')->get();
        return view('layouts.reserveren.bijeenkomst')->with(['tickets'=>$query, 'maaltijden'=>$queryMaaltijd]);
    }
    
    public function postBijeenkomst(Request $request)
    {
        
        $post = $request->all();
        
        $check_aantal = DB::table('ticket_types')->where('id','6')->value('aantal_beschikbaar');
        
        
        $reservecode = DB::table('bijeenkomsts')->value('reserveringscode', $post['reserveringscode']);
        
        
        $magkopen2 = DB::table('bijeenkomsts')->where('reserveringscode', $post['reserveringscode'])->value('aantal');
        
        if($check_aantal < $post['counter'] || $post['counter'] > $magkopen2) 
        {
        return redirect()->route('bijeenkomst')->with(['fail' => 'U kunt alleen maar  ' . $magkopen2 .' tickets bestellen 
        of uw reserveringscode klopt niet']);
        }
        else{
        
         $usertest = array(
            
                        'id' => DB::table('users')->max('id') + 1,
                        'naam' => $post['naam'],
                        'tussenvoegsel' => $post['tussenvoegsel'],
                        'achternaam' => $post['achternaam'],
                        'email' => $post['email'],
                        'telnummer' => $post['telnummer'],
                        'adres' => $post['adres'],
                        'woonplaats' => $post['woonplaats'],
                        'role' => 1,
                             
                      );
        
        
        
        $j = DB::table('users')->insertgetId($usertest);
            
        $reserveringtest = array(
            
                        'id' => DB::table('reserverings')->max('id') + 1,
                        'user' => $j,
                        'betaalmethode' => $post['betaalmethode'],
                        'totale_prijs' => 50,
                      );
                      
        $h = DB::table('reserverings')->insertgetId($reserveringtest);              
                      
                      
            
            $ticketTests = []; 
            for($i=0;$i < count($post['ticket']); $i++)
            {
            	
            	
            DB::table('ticket_types')
            ->where('id', $post['ticket'][$i])
            ->decrement('aantal_beschikbaar');
            
            
                 $ticketTests[] = Ticket::create([
                             'ticket_type' => $post['ticket'][$i],
                             'reservering' => $h,
                             'ticketcode' => $j . $post['ticket'][$i] . $h,]
                    );
                    
                    
            }
            
            $ticketTypes = DB::table('ticket_types')->get();
            
            
            $pdf = PDF::loadView('pdf.customer',[
                'reserveringtest' => $reserveringtest,
                'user' => $usertest,
                'tickettest' => $ticketTests,
                'ticketTypes' => $ticketTypes,
                ]);
            
            foreach ($ticketTests as $test){
                
                QrCode::format('png')->size(250)->generate('ticketcode: ' .$test->ticketcode,public_path(). '/src/tickets/'.$test->id.'.jpg');
            }
            
            Event::fire(new MessageTicket($reserveringtest,$usertest,$pdf));
                    
        
        return redirect()->route('reservering.compleet')->with(['success' => 'U heeft succesvol gereserveerd voor de bijeenkomst!
        De ticket(s) zijn verstuurd naar de opgegeven email :'. '  ' . $usertest['email']]);
    
    
        }
    }
    //compleet
    public function getReserveringCompleet()
    {
        return view('layouts.reserveren.reservering_compleet');
    }
    
    
    public function getTest() 
    {
        $query1 = DB::table('ticket_types')->get();
        $queryMaaltijd1 = DB::table('maaltijd_types')->get();
        
        return view('test.test')->with(['ticket_types'=>$query1, 'maaltijd_types'=>$queryMaaltijd1]);
        
    }

    //reserveren
    public function postReservering(Request $request)
    {
       
        $this->validate($request, [
                'naam' => 'required',
                'email' => 'required|email',
                'ticket' => 'required'
        ]);
        
        $post = $request->all();    
        
        $usertest = [];
        $usertest = [
            'naam' => $post['naam'],
            'tussenvoegsel' => $post['tussenvoegsel'],
            'achternaam' => $post['achternaam'],
            'email' => $post['email'],
            'telnummer' => $post['telnummer'],
            'adres' => $post['adres'],
            'woonplaats' => $post['woonplaats'],
            'role' => 'bezoeker',
        ];
        
                    
        $reserveringtest = [];
        $reserveringtest = [
            'betaalmethode' => $post['betaalmethode'],
            'totale_prijs' => $post['totaalReservering']
        ];
                      
         
                      
            $ticketTests2 = [];
            for($i=0;$i < count($post['ticket']); $i++)
            {
            	
            DB::table('ticket_types')
            ->where('id', $post['ticket'][$i])
            ->decrement('aantal_beschikbaar');
            
                if($post['ticket'][$i] == 1) {
                    $ticket_dag = "vrijdag";
                    $ticketTests2[] = [
                    'dag' => $ticket_dag,
                    'ticketcode' => uniqid('ti')
                        ];
                }
                
                
                else if($post['ticket'][$i] == 2) {
                    $ticket_dag = "zaterdag";
                    
                    $ticketTests2[] = [
                    'dag' => $ticket_dag,
                    'ticketcode' => uniqid('ti')
                        ];
                }
                
                else if($post['ticket'][$i] == 3) {
                    $ticket_dag = "zondag";
                    
                    $ticketTests2[] = [
                    'dag' => $ticket_dag,
                    'ticketcode' => uniqid('ti')
                        ];
                }
                
                else if($post['ticket'][$i] == 4) {
                    $ticket_dag = "weekend";
                    
                    $ticketTests2[] = [
                    'dag' => $ticket_dag,
                    'ticketcode' => uniqid('ti')
                        ];
                }
                
                else if($post['ticket'][$i] == 5) {
                    $ticket_dag = "passe-partout";
                    
                    $ticketTests2[] = [
                    'dag' => $ticket_dag,
                    'ticketcode' => uniqid('ti')
                        ];
                }
                
                else {
                        $ticketTests2[] = [
                            'ticket_type' => $post['ticket'][$i],
                            'ticketcode' => uniqid('ti')
                        ];
                }
            }
            
            
            // if maaltijd besteld
            if (isset($post["maaltijd"])) {
                $maaltijdTests2 = [];
                for ($i = 0; $i < count($post["maaltijd"]); $i++)
                {
                    
                     $maaltijdTests2[] = [
                    'dag' => $post['dag'][$i],
                    'maaltijdcode' => uniqid('ma')
                     ];
            
            $reservation = Reservering::create([
                'user' => $usertest,
                'betaalmethode' => $post['betaalmethode'],
                'totale_prijs' => $post['totaalReservering'],
                    'ticket' => $ticketTests2,
                    'maaltijden' =>$maaltijdTests2
            ]);
            
            
            $pdf = PDF::loadView('pdf.customer',[
                'reserveringtest' => $reservation,
                'user' => $usertest,
                'tickettest' => $ticketTests2,
                'maaltijdtest' => $maaltijdTests2
                ]);
            
            
                }
                
            Event::fire(new MessageTicket($reserveringtest,$usertest,$pdf));
            }
            
            // maaltijd not set
            else {
                
            $ticketTypes = DB::table('ticket_types')->get();
            
            $reservation = Reservering::create([
                'user' => $usertest,
                'betaalmethode' => $post['betaalmethode'],
                'totale_prijs' => $post['totaalReservering'],
                    'ticket' => $ticketTests2
            ]);
            
            $pdf = PDF::loadView('pdf.customer',[
                'reserveringtest' => $reserveringtest,
                'user' => $usertest,
                'tickettest' => $ticketTests2
                ]);
            
            
            Event::fire(new MessageTicket($reserveringtest,$usertest,$pdf));
                    
            }
    
            return redirect()->route('reservering.compleet')->with(['success' => 'U heeft succesvol Gereserveerd!']);
    
    }
    
}
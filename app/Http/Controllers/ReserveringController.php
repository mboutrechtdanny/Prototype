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
        
        /*$counterVrijdag = $request>get('counter');*/
        
       /* $aantal_beschikbaarVrijdag = DB::table('')
        
        if($counterVrijdag > $ ) */
       
        /*$getMaxidmongo = DB::connection('mongodb')->collection('reservering')->get();
        
        var_dump($getMaxidmongo);
        die();
       */
       
        $this->validate($request, [
                'naam' => 'required',
                'email' => 'required|email',
                'ticket' => 'required'
                
            ]);
         $post = $request->all();    
         
        
        $usertest = array(
            'id' => DB::table('users')->max('id') + 1,
            'naam' => $post['naam'],
            'tussenvoegsel' => $post['tussenvoegsel'],
            'achternaam' => $post['achternaam'],
            'email' => $post['email'],
            'telnummer' => $post['telnummer'],
            'adres' => $post['adres'],
            'woonplaats' => $post['woonplaats'],
            'gebruikersnaam' => 'test',
            'password' => bcrypt('test'),
            'role' => 1,
                      );
        
        
        
        $j = DB::table('users')->insertgetId($usertest);
            
        $reserveringtest = array(
            
                        'id' => DB::table('reserverings')->max('id') + 1,
                        'user' => $j,
                        'betaalmethode' => $post['betaalmethode'],
                        'totale_prijs' => $post['totaalReservering'],
                      );
                      
        $h = DB::table('reserverings')->insertgetId($reserveringtest);              
                      
            
            $ticketTests = []; 
            $ticketTests2 = [];
            for($i=0;$i < count($post['ticket']); $i++)
            {
            	
            	
            DB::table('ticket_types')
            ->where('id', $post['ticket'][$i])
            ->decrement('aantal_beschikbaar');
            
            /*
            $checkAantalbeschikbaar = DB::table('ticket_types')->get('aantal_beschikbaar');
            
            if($checkAantalbeschikbaar < 0 ) {
            	
            } */
            
            
                 $ticketTests[] = Ticket::create([
                             'ticket_type' => $post['ticket'][$i],
                             'reservering' => $h,
                             'ticketcode' => $post['ticket'][$i] . $j . $h . DB::table('tickets')->max('id')
                             ]);
                    
                    
                  $ticketTests2[] = [
                             'id' => DB::table('tickets')->max('id') + 1,
                             'ticket_type' => $post['ticket'][$i],
                             'ticketcode' => uniqid('ti')
                             ];
            }
            
            
            // if maaltijd besteld
            if (isset($post["maaltijd"])) {
                $maaltijdTests = [];
                $maaltijdTests2 = [];
                for ($i = 0; $i < count($post["maaltijd"]); $i++)
                {
                    
                    $maaltijdTests[] = Maaltijd::create(['id' => DB::table('maaltijds')->max('id') + 1,
                        'reservering' => $h,
                        'maaltijd_type' => $post["maaltijd"][$i],
                        'dag' => $post['dag'][$i],
                        'maaltijdcode' => $post["maaltijd"][$i] . $j . $h . DB::table('maaltijds')->max('id')
                    ]);
                
                     $maaltijdTests2[] = [
                    'id' => DB::table('maaltijds')->max('id') + 1,
                    'maaltijd_type' => $post["maaltijd"][$i],
                    'dag' => $post['dag'][$i],
                    'maaltijdcode' => uniqid('ma')
                     ];
                    
                    
            $maaltijdTypes = DB::table('maaltijd_types')->get();
            $ticketTypes = DB::table('ticket_types')->get();
            
            
            
            $reservation = Reservering::create([
                'user' => [
                    'naam' => $post['naam'],
                    'achternaam' => $post['achternaam'],
                    'email' => $post['email'],
                    'telnummer' => $post['telnummer'],
                    'adres' => $post['adres'],
                    'woonplaats' => $post['woonplaats'],
                    'role' => 'bezoeker'
                    ],
                'betaalmethode' => $post['betaalmethode'],
                'totale_prijs' => $post['totaalReservering'],
                    'ticket' => $ticketTests2,
                    'maaltijden' =>$maaltijdTests2
            ]);
            
            
            
            $pdf = PDF::loadView('pdf.customer',[
                'reserveringtest' => $reservation,
                'user' => $usertest,
                'tickettest' => $ticketTests2,
                'maaltijdtest' => $maaltijdTests2,
                'ticketTypes' => $ticketTypes,
                'maaltijdTypes' => $maaltijdTypes,
                ]);
            
            
            
   /*         $pdf = PDF::loadView('pdf.customer',[
                'reserveringtest' => $reserveringtest,
                'user' => $usertest,
                'tickettest' => $ticketTests,
                'maaltijdtest' => $maaltijdTests,
                'ticketTypes' => $ticketTypes,
                'maaltijdTypes' => $maaltijdTypes,
                ]);*/
            
            foreach ($ticketTests2 as $test){
                
                QrCode::format('png')->size(250)->generate('ticketcode: ' . $test['ticketcode'],public_path(). '/src/tickets/'.$test['id'].'.jpg');
            }
            
            foreach ($maaltijdTests2 as $maaltijd)
            {
                QrCode::format('png')->size(250)->generate('maaltijdcode: ' .$maaltijd['maaltijdcode'],public_path(). '/src/maaltijden/'.$maaltijd['id'].'.jpg');
            }
            
                }
                
                
            Event::fire(new MessageTicket($reserveringtest,$usertest,$pdf));    
            }
            
            // maaltijd not set
            else {
                
            $ticketTypes = DB::table('ticket_types')->get();
            
            $pdf = PDF::loadView('pdf.customer',[
                'reserveringtest' => $reserveringtest,
                'user' => $usertest,
                'tickettest' => $ticketTests,
                'ticketTypes' => $ticketTypes,
                ]);
            
            foreach ($ticketTests as $test){
                
                QrCode::format('png')->size(250)->generate('ticketcode: ' .$test['ticketcode'],public_path(). '/src/tickets/'.$test['id'].'.jpg');
            }
            
            
            Event::fire(new MessageTicket($reserveringtest,$usertest,$pdf));
                    
            }
    
        //extra opdracht
         foreach($ticketTests as $testing)
         {
             
         if ($testing->ticket_type == 2){
             
             $user = $usertest;
             $zaterdagticketid = DB::table('ticket_types')->where('ticket_naam' , 'zaterdag')->value('id');
             
             
            $magkopen = 0;
        
            foreach($post['ticket'] as $zaterdagticket => $zaterdagticketid )
            {
                 $magkopen++;
            }
            
        
            // max reservering
            // 
            // count ticket type where 2 
        //$tester1 = DB::table('tickets')->where('ticket_type', '2')->count();
        
        $tester1 = DB::table('tickets')->where([['reservering', '=' , $h] , ['ticket_type', '=' ,'2']])->count();
        
        
        $bijeenkomstarray = array(
                        'reserveringscode' => DB::table('bijeenkomsts')->max('id') + 1 . $h . $j ,
                        'aantal' => $tester1,
            );     
            
        $insertBijeenkomst = DB::table('bijeenkomsts')->insert($bijeenkomstarray);       
        
            
             
             
         Mail::send('emails.send_uitnodiging_mail', ['user' => $user, 'magkopen' => $tester1, 'bijeenkomsts' => $bijeenkomstarray['reserveringscode'] ], function($m) use ($user){
           $m->from('info@ict-open.nl',' Conferentie ICT-OPEN');
           $m->to($user['email'],$user['naam']);
           $m->subject('Uitnodiging');
       });
         }
         break;
    
         }
            return redirect()->route('reservering.compleet')->with(['success' => 'U heeft succesvol Gereserveerd!']);
    
    }
    
}
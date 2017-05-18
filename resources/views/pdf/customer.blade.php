<table>
    <tr>
        <td><b>Reservering Tickets/Maaltijden<b></td><br>
        <td>Lunch tijden: 12:00 - 13:30</td><br>
        <td>Diner tijden: 17:30 - 20:00</td><br>
        </tr>
</table>    

<table>
    <tr>
        <td><b>Conferentie dagen/tijden<b></td><br>
        <td>Vrijdag tijden: 15:30 - 22:30</td><br>
        <td>Zaterdag tijden: 10:15 - 21:30</td><br>
        <td>Zondag tijden: 12:15 - 13:15</td><br>
        </tr>
</table>   

<table>
    <tr>
        <td><b>Bedankt voor de reservering !<b></td><br>
        </tr>
</table>   

        @foreach($tickettest as $test)
            <ul style="list-style-type: none">
              <hr>
                 <li>Ticket:</li>
                 <li>{{ $test['dag'] }}</li>
                 <li><img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(250)->generate($test['ticketcode'])) !!} "></li>
                  <hr>
            </ul>     
        @endforeach
          
        @if(isset($maaltijdtest) )       
            @foreach($maaltijdtest as $maaltijd)
                <ul style="list-style-type: none">
                    <hr>
                    <li>Maaltijd:</li>
                    <li>{{ $maaltijd['dag'] }}
        
                    <li><img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(250)->generate($maaltijd['maaltijdcode'])) !!} "></li>
                    <hr>
                </ul>
            @endforeach
        @endif
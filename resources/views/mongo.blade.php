@extends('layouts.master')
@section('content')

@foreach($users as $user)

<br>
<div class="search-table">
<table class="search-table-table">
  <tr>
    <th>naam</th>
    <th>tussenvoegsel</th> 
    <th>achternaam</th> 
    <th>Email</th>
    <th>Telefoon</th>
    <th>Adres</th>
    <th>Woonplaats</th>
    <th>Role</th>
  </tr>
  <tr>
    <td>{{ $user['user']['naam'] }}</td>
    <td>{{ $user['user']['tussenvoegsel'] }}</td>
    <td>{{ $user['user']['achternaam'] }}</td> 
    <td>{{ $user['user']['email'] }}</td>
    <td>{{ $user['user']['telnummer'] }}</td>
    <td>{{ $user['user']['adres'] }}</td>
    <td>{{ $user['user']['woonplaats'] }}</td>
    <td>{{ $user['user']['role'] }}</td>
  </tr>
  <tr>
    <th>betaalmethode</th>
    <th>totale prijs</th> 
  </tr>
  <tr>
    <td>{{ $user['betaalmethode'] }}</td>
    <td> &euro; {{ $user['totale_prijs'] }}</td>
 </tr>
</table>
</div>

@endforeach

@endsection
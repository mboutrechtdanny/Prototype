@extends('layouts.master')
@section('content')

@foreach($users as $u)
    {{ $u['name'] }}
    {{ $u['tussenvoegsel'] }}
    {{ $u['achternaam'] }}
@endforeach

@endsection
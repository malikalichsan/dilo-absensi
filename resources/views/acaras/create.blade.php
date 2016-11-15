@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="{{ url('/sistem') }}">Dashboard</a></li>
                    <li><a href="{{ url('/sistem/acaras') }}">Acara</a></li>
                    <li class="active">Tambah Acara</li>
                </ul>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Tambah Acara</h3>
                    </div>
                    <div class="panel-body">
                        {!! Form::open(['url' => route('sistem.acaras.store'), 'method' => 'post', 'files'=>'true', 'class'=>'form-horizontal']) !!}
                        @include('acaras._form')
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="{{ url('/sistem') }}">Dashboard</a></li>
                    <li class="active">Acara</li>
                </ul>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Acara</h3>
                    </div>
                    <div class="panel-body">
                        <p><a class="btn btn-primary" href="{{ route('sistem.acaras.create') }}">Tambah</a></p>
                        {!! $html->table(['class'=>'table-stiped']) !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
  {!! $html->scripts() !!}
@endsection

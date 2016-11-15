<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Dilo Absensi</title>
        <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css">
        <link href="{{ asset('css/jquery.dataTables.css') }}" rel="stylesheet">
        <link href="{{ asset('css/dataTables.bootstrap.css') }}" rel="stylesheet">
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar-collapse-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="{{ url('/') }}">Dilo Absensi</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-navbar-collapse-2">
                    <ul class="nav navbar-nav">
                        <li><a href="{{ route('sistem') }}">Dashboard</a></li>
                        <li><a href="{{ route('sistem.members') }}">Member</a></li>
                        <li><a href="{{ route('sistem.acaras.index') }}">Acara</a></li>
                        <li><a href="#">Daftar Hadir</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        @include('layouts._flash')
        @yield('content')

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('js/dataTables.bootstrap.min.js') }}"></script>
        <script src="{{ asset('js/app.js') }}"></script>
        @yield('scripts')
    </body>
</html>

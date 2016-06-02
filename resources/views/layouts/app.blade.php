<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Animaster Online v3</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" integrity="sha384-XdYbMnZ/QjLh6iI4ogqCTaIjrFk87ip+ekIjefZch0Y+PvJ8CDYtEs1ipDmPorQ+" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700">

    <!-- Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    {{-- <link href="{{ elixir('css/app.css') }}" rel="stylesheet"> --}}
    {!! Html::style('assets/_css/theme.css') !!}
    {!! Html::style('assets/waves/waves.css') !!}
    {!! Html::style('assets/font-awesome/css/font-awesome.min.css') !!}
    {!! Html::style('assets/material-design-iconic-font/css/material-design-iconic-font.min.css') !!}
    <style>
        body {
            font-family: 'Lato';
        }

        .fa-btn {
            margin-right: 6px;
        }
    </style>
</head>
<body class="customcontentbody">
    <!-- Web Loader -->
    <div class="page-loader bgm-white">
        <div class="preloader pls-blue">
            <svg class="pl-circular " viewBox="25 25 50 50">
                <circle class="plc-path" cx="50" cy="50" r="20"></circle>
            </svg>
            <p>Please wait...</p>
        </div>
    </div>
    
    <!-- Web Menu -->
    <header id="header" class="clearfix bgm-brown" >
    <ul class="header-inner">
        <li id="menu-trigger" class="visible-xs">
            <div class="line-wrap">
                <div class="line top"></div>
                <div class="line center"></div>
                <div class="line bottom"></div>
            </div>
        </li>
        <li class="logo hidden-xs">
            <a href="{{ url('/') }}"><i class="zmdi zmdi-shield-security shadowicon"></i> AniMaster Online</a>
        </li>
        <li class="pull-right">
            <ul class="top-menu">
                <li id="top-search">
                    <a href="#"><i class="tm-icon zmdi zmdi-search"></i></a>
                </li>
                <li class="dropdown">
                    <a data-toggle="dropdown" href="#">
                        <i class="tm-icon zmdi zmdi-accounts-add"></i>
                        <i class="tmn-counts">1</i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg pull-right">
                        <div class="listview">
                            <div class="lv-header">
                                Notifications
                                <ul class="actions">
                                    <li class="dropdown">
                                        <a href="#">
                                            <i class="zmdi zmdi-close"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="lv-body">
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            {{ HTML::image('images/game/1.jpg', "Imagen no encontrada", array('class' => 'lv-img-sm', 'title' => '')) }}
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">test</div>
                                            <small class="lv-small">description test</small>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="dropdown">
                    <a data-toggle="dropdown" href="#"><i class="tm-icon zmdi zmdi-more-vert"></i></a>
                    <ul class="dropdown-menu dm-icon pull-right">
                        <li><a href="{{ url('/admin') }}"><i class="zmdi zmdi-lock-open"></i>Admin Panel</a></li>
                        <li><a href="{{ url('/settings') }}"><i class="zmdi zmdi-settings"></i> Configuración</a></li>
                        <li><a href="{{ url('/logout') }}"><i class="zmdi zmdi-time-restore"></i> Logout</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Actions</li>
                        <li class="hidden-xs"><a data-action="fullscreen" href="#" ><i class="zmdi zmdi-fullscreen"></i> Toggle Fullscreen</a></li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
    <!-- Top Search Content -->
    <div class="clearfix">
    </div>
    <!-- Top Menu Content -->
    <nav class="ha-menu">
        <ul>
            <li class="waves-effect"><a href="{{ url('/home') }}" class="btn">Inicio</a></li>
            <li class="waves-effect"><a href="{{ url('/home') }}">Partidas de Rol</a></li>
            <li class="waves-effect"><a href="{{ url('/home') }}">Zona Roleo</a></li>
            <li class="waves-effect"><a href="{{ url('/home') }}">Mi Mesa</a></li>
            @if (Auth::guest())
                <li class="waves-effect pull-right idplr"><a href="{{ url('/login') }}">Login</a></li>
                <li class="waves-effect pull-right idplr"><a href="{{ url('/register') }}">Registrate </a></li>
            @else
                <li class="waves-effect pull-right idplr"><a href="{{ url('/user') }}">Hola, {{ Auth::user()->name }}!</a></li>
            @endif
        </ul>
    </nav>
    <!-- Top Search Content -->
    <div id="top-search-wrap">
        <div class="tsw-inner">
            <input id="urlpos" type="hidden">
            <i id="top-search-close" class="zmdi zmdi-arrow-left"></i>
            <input type="text" id="top-search-input">
        </div>
    </div>
</header>
    <!-- Web Content -->
    @yield('content')

    <!-- JavaScripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.3/jquery.min.js" integrity="sha384-I6F5OKECLVtK/BL+8iSLDEHowSAfUo76ZL9+kGAgTRdiByINKJaqTPH/QVNS1VDb" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    {{-- <script src="{{ elixir('js/app.js') }}"></script> --}}
    {!! Html::script('assets/waves/waves.js') !!}
    {!! Html::script('assets/_js/template.js') !!}
</body>
</html>

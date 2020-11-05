<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'H Gives') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <!-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> -->
    <link rel="stylesheet" type="text/css" href="{{url('v1/styles/bootstrap4/bootstrap.min.css')}}">
    <link href="{{url('v1/plugins/font-awesome-4.7.0/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{url('v1/plugins/colorbox/colorbox.css')}}" rel="stylesheet" type="text/css">
    <!--
    <link rel="stylesheet" type="text/css" href="v1/styles/main_styles.css">
  -->
    <link rel="stylesheet" type="text/css" href="{{url('v1/styles/responsive.css')}}">
    @yield('css')
    @livewireStyles

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-59924550-6"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-59924550-6');
</script>

</head>
<body>
    <div id="app">

<?php
      //  @include('mimosan.subviews.header')
      //  @include('mimosan.subviews.menu')
?>
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                        <!-- GMC Should not be any guest access
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                          -->
                        @else
                        <li class="nav-item">
                          {{ Auth::user()->name }}

                          <a class="nav-link" href="{{ url('/home') }}">{{ __('Home') }}</a>
                          <a class="nav-link" href="{{ url('/account') }}">{{ __('Account') }}</a>
                          <a class="nav-link" href="{{ url('/logout') }}">{{ __('Logout') }}</a>
                        </li>

                            <!-- GMC Delete this if login is working
                               <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                          -->
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
    <hr width=20%>
    <center>
      <a href="/about"><i class="fa fa-angle-double-right" aria-hidden="true"></i> About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="/contact"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Contact</a>&nbsp;&nbsp;|&nbsp;&nbsp;
      <!-- <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Donation</a></li> -->
      <a href="/blog"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Blog</a>
    </center>
    @yield('scripts')
</body>
</html>

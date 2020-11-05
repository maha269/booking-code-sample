<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <title>{{ config('app.name', 'H Gives') }}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Harvard  project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="{{url('/v1/styles/bootstrap4/bootstrap.min.css')}}">
    <link href="{{url('/v1/plugins/font-awesome-4.7.0/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="{{url('/v1/plugins/OwlCarousel2-2.2.1/owl.carousel.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('/v1/plugins/OwlCarousel2-2.2.1/owl.theme.default.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('/v1/plugins/OwlCarousel2-2.2.1/animate.css')}}">
    <link href="{{url('/v1/plugins/colorbox/colorbox.css')}}" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="{{url('/v1/styles/main_styles.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('/v1/styles/responsive.css')}}">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{url('v1/plugins/colorbox/colorbox.css')}}" rel="stylesheet" type="text/css">

</head>
<body>

<div class="super_container">

	@include('mimosan.subviews.header')

	@include('mimosan.subviews.menu')

  <main class="py-4">
      @yield('content')
  </main>

	@include('mimosan.subviews.footer')

</div>

<script src="{{url('/v1/js/jquery-3.2.1.min.js')}}"></script>
<script src="{{url('/v1/styles/bootstrap4/popper.js')}}"></script>
<script src="{{url('/v1/styles/bootstrap4/bootstrap.min.js')}}"></script>
<script src="{{url('/v1/plugins/OwlCarousel2-2.2.1/owl.carousel.js')}}"></script>
<script src="{{url('/v1/plugins/easing/easing.js')}}"></script>
<script src="{{url('/v1/plugins/parallax-js-master/parallax.min.js')}}"></script>
<script src="{{url('/v1/plugins/colorbox/jquery.colorbox-min.js')}}"></script>
<script src="{{url('/v1/js/custom.js')}}"></script>


</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>@yield('title')</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Harvard  project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
{{--    <link rel="stylesheet" type="text/css" href="{{url('v1/styles/bootstrap4/bootstrap.min.css')}}">--}}
    <link rel="stylesheet" type="text/css" href="{{asset('v1/styles/bootstrap4/bootstrap.min.css')}}">
    <link href="{{asset('v1/plugins/font-awesome-4.7.0/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="{{asset('v1/plugins/OwlCarousel2-2.2.1/owl.carousel.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('v1/plugins/OwlCarousel2-2.2.1/owl.theme.default.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('v1/plugins/OwlCarousel2-2.2.1/animate.css')}}">
    <link href="{{asset('v1/plugins/colorbox/colorbox.css')}}" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="{{asset('v1/styles/main_styles.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('v1/styles/responsive.css')}}">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-59924550-6"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-59924550-6');
    </script>
    @yield('css')
</head>
<body>

<div class="super_container">

@include('mimosan.subviews.header')

@include('mimosan.subviews.menu')
    <br><br><br>
@yield('content')
@include('mimosan.subviews.footer')
</div>

<script src="{{asset('v1/js/jquery-3.2.1.min.js')}}"></script>
<script src="{{asset('v1/styles/bootstrap4/popper.js')}}"></script>
<script src="{{asset('v1/styles/bootstrap4/bootstrap.min.js')}}"></script>
<script src="{{asset('v1/plugins/OwlCarousel2-2.2.1/owl.carousel.js')}}"></script>
<script src="{{asset('v1/plugins/easing/easing.js')}}"></script>
<script src="{{asset('v1/plugins/parallax-js-master/parallax.min.js')}}"></script>
<script src="{{asset('v1/plugins/colorbox/jquery.colorbox-min.js')}}"></script>
<script src="{{asset('v1/js/custom.js')}}"></script>
@yield('scripts')
</body>
</html>


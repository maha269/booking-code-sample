<body>
<header class="header">
    <div class="minheeader">
        <div class="container">
            <div class="dropdown language"><span class="dropdown-toggle" data-toggle="dropdown">{{trans('Language',[],'en')}} <i class="fas fa-chevron-down"></i></span>
                <div class="dropdown-menu">
                    @if('en'=='ar')
                        <a class="dropdown-item" href="{{url('en/website',$data['user']['details']['link_name'])}}"> <img src="{{asset('template/template_1/')}}/images/use.jpg" alt="" title=""> English</a>

                    @else
                        <a class="dropdown-item" href="{{url('ar/website',$data['user']['details']['link_name'])}}"> <img src="{{asset('template/template_1/')}}/images/ar.jpg" alt="" title=""> Arabic</a>


                    @endif
                </div>
            </div>
            <nav class="linkstop">
                @auth()
                <a href="{{route('notifications')}}">   {{trans('Notifications',[],'en')}}  <i class="fas fa-bell"></i> </a>
                    <a href="{{route('profile')}}">  {{trans('My Profile',[],'en')}}  </a>

                @endauth()
                @guest()
                <a href="{{route('template.index', $data['user']['details']['link_name'])}}/login">  {{trans('Login',[],'en')}}  </a>
                <a class="register" href="{{route('template.index', $data['user']['details']['link_name'])}}/register">  {{trans('register',[],'en')}}</a>
                @endguest()
            </nav>
        </div>
    </div>
    <div class="container content">
        <div class="logo"><a href="{{route('template.index', $data['user']['details']['link_name'])}}   " title="">
                <img src="{{$data['user']['details']['logo'] ? asset($data['user']['details']['logo']) : asset('site/images/medical-Logo.png')}}" alt="Samir Abdelghaffar" title="Samir Abdelghaffar"></a></div>
        <div id="cssmenu">
            <ul>

                <li><a href="{{route('template.index', $data['user']['details']['link_name'])}}/">{{trans("Home",[],'en')}}</a></li>

                <li><a href="{{route('template.index', $data['user']['details']['link_name'])}}/about">{{trans("Curriculum Vitae",[],'en')}}</a></li>

                <li><a href="{{route('template.index', $data['user']['details']['link_name'])}}/services">{{trans('Services',[],'en')}}</a></li>
                <li><a href="{{route('template.index', $data['user']['details']['link_name'])}}/videos">{{trans('Video Library',[],'en')}} </a></li>
                <li><a href="{{route('template.index', $data['user']['details']['link_name'])}}/blog">{{trans("Articles",[],'en')}}</a></li>
                <li><a href="{{route('template.index', $data['user']['details']['link_name'])}}/contact">{{trans("Contact Us",[],'en')}}</a></li>

            </ul>
        </div>
        <nav class="bot"><a class="bottom" href="{{route('template.booking', $data['user']['details']['link_name'])}}">{{trans("BookConsultation",[],'en')}}</a>
            <a class="bottom" href="{{route('template.index', $data['user']['details']['link_name'])}}/contact">{{trans("Call",[],'en')}}</a></nav>
    </div>
</header>
<nav class="bot rspon"><a class="bottom" href="{{route('template.booking', $data['user']['details']['link_name'])}}">{{trans("BookConsultation",[],'en')}}</a>
    <a class="bottom" href="{{route('template.index', $data['user']['details']['link_name'])}}/contact">{{trans("Call",[],'en')}}</a></nav><!--End Header-->

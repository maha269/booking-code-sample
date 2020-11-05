<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3 boxfot">
                <h6 class="title"> {{trans("mainMenu",[],'en')}}</h6>
                <nav class="navmenu">
                    <a href="{{route('template.index', $data['user']['details']['link_name'])}}/">{{trans("Home",[],'en')}}</a>
                    <a href="{{route('template.index', $data['user']['details']['link_name'])}}/about">{{trans("Curriculum Vitae",[],'en')}}</a>
                    <a href="{{route('template.index', $data['user']['details']['link_name'])}}/services">{{trans('Services',[],'en')}}</a>
                    <a href="{{route('template.index', $data['user']['details']['link_name'])}}/videos">{{trans('Video Library',[],'en')}} </a>
                    <a href="{{route('template.index', $data['user']['details']['link_name'])}}/blog">{{trans("Articles",[],'en')}}</a>
                    <a href="{{route('template.index', $data['user']['details']['link_name'])}}/contact">{{trans("Contact Us",[],'en')}}</a>

                </nav>
            </div>
            <div class="col-md-3 boxfot">
                <h6 class="title"> {{trans("LATEST VIDEOS",[],'en')}}</h6>
                <nav class="navmenu">
                    @foreach($data['user']['videos']->take(6) as $video)
                    <a href="{{route('template.video.view', [$data['user']['details']['link_name'], $video->id])}}">{{ trim(substr(strip_tags($video->title), 0, 30)). '...'}} </a>
                 @endforeach

                </nav>
            </div>
            <div class="col-md-3 boxfot">
                <h6 class="title">{{trans("Latest medical articles",[],'en')}}</h6>
                <nav class="navmenu">

                    @foreach($data['user']->blogs()->orderBy('id', 'desc')->limit(6)->get() as $blogs)
                        <a href="{{route('template.blog.view', [$data['user']['details']['link_name'], $blogs->id])}}">{{ trim(substr(strip_tags($blogs->title), 0, 30)). '...'}} </a>
                    @endforeach
                </nav>
            </div>
            <div class="col-md-3 boxfot">
                <h6 class="title"> {{trans("Contact Us",[],'en')}}</h6>
                <div class="textcontact">
                    <p><i class="fas fa-map-marker-alt">

                        </i>{{$data['user']['address']}}</p>
                    <a href="#"><i class="fas fa-envelope">

                        </i> {{$data['user']['email2']}}</a>
                    <a href="#"> <i class="fas fa-phone"></i> {{$data['user']['phone_number']}}  </a>
                </div>
            </div>
        </div>
        <div class="detals">
            <p class="text">© Copyright 2020 Dr Variable. All Rights Reserved.  </p>
            <nav class="social">
                <a class="fab fa-facebook-f icon-facebook" href="{{$data['user']['details']['facebook']}}" target="_blank" title="Facebook"></a>
                <a class="fab fa-twitter icon-twitter" href="{{$data['user']['details']['twitter']}}" target="_blank" title="Twitter"></a>
                <a class="fab fa-instagram icon-instagram" href="{{$data['user']['details']['instagram']}}" target="_blank" title="Instagram"></a>
                <a class="fab fa-youtube icon-youtube" href="{{$data['user']['details']['youtube']}}" target="_blank" title="YouTube">  </a>
            </nav>
        </div>
    </div>
    <div class="copyright">
        <p class="textcopyright">Created with love by <a href="#">yahoo.com</a> </p>
    </div><a class="scrollToTop bottom" href="#"><i class="fas fa-arrow-up"></i>           </a>
</footer><!--End Footer-->
</body>
</html>

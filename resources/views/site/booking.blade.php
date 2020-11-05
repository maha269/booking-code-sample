@extends('site.layout')

@section('title', $data['user']['name'] . ' | ' . trans('Book now with the doctor'))




@section('content')

    <link rel="stylesheet" href="{{asset('template/template_1/')}}/css/booking.css">
    <link rel="stylesheet" href="{{asset('template/template_1/')}}/plugins/fullcalendar/fullcalendar.min.css">
    <section class="step-sign " data_type="{{$data['user']['id']}}">
        <div class="container">
            <form id="contact" action="#" doctor="{{$data['user']['id']}}">
                <div>
                    <h3><i class="fas fa-check"></i>  1 |  {{trans('Services',[],'en')}}</h3>
                    <section>


                            <div class="row">
                            <div class="col-sm-4 item-stab">
{{--                                {{dd($data)}}--}}
                                <div  id="inner" data_type="0" data-name="VideoConsultation" class="inner "
                                      data_price="{{$data['user']['details']['clinic_price']}} $">
                                    <img src="{{asset('template/template_1/')}}/images/Icons1.png" alt="" title="">
                                    <h4 class="title">{{trans('VideoConsultation',[],'en')}}</h4>
                                    <p class="text">{{$data['user']['details']['clinic_price']}}  $</p>

                                </div>
                            </div>
                            <div class="col-sm-4 item-stab">
                                <div id="inner" data_type="1" data-name="{{trans('Home Consultation',[],'en')}}" data_price="{{$data['user']['details']['home_price']}} $" class="inner"><img src="{{asset('template/template_1/')}}/images/Icons4.png" alt="" title="">
                                    <h4 class="title">{{trans('Home Consultation',[],'en')}}</h4>
                                    <p class="text">{{$data['user']['details']['home_price']}} $</p>

                                </div>
                            </div>
                            <div class="col-sm-4 item-stab">
                                <div id="inner" class="inner" data_type="2" data-name="{{trans('Clinic Consultation',[],'en')}}" data_price="{{$data['user']['details']['clinic_price']}} $"><img src="{{asset('template/template_1/')}}/images/Icons2.png" alt="" title="">
                                    <h4 class="title">{{trans('Clinic Consultation',[],'en')}}</h4>
                                    <p class="text">{{$data['user']['details']['clinic_price']}} $</p>

                                </div>
                            </div>

                        </div>
                        <div class="row">

                            <div class="col-sm-4 item-stab">
                            <div id="inner" class="inner" data_type="3" data-name="Urgent medical advice home service" data_price="{{$data['user']['details']['clinic_price']}} $"><img src="{{asset('template/template_1/')}}/images/Icons.png" alt="" title="">
                            <h4 class="title">Urgent medical advice at home</h4>
                                <p class="text">{{$data['user']['details']['Urgentmedicaladvice_home']}} $</p>

                            </div>
                            </div>
                            <div  class="col-sm-4 item-stab">
                            <div  id="inner"  data_type="4" data-name="Urgent medical advice video" data_price="{{$data['user']['details']['clinic_price']}} $" class="inner"><img src="{{asset('template/template_1/')}}/images/Icons.png" alt="" title="">
                            <h4 class="title">Urgent medical advice via video</h4>
                                <p class="text">{{$data['user']['details']['Urgentmedicaladvice_video']}} $</p>

                            </div>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center" style="display: none" >
                            <div class="alert alert-danger col-sm-8" id="serviceerror" style="text-align: center;font-size: x-large;display: none;"  role="alert">
                                {{trans('Pleaseselectservice',[],'en')}}
                            </div>
                        </div>

                    </section>
                    <h3><i class="fas fa-check"></i>  2 |  {{trans('Date',[],'en')}}</h3>
                    <section >
                        <div id="time_data">

                        </div>

                    </section>
                    <h3><i class="fas fa-check"></i>  3 | {{trans('Information',[],'en')}}</h3>
                    <section>


                        <div class="col-sm-12 itemform">
                            <div class="row">
                                <div class="col-sm-6 fild">
                                    <input class="form-control" type="text" placeholder="{{trans('Name',[],'en')}}"

                                           @auth
                                                   value="{{auth()->user()->name}}"
                                                   @endauth
                                           id="name" name="name" autocomplete="off" autofocus required>
                                    <label class="floating-label">{{trans('Name',[],'en')}}</label>
                                </div>
                                <div class="col-sm-6 fild">
                                    <input class="form-control" type="email"
                                           @auth
                                           value="{{auth()->user()->email}}"
                                           @endauth

                                           placeholder="{{trans('Email',[],'en')}}" id="email" name="Email" autocomplete="off" autofocus required>
                                    <label class="floating-label">{{trans('Email',[],'en')}}</label>
                                </div>


                                <div class="col-sm-12 fild">
                                    <input class="form-control mobile-number"  id="phone" type="text"
                                           @auth
                                           value="{{auth()->user()->phone_number}}"
                                           @endauth
                                           placeholder="{{trans('Phone',[],'en')}}" name="Phonenumber" autocomplete="off" autofocus required>
                                </div>
                            </div>
                        </div>
                    </section>
                    <h3><i class="fas fa-check"></i>  4 | {{trans('Confirmation',[],'en')}}</h3>
                    <section >

                        <div class="row">
                            <div class="col-sm-6 item-tab">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title" id="data-time">{{trans('Date')}}/{{trans('time')}} - <span id="timeanddate"></span></h4>
                                        <h4 class="card-title" id="price_appear" > </h4>
                                        <h4 class="card-title" id="discount" >{{trans('discount')}} ...... <span id="discount_value">0</span> </h4>
                                        <div class="booknetic_add_coupon" style="position: initial;display: flex;justify-content: space-between;align-items: center;padding: 8px;border: 1px solid #E3EAF3;-webkit-border-radius: 2px;-moz-border-radius: 2px;border-radius: 2px;">
                                            <input type="text" id="booknetic_coupon" placeholder="{{trans('addcoupon')}}">
                                            <button type="button" id="booknetic_coupon_ok_btn" style="height: 36px;
font-weight: 600;
font-size: 12px !important;
line-height: 18px;
padding: 5px 15px !important;
outline: none !important;
cursor: pointer;
-webkit-border-radius: 2px;
-moz-border-radius: 2px;
border-radius: 2px;
background-color: #4FBF65 !important;
color: #FFF !important;
border: 0 !important;" class="booknetic_btn_success">{{trans('ok')}}</button>
                                        </div>

                                        {{--<h4 class="card-title" id="discount" >{{trans('total')}} ...... <span id="total" ></span> </h4>--}}


                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 item-tab">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="paymentWrap">
                                                <div class="btn-group paymentBtnGroup btn-group-justified" data-toggle="buttons">
                                                    <label class="btn paymentMethod active">
                                                        <div class="method visa"></div>
                                                        <input type="radio" name="options" checked>
                                                    </label>
                                                    <label class="btn paymentMethod">
                                                        <div class="method master-card"></div>
                                                        <input type="radio" name="options">
                                                    </label>
                                                    <label class="btn paymentMethod">
                                                        <div class="method amex"></div>
                                                        <input type="radio" name="options">
                                                    </label>


                                                </div>
                                            </div>
                                        </div>
                                    </div>

                            </div>

                        </div>
                        <div class="d-flex justify-content-center" style="display: none" >
                            <div class="alert alert-danger col-sm-8" id="couponerror" style="text-align: center;font-size: x-large;display: none;"  role="alert">
                                {{trans('coupon_notfound',[],'en')}}
                            </div>
                        </div>
                    </section>

                </div>
            </form>
        </div>
    </section>
    <script>
        var url = "{{route('get_time_data')}}";
        var complete = "{{route('complete_appointment')}}";
        var coupon = "{{route('couponcode')}}";
        var token = {{ csrf_token() }};
    </script>
    <script src="{{asset('template/template_1/')}}/js/staps.js"></script>

@endsection

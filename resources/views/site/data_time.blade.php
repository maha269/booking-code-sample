<link rel="stylesheet" href="{{asset('template/template_1/')}}/plugins/datapicker/datepicker.css">
<script src="{{asset('template/template_1/')}}/plugins/datapicker/datepicker.js"></script>
<div class="row">
    <br>
    <div class="col-sm-4 item-tab">

        <div class="docs-datepicker-container col-md-4"></div>

    </div>

    <div class="col-sm-8 itemform">
        <br>  <div class="row">

            <!-- Schedule Widget -->
            <div class="card booking-schedule schedule-widget w-100">

                <!-- Schedule Header -->
                <div class="schedule-header">
                    <div class="row">

                        <div class="col-md-12">

                            <!-- Day Slot -->
                            <div class="day-slot  w-100">
                                <ul>
                                   @foreach($dates['date'] as $item)
                                    <li>
                                        <span data-action="{{$item}}" class="slot-date">{{\Carbon\Carbon::parse($item)->format('d-m')}} <small class="slot-year">{{\Carbon\Carbon::parse($item)->format('Y')}}</small></span>
                                    </li>
                                       @endforeach


                                </ul>
                            </div>
                            <!-- /Day Slot -->

                        </div>
                    </div>
                </div>
                <!-- /Schedule Header -->

                <!-- Schedule Content -->
                <div class="schedule-cont ">
                    <div class="row">
                        <div class="col-md-12" id="time_slot">
                        @foreach($dates['time'] as $key_time=>$time)

                            @if($loop->index == 0)
                            <!-- Time Slot -->
                            <div class="time-slot" data_date="{{$key_time}}">
                                <ul class="clearfix">


{{--                                    @foreach($time as $items)--}}

{{--                                    <li >--}}
{{--                                        <a class="timing" href="#">--}}
{{--                                            <span date="{{$key_time}}" time="{{$items}}">{{$items}}</span>--}}
{{--                                        </a>--}}

{{--                                    </li>--}}
{{--                                        @endforeach--}}

                                </ul>
                            </div>
                            <!-- /Time Slot -->
                            @else
                                    <div class="time-slot" style="display:none;" data_date="{{$key_time}}">
                                        <ul class="clearfix">


{{--                                            @foreach($time as $items)--}}

{{--                                                <li >--}}
{{--                                                    <a class="timing" href="#">--}}
{{--                                                        <span>{{$items}}</span>--}}
{{--                                                    </a>--}}

{{--                                                </li>--}}
{{--                                            @endforeach--}}

                                        </ul>
                                    </div>
                                    <!-- /Time Slot -->
                                @endif
                            @endforeach
                        </div>
                    </div>
                </div>
                <!-- /Schedule Content -->


            </div>
        </div>
    </div>
</div>
<script>
    function formatDate(date) {
        var d = new Date(date),
            month = '' + (d.getMonth() + 1),
            day = '' + d.getDate(),
            year = d.getFullYear();

        if (month.length < 2)
            month = '0' + month;
        if (day.length < 2)
            day = '0' + day;

        return [year, month, day].join('-');
    }
    var days = [ @foreach($days as $items),{{$items}} @endforeach ];
    $('.docs-datepicker-container').datepicker({
        inline: true,
        altField: '.docs-datepicker-container',
        startDate: '-0m',
        format: 'mm/dd/yyyy',
        filter: function(date) {
            if ( jQuery.inArray(date.getDay(), days) !== -1) {
                return false; // Disable all Sundays, but still leave months/years, whose first day is a Sunday, enabled.
            }
        },

        language: 'en-US',

    }).on('pick.datepicker', function (e) {

      Ajax_data(2,formatDate(e.date))
    });
</script>

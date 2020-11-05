
@foreach($dates['time'] as $key_time=>$time)

        <!-- Time Slot -->
        <div class="time-slot"  style="display: block">
            <ul class="clearfix">


                @foreach($time as $items)

                    <li >
                        <a class="timing" href="#">
                            <span date="{{$key_time}}" time="{{$items}}">{{$items}}</span>
                        </a>

                    </li>
                @endforeach

            </ul>
        </div>


@endforeach

var form = $("#contact");
form.validate({
    errorPlacement: function errorPlacement(error, element) { element.before(error); },
    rules: {
        confirm: {
            equalTo: "#password"
        }
    }
});






form.children("div").steps({
    headerTag: "h3",
    bodyTag: "section",
    transitionEffect: "slideLeft",
    onStepChanging: function (event, currentIndex, newIndex)
    {
       if(currentIndex == 0){

           var count = 0;
           $('div[id="inner"]').each(function(index,item){
               if($(item).hasClass('active')){
                   count++
               }
           });
           if (count == 1){
               Ajax_data(newIndex,null);
               return true;
           }else {
               if($('#serviceerror').css('display') == 'none')
               {
                   $("#serviceerror").hide().slideDown().delay(5000).fadeOut();

               }

           return false;
           }
       }
        form.validate().settings.ignore = ":disabled,:hidden";
        return form.valid();
    },
    onFinishing: function (event, currentIndex)
    {
        form.validate().settings.ignore = ":disabled";
        return form.valid();
    },
    onFinished: function (event, currentIndex)
    {
        ajax_complete();
    }
});



function Ajax_data(Index,date) {
    var service_id =$('.step-sign').attr('data_type');
    var type = $('div[class="inner active"]').attr('data_type');

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        url: '/booking/post_data',
        data: {
            type: type,
            // "_token": "{{ csrf_token() }}",
            date: date,
            service_id: service_id,
        },
        error: function() {
            console.log('data',date);
            $('#info').html('<p>An error has occurred</p>');
        },
        dataType: 'html',
        success: function(data) {

            if (Index == 1){

                $('#time_data').html(data)
            }else if (Index == 2){
                $(".time-slot").each(function() {
                    $(this).css('display','none');
                });
                $('#time_slot').append(data);
            }
        },
        type: 'Post'
    });
}

function ajax_complete() {
    var service_id =$('.step-sign').attr('data_type');
    var type = $('div[class="inner active"]').attr('data_type');
    var time = $('a[class="timing selected"]').find('span').attr('time');
    var date = $('a[class="timing selected"]').find('span').attr('date');
    console.log(time,date);
    var name = $('#name').val();
    var email = $('#email').val();
    var phone = $('#phone').val();
    var coupon = $('#booknetic_coupon').val();
    var paymnet = 1;

    $. ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
    $.ajax({
        url: complete,
        data: {
            _token: token,
            type: type,
            date: date,
            time: time,
            name: name,
            phone: phone,
            email: email,
            coupon: coupon,
            paymnet: paymnet,
            service_id: service_id,
        },
        error: function() {
            $('#info').html('<p>An error has occurred</p>');
        },
        dataType: 'html',
        success: function(data) {
        $('.step-sign').html(data);
        },
        type: 'Post'
    });
}


$('#booknetic_coupon_ok_btn').click(function () {
    var email = $('#email').val();
    var phone = $('#phone').val();
    $. ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });

    $.ajax({
        url: coupon,
        data: {
            _token: token,
            coupon: $('#booknetic_coupon').val(),
            phone: phone,
            email: email
        },
        error: function() {
            if($('#couponerror').css('display') == 'none')
            {
                $("#couponerror").hide().slideDown().delay(5000).fadeOut();
                $('#discount_value').html(0)

            }        },
        dataType: 'html',
        success: function(data) {
            $('#discount_value').html(data)
        },
        type: 'Post'
    });
});

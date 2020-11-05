$(document).ready(function() {

    $(window).scroll(function() {
        if ($(this).scrollTop() > 1) {
            $('.header').addClass("sticky");
        } else {
            if ($(this).scrollTop() < 1) {
                $('.header').removeClass("sticky");
            }
        }
    });
    // End Sticky


    (function($) {
        $.fn.menumaker = function(options) {
            var cssmenu = $(this),
                settings = $.extend({
                    //title: "",
                    format: "dropdown",
                    sticky: false
                }, options);

            return this.each(function() {
                cssmenu.prepend('<div id="menu-button">' + settings.title + '</div>');
                $(this).find("#menu-button").on('click', function() {
                    $(this).toggleClass('menu-opened');
                    var mainmenu = $(this).next('ul');
                    if (mainmenu.hasClass('open')) {
                        mainmenu.slideToggle().removeClass('open');
                    } else {
                        mainmenu.slideToggle().addClass('open');
                        if (settings.format === "dropdown") {
                            mainmenu.find('ul').slideToggle();
                        }
                    }
                });

                cssmenu.find('li ul').parent().addClass('has-sub');

                multiTg = function() {
                    cssmenu.find(".has-sub").prepend('<span class="submenu-button"></span>');
                    cssmenu.find('.submenu-button').on('click', function() {
                        $(this).toggleClass('submenu-opened');
                        if ($(this).siblings('ul').hasClass('open')) {
                            $(this).siblings('ul').removeClass('open').slideToggle();
                        } else {
                            $(this).siblings('ul').addClass('open').slideToggle();
                        }
                    });
                };

                if (settings.format === 'multitoggle') multiTg();
                else cssmenu.addClass('dropdown');

                if (settings.sticky === true) cssmenu.css('position', 'fixed');

                resizeFix = function() {
                    if ($(window).width() > 991) {
                        cssmenu.find('ul').show();
                    }

                    if ($(window).width() <= 991) {
                        cssmenu.find('ul').hide().removeClass('open');
                    }
                };
                resizeFix();
                return $(window).on('resize', resizeFix);

            });
        };
    })(jQuery);


    (function($) {
        $(document).ready(function() {

            $("#cssmenu").menumaker({
                title: "",
                format: "multitoggle"
            });

        });
    })(jQuery);


    $(document).on('click','.slot-date',function() {
        var id = $(this).attr('data-action');
        $(".time-slot").each(function() {
            $(this).css('display','none');
        });

        $('div[data_date='+id+']').css('display','block')

    });


    $(document).on('click','.timing',function() {
        $(".timing").each(function() {
            $(this).removeClass('selected');
        });
        $(this).addClass('selected');
        var date = $(this).find('span').attr('date')+"/"+$(this).find('span').attr('time');
        $('#timeanddate').html(date);
        form.children("div").steps("next");


    });
    $('#cssmenu > ul > li > a').click(function() {
        $('#cssmenu > ul > li > a').removeClass("active");
        $(this).addClass("active");
    });

    $('.profile-link a').click(function() {
        $('.profile-link a').removeClass("active");
        $(this).addClass("active");
    });

    $('.item-stab .inner').click(function() {
        $('.item-stab .inner').removeClass("active");
        $(this).addClass("active");
        var name = $(this).attr('data-name');
        var data_price = $(this).attr('data_price');
        $('#price_appear').html(name +'.....'+'('+data_price+')');
        $('#total').html('('+data_price+')');
        var type_con = $(this).attr('data_type');
        console.log(type_con);
        if (type_con == 3 ||  type_con == 4){
            for (var i = 0; i < 2; i++) {
                form.children("div").steps("next");

            }

        }else{
        form.children("div").steps("next");
        }

    });



// Date Range Picker
    if($('.bookingrange').length > 0) {
        var start = moment().subtract(6, 'days');
        var end = moment();

            function booking_range(start, end) {
            console.log('ss')
            var date_rang_send = start.format('D-m-YYYY') + ' - ' + end.format('D-m-YYYY');
            Ajax_data(1,'null',date_rang_send);
            $('.bookingrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }

        $('.bookingrange').daterangepicker({
            startDate: start,
            endDate: end,
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            }
        },function(start, end, label) {
            console.log('asdasd');
            $.ajax({
                url:"/your_url",
                method: "GET", // or POST
                dataType: "json",
                data: {from: start.format('YYYY-MM-DD'), to: end.format('YYYY-MM-DD')},
                success:function(result) {
                    console.log("sent back -> do whatever you want now");
                }
            });
        });

        booking_range(start, end);
    }



    // End Menu Nav


    $(window).scroll(function() {
        if ($(this).scrollTop() > 600) {
            $('.scrollToTop').fadeIn();
        } else {
            $('.scrollToTop').fadeOut();
        }
    });
    //Click event to scroll to top
    $('.scrollToTop').click(function() {
        $('html, body').animate({
            scrollTop: 0
        }, 800);
        return false;
    });


    // This Slider Popup
    $('.carousel').carousel();
    // This Slider Popup

    $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });

    //End Item Uplode File




    $(".mobile-number").intlTelInput({
        //autoFormat: false,
        //autoHideDialCode: false,
        //defaultCountry: "jp",
        //nationalMode: true,
        //numberType: "MOBILE",
        //onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
        //preferredCountries: ['cn', 'jp'],
        //responsiveDropdown: true,
        utilsScript: "lib/libphonenumber/build/utils.js"
    });


});

//var blank="http://upload.wikimedia.org/wikipedia/commons/c/c0/Blank.gif";
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('.img_prev')
                .attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
    } else {
        var img = input.value;
        $('.img_prev').attr('src', img);
    }
}

// End loop of file input elementsResponse
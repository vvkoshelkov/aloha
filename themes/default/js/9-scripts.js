$( document ).ready(function() {

    $('.admin-header .navbar .nav .item').on('click',function(){
        $this=$(this);
        if (!$this.hasClass('active')) {
            $('.admin-header .navbar .nav .item').removeClass('active');
            $this.addClass('active');
            $('.menu-title').children('h2').html($this.children('a').attr('data-title'));
        }
    });
    $('.dayNight').on('click',function(){
        if ($('#content').hasClass('night')) {
            $(this).text("День");
            $('#content').removeClass("night");
        } else {
            $(this).text("Ночь");
            $('#content').addClass("night");
        }
    });
    $('body').on('click','a.ajax',function(e){
        e.preventDefault();
        var $this=$(this);
        if ($this.attr('data-cache')=='true') {
            if (localStorage.getItem($this.attr('href')) === null)
                $.ajax({
                    method: "POST",
                    url: $this.attr('href'),
                    data: $this.attr('item-data'),
                }).done(function( $html ) {
                    console.log('page loaded from ajax with cache');
                    $($this.attr('data-target')).fadeOut(0).html($html).fadeIn(200);
                    localStorage.setItem($this.attr('href'), $html);
                });
            else
                console.log('page loaded from cache');
                $($this.attr('data-target')).fadeOut(0).html(localStorage.getItem($this.attr('href'))).fadeIn(200);
        } else {
            $.ajax({
                method: "POST",
                url: $this.attr('href'),
                data: $this.attr('item-data'),
            }).done(function( $html ) {
                console.log('page loaded from ajax without cache');
                $($this.attr('data-target')).fadeOut(0).html($html).fadeIn(200);
            });
        }
    });

    $('body').on('submit','form.ajax',function(e){

        e.preventDefault();

        var $this=$(this);

        $serialized=$this.serialize();
        var file = $("#img1")[0].files[0];
        var file1 = $("#img2")[0].files[0];
        var file2 = $("#img3")[0].files[0];
        var file3 = $("#img4")[0].files[0];
        var file4 = $("#img5")[0].files[0];
        var form_data = new FormData();
        form_data.append('file', file);
        form_data.append('file1', file1);
        form_data.append('file2', file2);
        form_data.append('file3', file3);
        form_data.append('file4', file4);
        form_data.append('serialized',$serialized);
        $.ajax({
            method: "POST",
            url: $this.attr('href'),
            dataType: 'text',
            cache: false,
            contentType: false,
            processData: false,
            data: form_data,
        }).done(function( $html ) {

            console.log('page loaded');

            $($this.attr('data-target')).fadeOut(0).html($html).fadeIn(200);

        });

    });
    $('body').on('submit','form.ajax2',function(e){

        e.preventDefault();

        var $this=$(this);

        $serialized=$this.serialize();
        $.ajax({
            method: "POST",
            url: $this.attr('href'),
            dataType: 'text',
            data: $serialized,
        }).done(function( $html ) {

            console.log('page loaded');

            $($this.attr('data-target')).fadeOut(0).html($html).fadeIn(200);

        });

    });
    if (window.matchMedia("(max-width: 992px)").matches) {

        jQuery('html body').swipe({

            swipe:function(event, direction, distance, duration, fingerCount, fingerData) {

                if (direction=='right') {

                    if (!$('.admin-mobile-menu').hasClass('show')) {

                        $('.admin-mobile-menu').addClass('show');

                        $('.admin-side').addClass('darked');

                    }

                }

                if (direction=='left') {

                    if ($('.admin-mobile-menu').hasClass('show')) {

                        $('.admin-mobile-menu').removeClass('show');

                        $('.admin-side').removeClass('darked');

                    }

                }

            }

        });

        $('body').on('click','.darked',function(){

            $('.admin-mobile-menu').removeClass('show');

            $('.admin-side').removeClass('darked');

        });

    }

    
    Waves.attach('.button', ['waves-button', 'waves-float']);
    Waves.init();
});
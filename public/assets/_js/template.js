(function($){
    $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip();
        
        //Fullscreen Button
        //-----------------------------------------------
        if ($('[data-action="fullscreen"]')[0]) {
            var fs = $("[data-action='fullscreen']");
            fs.on('click', function(e) {
                e.preventDefault();

                //Launch
                function launchIntoFullscreen(element) {

                    if(element.requestFullscreen) {
                        element.requestFullscreen();
                    } else if(element.mozRequestFullScreen) {
                        element.mozRequestFullScreen();
                    } else if(element.webkitRequestFullscreen) {
                        element.webkitRequestFullscreen();
                    } else if(element.msRequestFullscreen) {
                        element.msRequestFullscreen();
                    }
                }

                //Exit
                function exitFullscreen() {

                    if(document.exitFullscreen) {
                        document.exitFullscreen();
                    } else if(document.mozCancelFullScreen) {
                        document.mozCancelFullScreen();
                    } else if(document.webkitExitFullscreen) {
                        document.webkitExitFullscreen();
                    }
                }
                launchIntoFullscreen(document.documentElement);
                fs.closest('.dropdown').removeClass('open');
            });
        }
        
        //Waves Plugin
        //-----------------------------------------------
        var config = {
            // How long Waves effect duration 
            // when it's clicked (in milliseconds)
            duration: 1000,

            // Delay showing Waves effect on touch
            // and hide the effect if user scrolls
            // (0 to disable delay) (in milliseconds)
            delay: 200,
            wait: 1000, //ms
        };
        Waves.attach('.btn:not(.btn-icon):not(.btn-float)');
        Waves.attach('.btn-icon, .btn-float', ['waves-circle', 'waves-float']);
        Waves.init(config);
        
        /*
        * Top Search
        */
        (function(){
           $('body').on('click', '#top-search > a', function(e){
               e.preventDefault();

               $('#header').addClass('search-toggled');
               $('#top-search-wrap input').focus();
           });

           $('body').on('click', '#top-search-close', function(e){
                e.preventDefault();
                $('#header').removeClass('search-toggled');
                var busqueda = $('#top-search-input').val();
                //location.href="../../partida.php?busqueda="+busqueda;
           });
        })();
        console.log('Ready!');
    }); // End document ready
    
    
    
    //Load Content
    //-----------------------------------------------
    $(window).load(function() {
        $(".page-loader").fadeOut(1000);
    });
    
})(this.jQuery);



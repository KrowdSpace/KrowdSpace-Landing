<home-nav>
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top" >
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span><i class="fa fa-bars hamburger"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top"><strong>KROWDSPAC<span class="nav-brand-small">e</span></strong></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#project">Submit Project</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#benefits">Benefits</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#boost">Boosts</a>
                    </li>
                    <li>
                        <a href="#modal-login" class="modal-link" data-toggle="modal">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
<script>
this.on('mount', function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
    }),
    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 51
    }),
    $('.navbar-collapse ul li a').click(function(){ 
            $('.navbar-toggle:visible').click();
    }),
    $('#mainNav').affix({
        offset: {
            top: 10
        }
    })
});
</script>
</home-nav>
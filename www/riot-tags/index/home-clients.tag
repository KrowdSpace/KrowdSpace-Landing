<home-clients>
<img src="img/content/page-break.jpg" class="hidden-sm hidden-xs calculator">
	<aside class="clients hidden-sm hidden-xs">
		<div class="container text-center">
			<section class="client center slider">
   				<div each= { indexClients }>
      				<a href="{ imageURL }" target="_blank"><img src="{ image }" alt="{ imageAlt }"></a>
    			</div>
 			</section>
		</div>
	</aside>
<script type="text/javascript">
        this.indexClients = [
        { image:"img/clients/digital-ocean-logo.png", imageURL:"https://m.do.co/c/0d0a3c0340d3", imageAlt:"Digital Ocean"},
        { image:"img/clients/ryanv-logo.png", imageURL:"http://ryanvillasanti.com", imageAlt:"Ryan Villasanti"},
        { image:"img/clients/141-logo.png", imageURL:"/?error=1", imageAlt:"141 Art"},
        { image:"img/clients/lb-logo.png", imageURL:"https://LalaBahari.com", imageAlt:"Lala Bahari Small"},
        { image:"img/clients/collective-logo.png", imageURL:"/?error=1", imageAlt:"Collective Expression"},
        { image:"img/clients/pepo-logo.png", imageURL:"https://PepoBrand.com", imageAlt:"Pepo Brand"},
        { image:"img/clients/krowdspace-logo.png", imageURL:"/", imageAlt:"Krowdspace"},
        ]
</script>
<script type="text/javascript">
    this.on('mount', function() {
        $('.center').slick({
        centerMode: true,
        arrows: false,
        centerPadding: '60px',
        slidesToShow: 5,
        autoplay: true,
        autoplaySpeed: 3000,
    });
        });
</script>
</home-clients>

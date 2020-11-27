<section class="section-footer-min">
	<div class="container">
		<div class="row">
			<div class="footer-wrapper">
				<div class="copyright-min">
					<div class="f-logotype-min"><img src="<?=$ucp_settings['s_logo_footer']?>" alt=""></div>
					<div class="copytext-min"><h3>Все права защищены &copy; 2020 <br> Developed by <?=$ucp_settings['s_title']?></a>  | Design by <?=$ucp_settings['s_title']?></a> </h3></div>
				</div>
			</div>
		</div>
	</div>
</section>
<div id="preloader">
	<div id="loader"></div>
</div>
<script type="text/javascript">
	var loader = document.getElementById("loader");
	var preloader = document.getElementById("preloader");
	function fadeOutnojquery(el1,el2)
	{
		el1.style.opacity = 1;
		el2.style.opacity = 1;
		var intPreloader = setInterval(function()
		{
			el1.style.opacity = el1.style.opacity - 0.05;
			el2.style.opacity = el2.style.opacity - 0.05;
			if (el1.style.opacity <=0.05 && el2.style.opacity <=0.05)
			{ 
				clearInterval(intPreloader);el2.style.display = "none";el1.style.display = "none";
			}
		},16);
	}
	window.onload = function()
	{
		setTimeout(function()
		{
			fadeOutnojquery(loader,preloader);
		},1000);
	};
</script>

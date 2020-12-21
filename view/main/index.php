<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8">
	<title>Главная - <?php echo $ucp_settings['s_title']?></title>

	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- Libs -->
	<link rel="stylesheet" href="/public/main/libs/bootstrap/bootstrap-grid.min.css">
	<!-- <link rel="stylesheet" href="/public/main/libs/bootstrap/bootstrap.min.css"> -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://sweetalert.js.org/assets/sweetalert/sweetalert.min.js">
	<link rel="stylesheet" href="/public/main/libs/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/public/main/libs/linea/styles.css">

	<link rel="stylesheet" type="text/css" href="/public/main/css/main.css">
	<link rel="stylesheet" type="text/css" href="/public/main/css/fonts.css">
	<link rel="stylesheet" type="text/css" href="/public/main/css/media.css">
	<link rel="stylesheet" type="text/css" href="/public/main/css/aos.css">
	<link rel="stylesheet" type="text/css" href="/public/main/css/anim.css">
	<!-- new year balls -->
	<link rel="stylesheet" href="/public/main/libs/newyear/style.css">
	<link rel="shortcut icon" href="<?php echo $ucp_settings['s_favicon']?>" type="image/png">

</head>

<body>

	<?php include "view/common/topmenu.php"; ?>
	<section class="section-main-header">
		<div class="container">
			<div class="row">
				<div class="mh-wrap">
					<div class="col-lg-8 col-lg-offset col-md-8 col-md-offset">
						<div class="mh-content">
							<h1>Добро пожаловать на <?=$ucp_settings['s_title']?></h1>
							<p>
								Основная задача сервера - золотая середина между интересной игрой, то есть местом, где
								игроки будут с удовольствием проводить время друг с другом, не хуже, чем в соц. сети, и
								качественной RP-игрой. сведя количество команд и их использование к абсолютному
								минимуму.

							</p>
							<div class="mh-button">
								<a href="#start" class="btn btn-mh">Начать игру</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- SECTION: ABOUT-US -->
	<section class="section-about-us" id="about">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="about-wrap" data-aos="fade-up" data-aos-duration="1500">
						<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">
							<div class="section-title">
								<h1>О проекте</h1>
							</div>
							<div class="about-text">
								<p><?=$ucp_settings['s_about']?> </p>
							</div>
							<div class="about-img hidden-sm hidden-xs"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- SECTION: ADV -->
	<section class="section-adv">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="adv-wrap" data-aos="zoom-in" data-aos-duration="1500">
						<div class="section-title">
							<h1>Наши преимущества</h1>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="adv-item">
								<div class="adv-icon">
									<center><i class="fa fa-rocket" aria-hidden="true"></i></center>
								</div>
								<div class="adv-title">
									<h3>Скорость работы</h3>
								</div>
								<div class="adv-text">
									<p>Наша команда делает быстро и качественно.</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="adv-item">
								<div class="adv-icon">
									<center><i class="fa fa-list" aria-hidden="true"></i></center>
								</div>
								<div class="adv-title">
									<h3>Популярность</h3>
								</div>
								<div class="adv-text">
									<p>Наш проект один из самых популярных проектов CRMP индустрии!</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="adv-item">
								<div class="adv-icon">
									<center><i class="fa fa-cog" aria-hidden="true"></i></center>
								</div>
								<div class="adv-title">
									<h3>Мод</h3>
								</div>
								<div class="adv-text">
									<p>Наш игровой мод не имеет аналогов.<p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="adv-item">
								<div class="adv-icon">
									<center><i class="fa fa-comments" aria-hidden="true"></i></center>
								</div>
								<div class="adv-title">
									<h3>Поддержка</h3>
								</div>
								<div class="adv-text">
									<p>Наша Администрация помогает игрокам 24/7.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- SECTION: START-GAME -->
	<section class="section-start-game" id="start">
		<div class="container">
			<div class="row">
				<div class="start-wrap" data-aos="fade-up" data-aos-duration="1500">
					<div class="col-lg-12 col-lg-offset-2 col-md-8 col-md-offset-2">
						<div class="section-title">
							<h1>Как начать игру?</h1>
						</div>
						<div class="row">
							<div class="s-box">
								<div class="s-num">1</div>
								<div class="s-text">Скачать чистую версию GTA Criminal Russia</div>
							</div>
						</div>
						<div class="row">
							<div class="s-box">
								<div class="s-num">2</div>
								<div class="s-text">Скачать клиент CR:MP </div>
							</div>
						</div>
						<div class="row">
							<div class="s-box">
								<div class="s-num">3</div>
								<div class="s-text">Добавить сервер в избранные</div>
							</div>
						</div>
						<div class="row">
							<div class="s-box">
								<div class="s-num">4</div>
								<div class="s-text">Подключиться к серверу и зарегистрировать аккаунт</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- SECTION: SOCIAL -->
	<section class="section-social">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="social-wrap" data-aos="fade-up" data-aos-duration="1500">
						<div class="section-title">
							<h1>Мы в социальной сети</h1>
						</div>
						<div class="s-button">
							<center><a href="<?=$ucp_settings['s_vk']?>" class="btn btn-s">Сообщество ВКонтакте</a>
							</center>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<?php include "view/common/footer.php"; ?>
	</footer>
	<!-- newyear -->
	<script src="/public/main/libs/newyear/script.js"></script>
	<!-- end newyear -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="/public/main/js/main.js"></script>
	<script src="/public/main/js/form.js"></script>
	<script src="/public/main/js/aos.js"></script>
	<script>
		AOS.init();
	</script>
</body>

</html>
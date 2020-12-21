<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8">
	<title>Главная - <?php echo $ucp_settings['s_title']?></title>

	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- Libs -->
	<link rel="stylesheet" href="/public/main/libs/bootstrap/bootstrap-grid.min.css">
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

<body class="login-page">
	<?php include "view/common/topmenu.php"; ?>



	<section class="section-sign-in">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
					<div class="page-title">
						<h1>Авторизация</h1>
					</div>
					<div class="sign-in-box">
						<form action="/engine/obr/profile.php" method="POST">
							<div class="row mt-5">
								<div class="col-8 mt-5">
									<input name="user_name" type="text" class=" s-input" placeholder="Введите никнейм">
								</div>
							</div>

							<div class="row">
								<div class="col-8">
									<input name="user_password" type="password" class="s-input margin"
										placeholder="Введите пароль">
								</div>
							</div>
							<input type="hidden" name="action" value="login">

							<div class="row justify-content-center mt-1">
								<div class="col-8">
									<center><button class="btn btn-s" type="submit">Авторизоваться</button></center>
								</div>
							</div>
						</form>
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
	<script src="/public/main/js/aos.js"></script>
	<script src="/public/main/js/form.js"></script>
	<script>
		AOS.init();
	</script>
</body>

</html>
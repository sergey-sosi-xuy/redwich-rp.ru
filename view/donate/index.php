<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8">
	<title>Главная - <?php echo $ucp_settings['s_title']?></title>

	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- Libs -->
	<link rel="stylesheet" href="/public/main/libs/bootstrap/bootstrap-grid.min.css">
	<link rel="stylesheet" href="/public/main/libs/bootstrap/bootstrap.min.css">
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


	<div class="page-title-gradient">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h1>Донат</h1>
					<p>Здесь Вы можете пополнить <br>
						свой игровой счет.</p>
				</div>
			</div>
		</div>
	</div>
	<section class="section-donate mb-5 pb-5">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
					<div class="page-title">
						<h1>Пополнение счета</h1>
					</div>
					<div class="donate-box">
						<div class="donate-info">
							<p>
								Перед оплатой закройте игру!
							</p>
						</div>
						<form method="post" action="/view/donate/donate.php" id="donateform">
							<div class="form-group">
								<input type="text" name="nick" required placeholder="Игровой ник" class="d-input"><br>
								<input type="text" name="sum" required placeholder="Сумма пополнения" class="d-input margin"><br>
								<center><button class="btn btn-d" type="submit">Перейти к оплате</button></center>
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
	<script src="/public/main/js/form.js"></script>
	<script src="/public/main/js/aos.js"></script>
<!--    animation-->
	<script>
		AOS.init();
	</script>
</body>

</html>
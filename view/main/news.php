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

	<link rel="shortcut icon" href="<?php echo $ucp_settings['s_favicon']?>" type="image/png">
 
</head>
<body>
	<?php include "view/common/topmenu.php"; ?>

	
	
	<section class="section-news">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-lg-offset-1">
					<div class="page-title"><h1>Новости</h1></div>
					<br>
					<!-- block 2 -->
					<?php
						global $db;
						$statement = $db->prepare("SELECT * FROM `ucp_news` ORDER BY n_id DESC LIMIT 30");
						$statement->execute ();
						if($statement->rowCount()) 
						{
							while($news=$statement->fetch())
							{
								echo "
								<div class=\"col-lg-12 col-lg-offset col-md-8 col-md-offset\">
									<div class=\"inner-container news-wrp\">
										<div class=\"inner-title\"><h2>".$news['n_title']."</h2></div>
											<div class=\"inner-body np\">
												<div class=\"news-img\"><img src=\"".$news['n_images']."\" class=\"img-responsive\"></div>
												<div class=\"news-full-cnt\">
												<p>".$news['n_text']."</p>
											</div>
											<div class=\"news-footer clearfix\">
												<span class=\"pull-left\">".$news['n_data']." &nbsp&nbsp&nbsp<i class=\"fa fa-file\"></i> &nbsp".$news['n_id']."</span>
											</div>
										</div>
									</div>
								</div>";
							}
						}
						else echo "<div class=\"col-lg-12 col-lg-offset col-md-8 col-md-offset\"><br><br><center><h1>Новости отсутствуют!</h1></center></div>";
					?>
					<!-- block 3 -->
					
				</div>
			</div>
		</div>
	</section>
	
	<footer>
        <?php include "view/common/footer.php"; ?>
    </footer>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" ></script>
	<script src="/public/main/js/main.js" ></script>
	<script src="/public/main/js/form.js" ></script>
	<script src="/public/main/js/aos.js" ></script>
	<script>AOS.init();</script>
</body>
</html>
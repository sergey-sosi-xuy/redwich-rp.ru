<?php
session_start();
require_once ("../functions.php");
global $db;
global $ucp_settings;

if($_POST['action'] == "go_login") 
{
	$password = trim($_POST['password']);
	$name = trim($_POST['login']);
	// $captcha_key = trim($_POST['captcha_key']);

	if(!empty($password) && !empty($name))
	{

			$sql = "SELECT `a_pass` FROM `ucp_admin` WHERE `a_admin` = '$name' LIMIT 1";
			// message('warning','Ошибка',$sql );	
			$statement = $db->prepare($sql);
			$statement->execute ();

			if($statement->rowCount())
			{
				$data = $statement->fetch();

                    $data['a_pass'] = ($ucp_settings['s_md5'] == 1)?md5($data['a_pass']):$data['a_pass'];
					if($data['a_pass'] == $password)
				 	{
				 		session_start();
				 		$_SESSION['A_Nick'] = $name;
				 		//$_SESSION['Password'] = $password;
				 		
				 		message('success','Успех','Вы успешно авторизировались!
				 		Сейчас вас перенаправят в Личный кабинет','/admin/'); 		
				 	}	
				 	else message('warning','Ошибка','Данные введены неверно исправте ошибку и попробуйте снова!');
				
			}
			else message('warning','Ошибка','Данные введены неверно');
		
			
	

	}
	else message('warning','Ошибка','Заполните все поля');
		



}

if($_POST['action'] == "update_servers")
{
	$s_name = trim($_POST['s_name']);
	$s_ip = trim($_POST['s_ip']);
	if(!empty($s_name) && !empty($s_ip))
	{
		$sql = "UPDATE `ucp_servers` ( `s_name`, `s_ip`) VALUES ( '{$s_name}', '{$s_ip}')";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно сохранили сервер!", "/admin/server");
		else message('warning','Системная Ошибка!',"Нам не удалось создать новость, проверьте наличие таблицы - ucp_servers", "/admin/server");
	}
}
if($_POST['action'] == "update_admins")
{
    $a_id = trim($_POST['a_id']);
    $a_admin = trim($_POST['a_admin']);
    $a_pass = trim($_POST['a_pass']);
    if(!empty($a_admin) && !empty($a_pass))
    {
        $a_pass = ($ucp_settings['s_md5'] == 1)?md5($a_pass):$a_pass;
        $sql = "UPDATE `ucp_admin` SET `a_admin` = '{$a_admin}',`a_pass` = '{$a_pass}' WHERE `a_id` = '{$a_id}'";
        $result = $db->query($sql, PDO::FETCH_ASSOC);
        if($result) message('success','Успех!',"Вы успешно сохранили аккаунт администратора!", "/admin/admins");
        else message('warning','Системная Ошибка!',"Нам не удалось сохранить аккаунт администратора, проверьте наличие таблицы - ucp_admin", "/admin/admins");
    }
    else message('warning','Ошибка!',"Заполните поле");

}
if($_POST['action'] == "update_news")
{
	$n_id = trim($_POST['n_id']);
	$n_title = trim($_POST['n_title']);
	$n_url = trim($_POST['n_url']);
	$n_text = trim($_POST['n_text']);
	$n_images = trim($_POST['n_images']);
	if(!empty($n_images) && !empty($n_text) && !empty($n_url) && !empty($n_title))
	{
		//$n_data =  date('d.m.Y'); 
		// $sql = "INSERT INTO `ucp_news` ( `n_title`, `n_text`, `n_data`, `n_images`,`n_url`) VALUES ( '{$n_title}', '{$n_text}', '{$n_data}','{$n_images}','{$n_url}')";
		$sql = "UPDATE `ucp_news` SET `n_title` = '{$n_title}',`n_text` = '{$n_text}',`n_images` = '{$n_images}',`n_url` = '{$n_url}' WHERE `n_id` = '{$n_id}'";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно сохранили новость!", "/admin/news");
		else message('warning','Системная Ошибка!',"Нам не удалось сохранить новость, проверьте наличие таблицы - ucp_news", "/admin/news");
	}
	else message('warning','Ошибка!',"Заполните поле");	

}
if($_POST['action'] == "delete_server")
{
	$s_id = trim($_POST['s_id']);
	if(!empty($s_id))
	{
		$sql = "DELETE FROM `ucp_servers` WHERE `s_id` = '{$s_id}'";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно удалили сервер!", "/admin/news");
		else message('warning','Системная Ошибка!',"Нам не удалось удалить новость, проверьте наличие таблицы - ucp_servers", "/admin/ucp_servers");
	}

}
if($_POST['action'] == "delete_news")
{
	$n_id = trim($_POST['n_id']);
	if(!empty($n_id))
	{
		//$n_data =  date('d.m.Y'); 
		// $sql = "INSERT INTO `ucp_news` ( `n_title`, `n_text`, `n_data`, `n_images`,`n_url`) VALUES ( '{$n_title}', '{$n_text}', '{$n_data}','{$n_images}','{$n_url}')";
		$sql = "DELETE FROM `ucp_news` WHERE `n_id` = '{$n_id}'";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно удалили новость!", "/admin/news");
		else message('warning','Системная Ошибка!',"Нам не удалось удалить новость, проверьте наличие таблицы - ucp_news", "/admin/news");
	}

}
if($_POST['action'] == "delete_admin")
{
    $a_id = trim($_POST['a_id']);
    if(!empty($a_id))
    {
        $sql = "DELETE FROM `ucp_admin` WHERE `a_id` = '{$a_id}'";
        $result = $db->query($sql, PDO::FETCH_ASSOC);
        if($result) message('success','Успех!',"Вы успешно удалили аккаунт администратора!", "/admin/news");
        else message('warning','Системная Ошибка!',"Нам не удалось удалить аккаунт администратора, проверьте наличие таблицы - ucp_news", "/admin/admins");
    }

}
if($_POST['action'] == "delete_item_roulette")
{
	$id = trim($_POST['id']);
	if(!empty($id))
	{
		//$n_data =  date('d.m.Y'); 
		// $sql = "INSERT INTO `ucp_news` ( `n_title`, `n_text`, `n_data`, `n_images`,`n_url`) VALUES ( '{$n_title}', '{$n_text}', '{$n_data}','{$n_images}','{$n_url}')";
		$sql = "DELETE FROM `ucp_item_roulette` WHERE `id` = '{$id}'";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно удалили предмет!", "/admin/roulette");
		else message('warning','Системная Ошибка!',"Нам не удалось удалить предмет, проверьте наличие таблицы - ucp_item_roulette", "/admin/roulette");
	}

}
if($_POST['action'] == "save_category_roulette")
{
	$id = trim($_POST['id']);
	$name = trim($_POST['name']);

	if(!empty($name)  && !empty($id))
	{
		//$n_data =  date('d.m.Y'); 
		// $sql = "INSERT INTO `ucp_news` ( `n_title`, `n_text`, `n_data`, `n_images`,`n_url`) VALUES ( '{$n_title}', '{$n_text}', '{$n_data}','{$n_images}','{$n_url}')";
		$sql = "UPDATE `ucp_category_roulette` SET `name` = '{$name}' WHERE `id` = '{$id}'";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно сохранили категорию!", "/admin/roulette");
		else message('warning','Системная Ошибка!',"Нам не удалось сохранить категорию, проверьте наличие таблицы - ucp_category_roulette", "/admin/roulette");
	}
	else message('warning','Ошибка!',"Заполните поле");	

}
if($_POST['action'] == "delete_category_roulette")
{
	$id = trim($_POST['id']);
	if(!empty($id))
	{
		//$n_data =  date('d.m.Y'); 
		// $sql = "INSERT INTO `ucp_news` ( `n_title`, `n_text`, `n_data`, `n_images`,`n_url`) VALUES ( '{$n_title}', '{$n_text}', '{$n_data}','{$n_images}','{$n_url}')";
		$sql = "DELETE FROM `ucp_category_roulette` WHERE `id` = '{$id}'";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно удалили категорию!", "/admin/roulette");
		else message('warning','Системная Ошибка!',"Нам не удалось удалить категорию, проверьте наличие таблицы - ucp_category_roulette", "/admin/roulette");
	}

}
if($_POST['action'] == "create_category_roulette")
{
	$name = trim($_POST['category_name']);
	
	if(!empty($name))
	{
		$n_data =  date('d.m.Y'); 
		$sql = "INSERT INTO `ucp_category_roulette` ( `name`) VALUES ( '{$name}')";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно создали категорию!", "/admin/roulette");
		else message('warning','Системная Ошибка!',"Нам не удалось создать категорию, проверьте наличие таблицы - ucp_category_roulette", "/admin/roulette");
	}
	else message('warning','Ошибка!',"Заполните поле");	

}

if($_POST['action'] == "create_servers")
{
	$s_name = trim($_POST['s_name']);
	$s_ip = trim($_POST['s_ip']);
	if(!empty($s_name) && !empty($s_ip))
	{
		$sql = "INSERT INTO `ucp_servers` (`s_name`, `s_ip`) VALUES ( '{$s_name}', '{$s_ip}')";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно добавили сервер!", "/admin/server");
		else message('warning','Системная Ошибка!',"Нам не удалось создать новость, проверьте наличие таблицы - ucp_servers", "/admin/server");
	}
	else message('warning','Ошибка!',"Заполните поле");	
}
if($_POST['action'] == "create_admins")
{
    $a_admin = trim($_POST['a_admin']);
    $a_pass = trim($_POST['a_pass']);
    if(!empty($a_admin) && !empty($a_pass))
    {
        $data['a_pass'] = ($ucp_settings['s_md5'] == 1)?md5($data['a_pass']):$data['a_pass'];
        $sql = "INSERT INTO `ucp_admin` ( `a_admin`, `a_pass`) VALUES ( '{$a_admin}', '{$a_pass}')";
        $result = $db->query($sql, PDO::FETCH_ASSOC);
        if($result) message('success','Успех!',"Вы успешно создали аккаунт администратора!", "/admin/admins");
        else message('warning','Системная Ошибка!',"Нам не удалось создать новость, проверьте наличие таблицы - ucp_news", "/admin/admins");
    }
    else message('warning','Ошибка!',"Заполните поле");
}

if($_POST['action'] == "create_news")
{
	$n_title = trim($_POST['n_title']);
	$n_url = trim($_POST['n_url']);
	$n_text = trim($_POST['n_text']);
	$n_images = trim($_POST['n_images']);
	if(!empty($n_images) && !empty($n_text) && !empty($n_url) && !empty($n_title))
	{
		$n_data =  date('d.m.Y'); 
		$sql = "INSERT INTO `ucp_news` ( `n_title`, `n_text`, `n_data`, `n_images`,`n_url`) VALUES ( '{$n_title}', '{$n_text}', '{$n_data}','{$n_images}','{$n_url}')";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно создали новость!", "/admin/news");
		else message('warning','Системная Ошибка!',"Нам не удалось создать новость, проверьте наличие таблицы - ucp_news", "/admin/news");
	}
	else message('warning','Ошибка!',"Заполните поле");	
}

if($_POST['action'] == "create_item_roulette")
{
	$i_name = trim($_POST['i_name']);
	$i_images = trim($_POST['i_images']);
	$i_category = trim($_POST['i_category']);
	$i_change = trim($_POST['i_change']);
	$i_start_rand = trim($_POST['i_start_rand']);
	$i_end_rand = trim($_POST['i_end_rand']);
	if(!empty($i_name) && !empty($i_images) && !empty($i_category) && !empty($i_change) && !empty($i_start_rand) && !empty($i_end_rand))
	{
		
		$sql = "INSERT INTO `ucp_item_roulette` ( `i_name`, `i_images`, `i_category`, `i_change`,`i_start_rand`,`i_end_rand`) VALUES ( '{$i_name}', '{$i_images}', '{$i_category}','{$i_change}','{$i_start_rand}','{$i_end_rand}')";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно предмет в рулетку!", "/admin/roulette");
		else message('warning','Системная Ошибка!',"Нам не удалось создать предмет, проверьте наличие таблицы - ucp_item_roulette", "/admin/roulette");
	}
	else message('warning','Ошибка!',"Заполните поле");	

}
if($_POST['action'] == "save_item_roulette")
{
	$id = trim($_POST['id']);
	$i_name = trim($_POST['i_name']);
	$i_images = trim($_POST['i_images']);
	$i_category = trim($_POST['i_category']);
	$i_change = trim($_POST['i_change']);
	$i_start_rand = trim($_POST['i_start_rand']);
	$i_end_rand = trim($_POST['i_end_rand']);
	if(!empty($i_name) && !empty($i_images) && !empty($i_category) && !empty($i_change) && !empty($i_start_rand) && !empty($i_end_rand) && !empty($id))
	{
		//$n_data =  date('d.m.Y'); 
		// $sql = "INSERT INTO `ucp_news` ( `n_title`, `n_text`, `n_data`, `n_images`,`n_url`) VALUES ( '{$n_title}', '{$n_text}', '{$n_data}','{$n_images}','{$n_url}')";
		$sql = "UPDATE `ucp_item_roulette` SET `i_name` = '{$i_name}',`i_images` = '{$i_images}',`i_change` = '{$i_change}',`i_start_rand` = '{$i_start_rand}',`i_end_rand` = '{$i_end_rand}' WHERE `id` = '{$id}'";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		if($result) message('success','Успех!',"Вы успешно сохранили предмет!", "/admin/roulette");
		else message('warning','Системная Ошибка!',"Нам не удалось сохранить предмет, проверьте наличие таблицы - ucp_item_roulette", "/admin/roulette");
	}
	else message('warning','Ошибка!',"Заполните поле");	

}
if($_POST['action'] == "update_table_setting")
{
	$id = trim($_POST['id_pole']);
	$name = trim($_POST['name_pole']);
	$value = trim($_POST['value']);
	if(!empty($value))
	{
		//$sql = "UPDATE `ucp_table_settings` SET {$name} = {$value}";
		$sql = "UPDATE `ucp_table_settings` SET `value_column` = '{$value}' WHERE `name_column` = '{$name}'";
		$result = $db->query($sql, PDO::FETCH_ASSOC);
		

		if($result) message('success','Успех!',"Вы успешно обновили данные!");
		else message('warning','Системная Ошибка!',"Нам не удалось сохранить информацию, проверьте наличие таблицы - ucp_table_settings", "/admin/table");
	}
	else message('warning','Ошибка!',"Заполните поле");	

}

if($_POST['action'] == "save_settings_ucp")
{
	$s_title = trim($_POST['s_title']);
	$s_logo = trim($_POST['s_logo']);
	$s_logo_footer = trim($_POST['s_logo_footer']);
	$s_vk = trim($_POST['s_vk']);
	$s_discord = trim($_POST['s_discord']);
	$s_youtube = trim($_POST['s_youtube']);
	$s_about = trim($_POST['s_about']);
	$s_favicon = trim($_POST['s_favicon']);
	$s_md5 = trim($_POST['s_md5']);
	$s_donate_cost = trim($_POST['s_donate_cost']);
    $s_publicKey = trim($_POST['s_publicKey']);
    $s_secretWord = trim($_POST['s_secretWord']);
    $s_urlUnitPay = trim($_POST['s_urlUnitPay']);
    $s_minDonate = trim($_POST['s_minDonate']);


    if(!empty($s_title) &&
	!empty($s_logo) && 
	!empty($s_logo_footer) && 
	!empty($s_youtube) && 
	!empty($s_discord) && 
	!empty($s_about) && 
	!empty($s_vk) && 
	!empty($s_favicon) && 
	!empty($s_donate_cost)&&
    !empty($s_publicKey) &&
    !empty($s_urlUnitPay) &&
    !empty($s_minDonate) &&
    !empty($s_secretWord))
	{
		$sql = "UPDATE `ucp_settings` SET `s_title` = :title,
		`s_favicon` = :favicon,
		`s_logo` = :logo,
		`s_logo_footer` = :logo_footer,
		`s_vk` = :vk,
		`s_discord` = :discord,
		`s_youtube` = :youtube,
		`s_about` = :about,
		`s_md5` = :md5,
		`s_donate_cost` = :cost_donate,
		`s_publicKey` = :publicKey,
		`s_urlUnitPay` = :urlUnitPay,
		`s_minDonate` = :minDonate,
		`s_secretWord` = :secretWord";
		$statement = $db->prepare($sql);
		$statement->bindParam (':title', $s_title);
		$statement->bindParam (':favicon', $s_favicon);
		$statement->bindParam (':logo', $s_logo);
		$statement->bindParam (':logo_footer', $s_logo_footer);
		$statement->bindParam (':vk', $s_vk);
		$statement->bindParam (':discord', $s_discord);
		$statement->bindParam (':youtube', $s_youtube);
		$statement->bindParam (':about', $s_about);
		$statement->bindParam (':md5', $s_md5);
		$statement->bindParam (':cost_donate', $s_donate_cost);
        $statement->bindParam (':publicKey', $s_publicKey);
        $statement->bindParam (':urlUnitPay', $s_urlUnitPay);
        $statement->bindParam (':minDonate', $s_minDonate);
        $statement->bindParam (':secretWord', $s_secretWord);

        $statement->execute();
		if($statement->rowCount()) message('success','Успех!',"Вы успешно обновили данные! Сейчас мы их обновим", "/admin/");
		else message('warning','Системная Ошибка!',"Нам не удалось сохранить информацию, проверьте наличие таблицы - ucp_settings", "/admin/");
		
			
	}
	else message('warning','Ошибка!',"Заполните все поля");	
}

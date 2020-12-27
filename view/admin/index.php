
<!DOCTYPE html>
<html class="loading" lang="ru" data-textdirection="ltr">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <title>Главная - Admin - <?php echo $ucp_settings['s_title']?></title>
  <?php include "common/styles.php"?>
</head>

<?php include "common/leftmenu.php"?>
<body class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar"
data-open="click" data-menu="vertical-menu" data-col="2-columns">
<div class="app-content content">
    <div class="content-wrapper">
      <div class="content-header row">
      	
      </div>
      <div class="content-body">
        
       

       
        <div class="row match-height">
          
          <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title" id="basic-layout-tooltip">Настройки UCP</h4>
                  <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                  
                </div>
                <div class="card-content collapse show">
                  <div class="card-body">
                    
                    <form class="form" method="POST" action="/engine/obr/admin.php">
                      <div class="form-body">
                        <div class="form-group">
                          <label for="issueinput1">Название проекта</label>
                          <input type="text" id="issueinput1" class="form-control" value="<?php echo $ucp_settings['s_title']?>"
                          name="s_title">
                        </div>
                        <div class="form-group">
                          <label for="issueinput2">URL Иконки сайта</label>
                          <input type="text" id="issueinput2" class="form-control" value="<?php echo $ucp_settings['s_favicon']?>"
                          name="s_favicon" >
                        </div>
                        <div class="form-group">
                          <label for="issueinput3">URL Логотипа сайта</label>
                          <input type="text" id="issueinput3" class="form-control" value="<?php echo $ucp_settings['s_logo']?>"
                          name="s_logo" >
                        </div>
                        <div class="form-group">
                          <label for="issueinput4">URL Логотипа футета</label>
                          <input type="text" id="issueinput4" class="form-control" value="<?php echo $ucp_settings['s_logo_footer']?>"
                          name="s_logo_footer" >
                        </div>
                        <div class="form-group">
                          <label for="issueinput5">URL Группы ВК</label>
                          <input type="text" id="issueinput5" class="form-control" value="<?php echo $ucp_settings['s_vk']?>"
                          name="s_vk" >
                        </div>
                        <div class="form-group">
                          <label for="issueinput6">URL Discord</label>
                          <input type="text" id="issueinput6" class="form-control" value="<?php echo $ucp_settings['s_discord']?>"
                          name="s_discord" >
                        </div>
                        <div class="form-group">
                          <label for="issueinput7">URL YouTube</label>
                          <input type="text" id="issueinput7" class="form-control" value="<?php echo $ucp_settings['s_youtube']?>"
                          name="s_youtube" >
                        </div>
                          <div class="form-group">
                              <label for="issueinput8">Publickey из UnitPay</label>
                              <input type="text" id="issueinput8" class="form-control" value="<?php echo $ucp_settings['s_publicKey']?>"
                                     name="s_publicKey" >
                          </div>
                          <div class="form-group">
                              <label for="issueinput9">Секретное слово из UnitPay</label>
                              <input type="text" id="issueinput9" class="form-control" value="<?php echo $ucp_settings['s_secretWord']?>"
                                     name="s_secretWord" >
                          </div>
                          <div class="form-group">
                              <label for="issueinput10">URl UnitPay</label>
                              <input type="text" id="issueinput10" class="form-control" value="<?php echo $ucp_settings['s_urlUnitPay']?>"
                                     name="s_urlUnitPay" >
                          </div>
                          <div class="form-group">
                              <label for="issueinput11">Минимальная сумма доната</label>
                              <input type="text" id="issueinput11" class="form-control" value="<?php echo $ucp_settings['s_minDonate']?>"
                                     name="s_minDonate" >
                          </div>
                          <div class="form-group">
                              <label for="issueinput12">About Text</label>
                          <textarea name="s_about" class="form-control"  id="issueinput12" cols="30" rows="10"
><?=$ucp_settings['s_about']?></textarea>
                        </div>
                        
                        <div class="form-group">
                          <label for="issueinput13">Шифрование пароля MD5</label>
                          <select id="issueinput13" name="s_md5" class="form-control">
                            <option value='<?=$ucp_settings['s_md5']?>'>Сейчас: <?php if($ucp_settings['s_md5']) echo "Включено"; else echo "Отключено";?></option>
                            <?php if($ucp_settings['s_md5']) echo "<option value='0'>Отключить</option>"; else echo "<option value='1'>Включить</option>";?>
                          </select>
                        </div>
                        <div class="form-group">
                          <label for="issueinput14">Цена рулетки</label>
                          <input type="number" id="issueinput14" class="form-control" value="<?php echo $ucp_settings['s_donate_cost']?>"
                          name="s_donate_cost" >
                        </div>
                        <input type="hidden" name="action" value="save_settings_ucp">
                        
                       
                      </div>
                      <div class="form-actions">
                        
                        <button type="submit" class="btn btn-primary">
                          <i class="fa fa-check-square-o"></i> Сохранить
                        </button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          
          
        </div>

      </div>
    </div>
  </div>
  <footer class="footer footer-static footer-light navbar-border">
    <p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2">
      <span class="float-md-left d-block d-md-inline-block">Copyright &copy; 2020 <?php echo $ucp_settings['s_title']?>, All rights reserved. </span>
      
    </p>
  </footer>
  <?php include "common/scripts.php" ?>
</body>
</html> 
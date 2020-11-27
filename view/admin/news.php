
<!DOCTYPE html>
<html class="loading" lang="ru" data-textdirection="ltr">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <title>Новости - Admin - <?php echo $ucp_settings['s_title']?></title>
  <?php include "common/styles.php"?>
 
</head>

<?php include "common/leftmenu.php" ?>
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
                  <h4 class="card-title" id="basic-layout-tooltip">Работа с новостями</h4>
                  <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                  
                </div>
                <div class="card-content">
                  <div class="card-body">
                    
                 
                          <button type="button" class="btn btn-outline-primary block btn-lg" data-toggle="modal"
                          data-target="#default">
                            Создать новость
                          </button>
                          <br><hr>
                          <table class="table">
                    <thead class="bg-primary">
                      <tr>
                        <th>#</th>
                        <th>Название</th>
                        <th>Дата</th>
                        <th>Действия</th>
                      </tr>
                    </thead>
                    <tbody>
                    	<?php
				
							global $db;

							$statement = $db->prepare("SELECT * FROM `ucp_news` ORDER BY n_id DESC LIMIT 30");




							$statement->execute ();

							if($statement->rowCount()) 
							{
								while($news=$statement->fetch())
								{

											echo '<div class="modal fade text-left" id="edit-'.$news['n_id'].'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
                          aria-hidden="true">
                            <div class="modal-dialog" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h4 class="modal-title" id="myModalLabel1">Редактирование новости - '.$news['n_title'].'</h4>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <form method="POST" action="/engine/obr/admin.php">
                               	<div class="modal-body">
                                  <div class="row">
                                  	
			                          <div class="col-lg-12">
			                            <div class="form-group">
			                              <label for="projectinput1">Название новости</label>
			                              <input type="text" id="projectinput1" class="form-control" value="'.$news['n_title'].'"
			                              name="n_title">
			                            </div>
			                          </div>
			                          <div class="col-lg-12">
			                            <div class="form-group">
			                              <label for="projectinput2">Ссылка на картинку</label>
			                              <input type="text" id="projectinput2" class="form-control" value="'.$news['n_images'].'"
			                              name="n_images">
			                            </div>
			                          </div>
			                          <div class="col-lg-12">
			                            <div class="form-group">
			                              <label for="projectinput2">Ссылка на новость</label>
			                              <input type="text" id="projectinput2" class="form-control" value="'.$news['n_url'].'"
			                              name="n_url">
			                            </div>
			                          </div>
			                          <div class="col-lg-12">
			                          	<div class="form-group">
				                          <label for="projectinput8">Небольшое описание</label>
				                          <textarea id="projectinput8" rows="5" class="form-control" name="n_text" >'.$news['n_text'].'</textarea>
				                        </div>
			                          </div>
			                        
			                       	</div>
                                </div>
                                <div class="modal-footer">
                                	<input type="hidden" name="n_id" value="'.$news['n_id'].'">	
                                  <input type="hidden" name="action" value="update_news">	
                                  <button type="submit" class="btn btn-outline-primary">Сохранить</button>
                                </div>
                                </form>
                              </div>
                            </div>
                          </div>
                        </div>';
											$button_delete = '<button type="button" class="btn btn-danger" onclick="DeleteNews('.$news['n_id'].');">Удалить</button>';
											 echo "
				<tr>
                        <th scope='row'>{$news['n_id']}</th>
                        <td>{$news['n_title']}</td>
                        <td>{$news['n_data']}</td>
                        <td><button type='button' class='btn btn-primary ' data-toggle='modal'
                          data-target='#edit-{$news['n_id']}'>Редактировать</button>
							{$button_delete}
                          </td>
                      </tr>"; } } ?>
				
                      
                    </tbody>
                  </table>
                          <!-- Modal -->
                          <div class="modal fade text-left" id="default" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
                          aria-hidden="true">
                            <div class="modal-dialog" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h4 class="modal-title" id="myModalLabel1">Создание новости</h4>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <form method="POST" action="/engine/obr/admin.php">
                               	<div class="modal-body">
                                  <div class="row">
                                  	
			                          <div class="col-lg-12">
			                            <div class="form-group">
			                              <label for="projectinput1">Название новости</label>
			                              <input type="text" id="projectinput1" class="form-control" placeholder="Обновление на сервере"
			                              name="n_title">
			                            </div>
			                          </div>
			                          <div class="col-lg-12">
			                            <div class="form-group">
			                              <label for="projectinput2">Ссылка на картинку</label>
			                              <input type="text" id="projectinput2" class="form-control" placeholder="google.com/img.png"
			                              name="n_images">
			                            </div>
			                          </div>
			                          <div class="col-lg-12">
			                            <div class="form-group">
			                              <label for="projectinput2">Ссылка на новость</label>
			                              <input type="text" id="projectinput2" class="form-control" placeholder="vk.com/post_id"
			                              name="n_url">
			                            </div>
			                          </div>
			                          <div class="col-lg-12">
			                          	<div class="form-group">
				                          <label for="projectinput8">Небольшое описание</label>
				                          <textarea id="projectinput8" rows="5" class="form-control" name="n_text" placeholder="Добавили работу..."></textarea>
				                        </div>
			                          </div>
			                        
			                       	</div>
                                </div>
                                <div class="modal-footer">
                                  <input type="hidden" name="action" value="create_news">	
                                  <button type="submit" class="btn btn-outline-primary">Создать</button>
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
<!DOCTYPE html>
<html class="loading" lang="ru" data-textdirection="ltr">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <title>Сервера - Admin - <?php echo $ucp_settings['s_title']?></title>
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
                  <h4 class="card-title" id="basic-layout-tooltip">Работа с серверами</h4>
                  <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                  
                </div>
                <div class="card-content">
                  <div class="card-body">
                    
                 
                          <button type="button" class="btn btn-outline-primary block btn-lg" data-toggle="modal"
                          data-target="#default">
                            Добавить сервер
                          </button>
                          <br><hr>
                          <table class="table">
                    <thead class="bg-primary">
                      <tr>
                        <th>#</th>
                        <th>Название</th>
                        <th>Ip-адрес</th>
                        <th>Действия</th>
                      </tr>
                    </thead>
                    <tbody>
                    	<?php
				
							global $db;

							$statement = $db->prepare("SELECT * FROM `ucp_servers` ORDER BY s_id DESC LIMIT 30");
							$statement->execute ();

							if($statement->rowCount()) 
							{
								while($server=$statement->fetch())
								{

											echo '<div class="modal fade text-left" id="edit-'.$server['s_id'].'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
                          aria-hidden="true">
                            <div class="modal-dialog" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h4 class="modal-title" id="myModalLabel1">Редактирование сервера - '.$server['s_name'].'</h4>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <form method="POST" action="/engine/obr/admin.php">
                               	<div class="modal-body">
                                  <div class="row">
                                  	
			                          <div class="col-lg-12">
			                            <div class="form-group">
			                              <label for="projectinput1">Название сервера</label>
			                              <input type="text" id="projectinput1" class="form-control" value="'.$server['s_name'].'"
			                              name="s_name">
			                            </div>
			                          </div>
			                          <div class="col-lg-12">
			                            <div class="form-group">
			                              <label for="projectinput2">Ip-адрес</label>
			                              <input type="text" id="projectinput2" class="form-control" value="'.$server['s_ip'].'"
			                              name="s_ip">
			                            </div>
			                          </div>
			                       	</div>
                                </div>
                                <div class="modal-footer">
                                	<input type="hidden" name="s_id" value="'.$server['s_id'].'">	
                                  <input type="hidden" name="action" value="update_servers">	
                                  <button type="submit" class="btn btn-outline-primary">Сохранить</button>
                                </div>
                                </form>
                              </div>
                            </div>
                          </div>
                        </div>';
                        
											$button_delete = '<button type="button" class="btn btn-danger" onclick="DeleteServer('.$server['s_id'].');">Удалить</button>';
											 echo "
				                <tr>
                        <th scope='row'>{$server['s_id']}</th>
                        <td>{$server['s_name']}</td>
                        <td>{$server['s_ip']}</td>
                        <td><button type='button' class='btn btn-primary ' data-toggle='modal'
                          data-target='#edit-{$server['s_id']}'>Редактировать</button>
							{$button_delete}
                          </td>
                      </tr>"; } } 
                      ?>
				
                      
                    </tbody>
                  </table>
                          <!-- Modal -->
                          <div class="modal fade text-left" id="default" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
                          aria-hidden="true">
                            <div class="modal-dialog" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h4 class="modal-title" id="myModalLabel1">Добавление сервера</h4>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <form method="POST" action="/engine/obr/admin.php">
                               	<div class="modal-body">
                                  <div class="row">
                                  	
			                          <div class="col-lg-12">
			                            <div class="form-group">
			                              <label for="projectinput1">Название сервера</label>
			                              <input type="text" id="projectinput1" class="form-control" placeholder="Moskov"
			                              name="s_name">
			                            </div>
			                          </div>
			                          <div class="col-lg-12">
			                            <div class="form-group">
			                              <label for="projectinput2">Ip-адрес</label>
			                              <input type="text" id="projectinput2" class="form-control" placeholder="127.0.0.1:7777"
			                              name="s_ip">
			                            </div>
			                          </div>
			                          </div>
                                <div class="modal-footer">
                                  <input type="hidden" name="action" value="create_servers">  
                                  <button type="submit" class="btn btn-outline-primary">Создать</button>
                                </div>
			                       	</div>
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
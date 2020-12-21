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
  <?php include "view/common/topmenu.php";

	$data = GetUserData();
  
	?>
  <section class="inner-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
          <div class="inner-container">
            <div class="inner-title">
              <h2>Общая информация</h2>
            </div>
            <div class="inner-body inner-border clearfix">
              <div class="player-skin pull-left">
                <div class='user_img'
                  style='background:url(/public/main/img/skins/<?=$data[$ucp_table_settings['skin']];?>.png) -15px top;height:100px;border-radius: 300px;'>
                </div>
              </div>
              <div class="player-info pull-left">
                <h2>
                  <?FixName($data[$ucp_table_settings['name']])?>
                </h2>
                <h3>Уровень: <?=$data[$ucp_table_settings['level']];?></h3>
              </div>

            </div>
            <div class="inner-body inner-border">
              <table class="player-stat">
                <tr>
                  <td>Очки опыта:</td>
                  <td><?=$data[$ucp_table_settings['level']];?>/<?=$data[$ucp_table_settings['level']]*8;?></td>
                </tr>
                <tr>
                  <td>Пол:</td>
                  <td><?=($data[$ucp_table_settings['sex']])?"Женский":"Мужской";?></td>
                </tr>
                <tr>
                  <td>Проживание:</td>
                  <td>дом
                    <?=($data[$ucp_table_settings['house']] != -1)?"#".$data[$ucp_table_settings['house']]:"Отсутствует";?>
                  </td>
                </tr>

                <tr>
                  <td>Уровень розыска:</td>
                  <td><?=$data[$ucp_table_settings['wanted']];?></td>
                </tr>
              </table>
            </div>
            <div class="inner-body inner-border">
              <?php
              global $db;
                $sql = "SELECT * FROM `frac` WHERE `oID` = '{$data[$ucp_table_settings['member']]}' LIMIT 1";
                $statement = $db->prepare($sql);
                $statement->execute ();
                if($statement->rowCount()){
                  $member = $statement->fetch();
                  $rank = 'oRangName'.$data[$ucp_table_settings['rank']];
                  echo
                  '
                  <table class="player-stat">
                    <tr>
                      <td>Организация:</td>
                      <td>'.$member['oName'].'</td>
                    </tr>
                    <tr>
                      <td>Должность:</td>
                      <td>'.$member[$rank].'</td>
                    </tr>
                  </table>
                  ';
                }else echo ' <table class="player-stat">
                  <tr>
                    <td>Организация:</td>
                    <td>Отсутсвует</td>
                  </tr>
                  <tr>
                    <td>Должность:</td>
                    <td>Отсутсвует</td>
                  </tr>
                </table>
                ';
               
               ?>

            </div>
            <div class="inner-body inner-border">
              <table class="player-stat">
                <tr>
                  <td>На руках:</td>
                  <td><?=$data[$ucp_table_settings['cash']];?> рублей</td>
                </tr>
                <tr>
                  <td>Основной счет:</td>
                  <td><?=$data[$ucp_table_settings['bank']];?> рублей</td>
                </tr>
                <tr>
                  <td>На карте:</td>
                  <td><?=$data[$ucp_table_settings['card']];?> рублей</td>
                </tr>

              </table>
            </div>
            <div class="inner-body inner-border">
              <table class="player-stat">
                <tr>
                  <td>Redwichi на счету:</td>
                  <td><?=$data[$ucp_table_settings['donate']];?></td>
                </tr>

              </table><br>
              <?php
               global $db;
                $name = $_SESSION['NickName'];
                $sql = "SELECT * FROM `admin` WHERE `aName` = '{$name}' LIMIT 1";
                $statement = $db->prepare($sql);
                $statement->execute ();
                if($statement->rowCount()) echo'<a class="btn btn-d" href="/admin/">Админ панель</a>';
               ?>
              <a class="btn btn-d" href="/profile/exit">Выход</a>
            </div>
          </div>
        </div>
        <?php
              $skills = EncodeGunSkills($data[$ucp_table_settings['gunskills']],'|');
              $licence = EncodeLicence($data[$ucp_table_settings['licence']],'|');
            ?>
        <div class="col-lg-6 col-md-6 col-sm-6">
          <div class="inner-container xs-margin">
            <div class="inner-title">
              <h2>Лицензии</h2>
            </div>
            <div class="inner-body inner-border clearfix">
              <table class="player-stat">
                <tr>
                  <td>Лицензия категории A</td>
                  <td><?=($licence[0])?'присутствует':'отсутвует';?></td>
                </tr>
                <tr>
                  <td>Лицензия категории B</td>
                  <td><?=($licence[1])?'присутствует':'отсутвует';?></td>
                </tr>
                <tr>
                  <td>Лицензия категории C</td>
                  <td><?=($licence[2])?'присутствует':'отсутвует';?></td>
                </tr>
                <tr>
                  <td>Лицензия категории D</td>
                  <td><?=($licence[3])?'присутствует':'отсутвует';?></td>
                </tr>
                <tr>
                  <td>Лицензия на водный транспорт:</td>
                  <td><?=($licence[4])?'присутствует':'отсутвует';?></td>
                </tr>
                <tr>
                  <td>Лицензия на воздушный транспорт:</td>
                  <td><?=($licence[5])?'присутствует':'отсутвует';?></td>
                </tr>
                <tr>
                  <td>Лицензия на оружие:</td>
                  <td><?=($licence[6])?'присутствует':'отсутвует';?></td>
                </tr>
                <tr>
                  <td>Лицензия на бизнес:</td>
                  <td><?=($licence[7])?'присутствует':'отсутвует';?></td>
                </tr>
              </table>
            </div>
          </div>
          <div class="inner-container inner-margin">
            <div class="inner-title">
              <h2>Владение оружием</h2>
            </div>
            <div class="inner-body inner-border">
              <table class="player-stat">
                <tr>
                  <td>Снайперская винтовка:</td>
                  <td><?=$skills[0]/100?>/100%</td>
                </tr>
                <tr>
                  <td>Пустынный орёл:</td>
                  <td><?=$skills[1]/100?>/100%</td>
                </tr>
                <tr>
                  <td>Драбовик:</td>
                  <td><?=$skills[2]/100?>/100%</td>
                </tr>
                <tr>
                  <td>Пистолет ТТ:</td>
                  <td><?=$skills[3]/100?>/100%</td>
                </tr>
                <tr>
                  <td>MP5:</td>
                  <td><?=$skills[4]/100?>/100%</td>
                </tr>
                <tr>
                  <td>Винтовка M4A1:</td>
                  <td><?=$skills[5]/100?>/100%</td>
                </tr>
                <tr>
                  <td>Автомат AK-47:</td>
                  <td><?=$skills[6]/100?>/100%</td>
                </tr>
              </table>
            </div>
          </div>
          <div class="inner-container inner-margin">
            <div class="inner-title">
              <h2>Тех. информация</h2>
            </div>
            <div class="inner-body inner-border">
              <table class="player-stat">
                <tr>
                  <td>Регистрация:</td>
                  <td><?=$data[$ucp_table_settings['datareg']]?></td>
                </tr>
                <tr>
                  <td>IP регистрации:</td>
                  <td><?=$data[$ucp_table_settings['regip']]?></td>
                </tr>
                <tr>
                  <td>IP входа:</td>
                  <td><?=$data[$ucp_table_settings['last_ip']]?></td>
                </tr>
                <tr>
                  <td>Последний вход:</td>
                  <td><?=$data[$ucp_table_settings['last_date']]?></td>
                </tr>
              </table>
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
  <script src="/public/main/js/main.js"></script>
  <script src="/public/main/js/form.js"></script>
  <script src="/public/main/js/aos.js"></script>
  <script>
    AOS.init();
  </script>
</body>

</html>
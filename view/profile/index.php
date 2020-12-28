<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Личный кабинет - <?php echo $ucp_settings['s_title']?></title>
    <link rel="shortcut icon" href="<?php echo $ucp_settings['s_favicon']?>" type="image/png">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

<!--    <link rel="stylesheet" type="text/css" href="/public/main/css/style.css">-->
    <link rel="stylesheet" type="text/css" href="/public/main/css/main.css">
    <link rel="stylesheet" type="text/css" href="/public/main/css/profile.css">
    <link rel="stylesheet" type="text/css" href="/public/main/css/fonts.css">
    <link rel="stylesheet" type="text/css" href="/public/main/css/media.css">
    <link rel="stylesheet" type="text/css" href="/public/main/css/aos.css">
    <link rel="stylesheet" type="text/css" href="/public/main/css/anim.css">
    <!-- new year balls -->
    <link rel="stylesheet" href="/public/main/libs/newyear/style.css">
    <link rel="stylesheet" type="text/css" href="https://sweetalert.js.org/assets/sweetalert/sweetalert.min.js">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">


</head>
<body class="login-page">
<?php include "view/common/topmenu.php"; ?>



<div class="heading">
    <div>
        <h1>Личный кабинет</h1>
        <div class="breaker"></div>
    </div>
    <img src="/public/main/img/dots.svg" alt="">
</div>
<?php
$data = GetUserData();

?>
<section class="profile">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-sm-12 profile__container d-flex">
                <div class="profile__content">
                    <div class="col-lg-4 col-sm-12">
                        <div class="user__skin__content d-flex">
                            <img src="/public/main/img/skins/<?=$data[$ucp_table_settings['skin']];?>.png" class="user__skin__image" >
                            <div class="user__name__content">
                                 <h1><?=$data[$ucp_settings['s_title']]?></h1>
                                <div class="block"><?php FixName($data[$ucp_table_settings['name']]) ?></div>
                                <div class="block">#<?php echo $data[$ucp_table_settings['id']] ?></div>
                            </div>
                        </div>
                        <div class="user__navblock__list">
                            <a class="active tablinks" onclick="openTabs(event, 'stats')" id="defaultOpen"><div class="user__navblock">Статистика</div></a>
                            <a class="tablinks" onclick="openTabs(event, 'skill')"><div class="user__navblock">Навыки</div></a>
                            <a class="tablinks" onclick="openTabs(event, 'licence')"><div class="user__navblock">Лицензии</div></a>
                            <a class="tablinks" onclick="openTabs(event, 'settings')"><div class="user__navblock">Настройки</div></a>
                            <?php
                            global $db;
                            $name = $_SESSION['NickName'];
                            $sql = "SELECT * FROM `admin` WHERE `aName` = '{$name}' LIMIT 1";
                            $statement = $db->prepare($sql);
                            $statement->execute ();
                            if($statement->rowCount()) echo'<a href="/admin/"><div class="user__navblock">Админ панель</div></a>';
                            ?>

                            <a href="/profile/roulette"><div class="user__navblock">Рулетка</div></a>
                            <a href="/profile/exit"><div class="user__navblock">Выйти</div></a>

                        </div>
                    </div>

                    <div class="col-lg-8 col-sm-12">
                        <div class="user__header__table">
                            <table>
                                <tbody>
                                <tr>
                                    <th>Последний вход</th>
                                    <th>Последний IP</th>
                                    <th>Состояние</th>
                                </tr>
                                <tr>
                                    <td><?php echo $data[$ucp_table_settings['last_date']]?></td>
                                    <td><?php echo $data[$ucp_table_settings['last_ip']]?></td>
                                    <td><?=($data[$ucp_table_settings['online']])?"В игре":"Не в игре";?></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>



                        <div class="user__stats tabcontent" id="stats">
                            <!-- <div class="user__stats"> -->
                            <?php
                                global $db;
                                $sql = "SELECT * FROM `frac` WHERE `oID` = '{$data[$ucp_table_settings['member']]}' LIMIT 1";
                                $statement = $db->prepare($sql);
                                $statement->execute ();
                                if($statement->rowCount()) {
                                    $member = $statement->fetch();
                                    $rank = 'oRangName' . $data[$ucp_table_settings['rank']];
                                }?>
                            <ul class="left">
                                <li>Имя<span><?=FixName($data[$ucp_table_settings['name']])?></span></li>
                                <li>Уровень<span><?=$data[$ucp_table_settings['level']]?></span></li>
                                <li>Уровень розыска<span><?=$data[$ucp_table_settings['wanted']]?></span></li>
                                <li>Наличные деньги<span><?=$data[$ucp_table_settings['cash']]?>руб.</span></li>
                                <li>Банковский счет<span><?=$data[$ucp_table_settings['bank']];?>руб.</span></li>
                                <li>На карте<span><?=$data[$ucp_table_settings['card']];?>руб.</span></li>
                                <li>Redwichi на счету:<span><?=$data[$ucp_table_settings['donate']]?>руб.</span></li>

                            </ul>
                            <ul class="right">
                                <li>Номер телефона<span><?=($data[$ucp_table_settings['phone']] == 0)?"Отсутствует":$data[$ucp_table_settings['phone']];?></span></li>
                                <li>Пол<span><?=($data[$ucp_table_settings['sex']])?"Женский":"Мужской";?></span></li>
<!--                                <li>Бизнес<span>--><?php //if($data[$ucp_table_settings['biz']] != -1) echo "#". $data[$ucp_table_settings['biz']]; else echo "Отсутствует"; ?><!--</span></li>-->
                                <li>Дом<span><?=($data[$ucp_table_settings['house']] <= 0)?"Отсутствует":"#".$data[$ucp_table_settings['house']];?></span></li>
                                <li>Домашний транспорт<span>Отсутствует</span></li>
                                <li>Подработка<span>Отсутствует</span></li>
                                <li>Фракция<span><?=($member['oName']=='')?"Отсутствует":$member['oName'];?></span></li>
                                <li>Ранг<span><?=($member[$rank]=='')?"Отсутствует":$member[$rank];?></span></li>


                            </ul>
                            <!-- </div> -->
                        </div>
                        <?php
                        $skills = EncodeGunSkills($data[$ucp_table_settings['gunskills']],'|');
                        $licence = EncodeLicence($data[$ucp_table_settings['licence']],'|');
                        ?>
                        <div class="tabcontent " id="skill">
                            <div class="user__skill__gun">
                                <div >
                                    <div class="icon"><img src="/public/main/img/m4.png" alt=""></div>
                                    <div class="progress-gun"><i style="width: <?=$skills[5]/100?>%"></i></div>
                                    <div class="size-gun"><?=$skills[5]/100?>%</div>
                                </div>
                                <div >
                                    <div class="icon"><img src="/public/main/img/ak47.png" alt=""></div>
                                    <div class="progress-gun"><i style="width: <?=$skills[6]/100?>%"></i></div>
                                    <div class="size-gun"><?=$skills[6]/100?>%</div>
                                </div>
                                <div >
                                    <div class="icon"><img src="/public/main/img/sdpistol.png" alt=""></div>
                                    <div class="progress-gun"><i style="width: <?=$skills[3]/100?>%"></i></div>
                                    <div class="size-gun"><?=$skills[3]/100?>%</div>
                                </div>


                                <div >
                                    <div class="icon"><img src="/public/main/img/deagle.png" alt=""></div>
                                    <div class="progress-gun"><i style="width: <?=$skills[1]/100?>"></i></div>
                                    <div class="size-gun"><?=$skills[1]/100?>%</div>
                                </div>


                                <div >
                                    <div class="icon"><img src="/public/main/img/shotgun.png" alt=""></div>
                                    <div class="progress-gun"><i style="width: <?=$skills[2]/100?>%"></i></div>
                                    <div class="size-gun"><?=$skills[2]/100?>%</div>
                                </div>


                                <div >
                                    <div class="icon"><img src="/public/main/img/mp5.png" alt=""></div>
                                    <div class="progress-gun"><i style="width: <?=$skills[4]/100?>%"></i></div>
                                    <div class="size-gun"><?=$skills[4]/100?>%</div>
                                </div>


                                <div >
                                    <div class="icon"><img src="/public/main/img/sniper.png" alt=""></div>
                                    <div class="progress-gun"><i style="width: <?=$skills[0]/100?>%"></i></div>
                                    <div class="size-gun"><?=$skills[0]/100?>%</div>
                                </div>
                            </div>
                        </div>
                        <div class="tabcontent " id="licence">
                            <div class="user__licence">
                                <ul class="left">
                                    <li>Лицензия категории A<span><?=($licence[0])?'присутствует':'отсутвует';?></span></li>
                                    <li>Лицензия категории B<span><?=($licence[1])?'присутствует':'отсутвует';?></span></li>
                                    <li>Лицензия категории C<span><?=($licence[2])?'присутствует':'отсутвует';?></span></li>
                                    <li>Лицензия категории D<span><?=($licence[3])?'присутствует':'отсутвует';?></span></li>
                                    <li>Лицензия на водный транспорт<span><?=($licence[4])?'присутствует':'отсутвует';?></span></li>
                                    <li>Лицензия на воздушный транспорт<span><?=($licence[5])?'присутствует':'отсутвует';?></span></li>
                                    <li>Лицензия на оружие:<span><?=($licence[5])?'присутствует':'отсутвует';?></span></li>
                                    <li>Лицензия на бизнес:<span><?=($licence[6])?'присутствует':'отсутвует';?></span></li>
                                </ul>
                        </div>
                        <div class="tabcontent user__settings" id="settings" style="display: none;">
                            <div class="settings-block">
                                <div class="container-form">
                                    <form method="POST" action="/engine/obr/profile.php">

                                        <div class="form-group row">
                                            <label for="text" class="col-sm-4 col-form-label">Новый пароль:</label>
                                            <div class="col-sm-8">
                                                <input name="new_password_1" type="text" class="form-control text" placeholder="Введите новый пароль">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="text" class="col-sm-4 col-form-label">Повтор нового пароля:</label>
                                            <div class="col-sm-8">
                                                <input name="new_password_2" type="text" class="form-control text" placeholder="Повторите новый пароль">
                                            </div>
                                        </div>


                                        <input type="hidden" name="action" value="change_password">

                                        <div class="row justify-content-md-center mt-1">
                                            <div class="col-md-auto">
                                                <div class="form-group">
                                                    <button class="btn btn-gradient" type="submit" > Сменить</button>
                                                </div>
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
</section>

<footer>
    <?php include "view/common/footer.php"; ?>
</footer>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" ></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="/public/main/js/form.js" ></script>
<!--<script src="/public/main/js/knob.js" ></script>-->
<script src="/public/main/js/main.js" ></script>
<script src="/public/main/js/profile.js" ></script>


</body>
</html>
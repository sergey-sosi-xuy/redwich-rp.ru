<?php require_once('toppanel.php');




// $ticket = $db->prepare("SELECT * FROM tickets WHERE `t_status` != 2");
// $ticket->execute ();
?>

<div class="main-menu menu-fixed menu-light menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="main-menu-content">
      <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
        <li class=" navigation-header">
          <span>Основное</span><i class=" ft-minus" data-toggle="tooltip" data-placement="right"
          data-original-title="Apps"></i>
        </li>
        <li class=" nav-item"><a href="/admin/"><i class="fas fa-home"></i><span class="menu-title" data-i18n="">Главное</span></a>
        </li>
        <li class=" nav-item"><a href="/admin/roulette"><i class="fas fa-money-bill-wave"></i><span class="menu-title" data-i18n="">Рулетка</span></a>
        </li>
          <li class=" nav-item"><a href="/admin/admins"><i class="fas fa-users"></i><span class="menu-title" data-i18n="">Администаторы</span></a>
          </li>
        <li class=" nav-item"><a href="/admin/news"><i class="fas fa-newspaper"></i><span class="menu-title" data-i18n="">Новости</span></a>
        </li>
        <li class=" nav-item"><a href="/admin/server"><i class="fas fa-list"></i><span class="menu-title" data-i18n="">Сервера</span></a>
        </li>
      </ul>
    </div>
  </div>
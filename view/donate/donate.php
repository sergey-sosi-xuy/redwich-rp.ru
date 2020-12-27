<?php
include '../../engine/config/database.php';
include '../../engine/functions.php';
include '../common/UnitPay.php';

$data = $_POST;
$min = $ucp_settings['s_minDonate'];
$unitPay = new UnitPay($ucp_settings['s_urlUnitPay'], $ucp_settings['s_secretWord']);
if(intval($data['sum']) >= $min){
    $sql = "SELECT * FROM `{$ucp_table_settings['table']}` WHERE `{$ucp_table_settings['name']}` = '{$data['nick']}' LIMIT 1";
    $statement = $db->prepare($sql);
    $statement->execute ();
    if($statement->rowCount())
    {
        $user = $statement->fetch();
        $currency = "RUB";
        $desc = "Донат";
        $locale = 'ru';
        $url = $unitPay->form($ucp_settings['s_publicKey'],$data['sum'],$data['nick'],$desc,$currency,$locale);
//        $url = GotoPay($data['nick'], $data['sum'],  $ucp_settings['s_publicKey'], $ucp_settings['s_secretWord']);

        message("success","Успех!", "Сейчас вас перенаправит на страницу оплаты!",$url);
    }
    else{
        message("warning","Ошибка!", "Такого пользователя нет");
    }
}
else message("warning","Ошибка!", "Минимальная сумма пополнения "+$min+" руб.");




?>
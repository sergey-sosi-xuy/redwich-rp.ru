<?php
include "table.php";
$host = 'localhost';//
$dbname = 'redwich-rp';
$user = 'root';
$pass = 'root';
// $host = 'localhost';//
// $dbname = 'u1149946_site';//
// $user = 'u1149946_andrei';
// $pass = 'Fylhtq-2545864';//
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$dbname;charset=$charset";
$opt = [
    //PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
try {
    $db = new PDO($dsn, $user, $pass, $opt);
} catch (PDOException $e) {
    die('Подключение не удалось: ' . $e->getMessage());
}

$sql = "SELECT * FROM `ucp_settings`";
$statement = $db->prepare($sql);
$statement->execute ();
$ucp_settings = $statement->fetch();



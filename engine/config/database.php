<?php
include "table.php";
//$sitebase = [
//    "host" => "127.0.0.1",
//    "user" => "root",
//    "password" => "root",
//    "dbname" => "redwich-rp"
//];
$sitebase = [
    "host" => "79.137.101.30",
    "user" => "gs78131",
    "password" => "redwich-2545864",
    "dbname" => "gs78131"
];
$charset = 'utf8';
$host = $sitebase['host'];
$dbname = $sitebase['dbname'];
$dsn = "mysql:host=$host;dbname=$dbname;charset=$charset";
$opt = [
    //PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
try {
    $db = new PDO($dsn, $sitebase['user'], $sitebase['password'], $opt);
} catch (PDOException $e) {
    die('Подключение не удалось: ' . $e->getMessage());
}

$sql = "SELECT * FROM `ucp_settings`";
$statement = $db->prepare($sql);
$statement->execute ();
$ucp_settings = $statement->fetch();



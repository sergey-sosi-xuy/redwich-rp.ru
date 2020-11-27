-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 25 2020 г., 19:31
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `redwich-rp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `acc_player`
--

CREATE TABLE `acc_player` (
  `ID` int(11) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Email` varchar(64) NOT NULL DEFAULT 'None',
  `EmailAuth` int(1) NOT NULL DEFAULT 0,
  `Referal` varchar(24) NOT NULL DEFAULT 'The Stats',
  `RegIP` varchar(16) NOT NULL,
  `DataReg` varchar(30) NOT NULL DEFAULT '00.00.0000 - 00:00:00',
  `LastIP` varchar(16) NOT NULL,
  `LastData` varchar(30) NOT NULL DEFAULT '00.00.0000 - 00:00:00',
  `Online` int(1) NOT NULL DEFAULT 0,
  `Spawn` int(2) NOT NULL DEFAULT 1,
  `Pos_X` float NOT NULL DEFAULT 0,
  `Pos_Y` float NOT NULL DEFAULT 0,
  `Pos_Z` float NOT NULL DEFAULT 0,
  `Pos_A` float NOT NULL DEFAULT 0,
  `Interior` int(4) NOT NULL DEFAULT 0,
  `World` int(4) NOT NULL DEFAULT 0,
  `Sex` int(1) NOT NULL DEFAULT 0,
  `Skin` int(3) NOT NULL DEFAULT 0,
  `Age` int(3) NOT NULL DEFAULT 0,
  `Exp` int(4) NOT NULL DEFAULT 0,
  `Level` int(5) NOT NULL DEFAULT 0,
  `Job` int(5) NOT NULL DEFAULT 0,
  `Money` int(9) NOT NULL DEFAULT 15000,
  `Bank` int(11) NOT NULL DEFAULT 0,
  `PayMoney` int(11) NOT NULL DEFAULT 0,
  `Donat` int(5) NOT NULL DEFAULT 0,
  `Mins` int(2) NOT NULL DEFAULT 0,
  `Health` float NOT NULL DEFAULT 100,
  `Zakon` int(3) NOT NULL DEFAULT 0,
  `Wanted` int(1) NOT NULL DEFAULT 0,
  `Voennik` int(1) NOT NULL DEFAULT 0,
  `Lic` varchar(20) NOT NULL DEFAULT '0|0|0|0|0|0|0|0',
  `Mute` int(1) NOT NULL DEFAULT 0,
  `MuteTime` int(11) NOT NULL DEFAULT 0,
  `MuteOffReason` varchar(56) NOT NULL DEFAULT 'NoneMute',
  `Jail` int(1) NOT NULL DEFAULT 0,
  `JailTime` int(11) NOT NULL DEFAULT 0,
  `JailOffReason` varchar(56) NOT NULL DEFAULT 'NoneJail',
  `Warn` int(1) NOT NULL DEFAULT 0,
  `WarnTime` int(10) NOT NULL DEFAULT 0,
  `WarnOffReason` varchar(56) NOT NULL DEFAULT 'NoneWarn',
  `Vip` int(1) NOT NULL DEFAULT 0,
  `VipTime` int(10) NOT NULL DEFAULT 0,
  `Pasport` int(1) NOT NULL DEFAULT 0,
  `Phone` int(1) NOT NULL DEFAULT 0,
  `SimCard` int(11) NOT NULL DEFAULT 0,
  `PhoneMoney` int(9) NOT NULL DEFAULT 0,
  `CheckCode` int(1) NOT NULL DEFAULT 0,
  `Code` int(4) NOT NULL DEFAULT 0,
  `Google` int(1) NOT NULL DEFAULT 0,
  `GoogleAuth` varchar(17) DEFAULT NULL,
  `Settings` varchar(20) NOT NULL DEFAULT '1|1|1|1|1|1|1',
  `InterSettings` varchar(20) NOT NULL DEFAULT '1|1|1|1|1|1|1|1|1',
  `Enhancement` varchar(20) NOT NULL DEFAULT '0|0|0|0',
  `WalkStyle` int(2) NOT NULL DEFAULT 0,
  `TextStyle` int(1) NOT NULL DEFAULT 0,
  `MoneyCase` int(1) NOT NULL DEFAULT 0,
  `Kolokol` int(1) NOT NULL DEFAULT 0,
  `DamageInfo` int(1) NOT NULL DEFAULT 0,
  `MaskStatus` int(1) NOT NULL DEFAULT 0,
  `PasswordStatus` int(1) NOT NULL DEFAULT 0,
  `SpawnStatus` int(1) NOT NULL DEFAULT 0,
  `FreezeInt` int(1) NOT NULL DEFAULT 0,
  `Family` int(3) NOT NULL DEFAULT 0,
  `FamilyData` varchar(32) NOT NULL DEFAULT '00.00.0000 - 00:00:00',
  `Frac` int(5) NOT NULL DEFAULT 0,
  `FracLeader` int(5) NOT NULL DEFAULT 0,
  `FracData` varchar(30) NOT NULL DEFAULT '00.00.0000 - 00:00:00',
  `FracRang` int(5) NOT NULL DEFAULT 0,
  `FracWarn` int(5) NOT NULL DEFAULT 0,
  `NewName` varchar(24) NOT NULL DEFAULT 'New Name',
  `StatusNewName` int(2) NOT NULL DEFAULT 0,
  `SkillGun` varchar(40) NOT NULL DEFAULT '0|0|0|0|0|0|0',
  `ShtrafMVD` int(5) NOT NULL DEFAULT 0,
  `ShtrafPdd` int(5) NOT NULL DEFAULT 0,
  `House` int(3) NOT NULL DEFAULT 0,
  `Biz` int(5) NOT NULL DEFAULT 0,
  `TCompany` int(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `acc_player`
--

INSERT INTO `acc_player` (`ID`, `Name`, `Password`, `Email`, `EmailAuth`, `Referal`, `RegIP`, `DataReg`, `LastIP`, `LastData`, `Online`, `Spawn`, `Pos_X`, `Pos_Y`, `Pos_Z`, `Pos_A`, `Interior`, `World`, `Sex`, `Skin`, `Age`, `Exp`, `Level`, `Job`, `Money`, `Bank`, `PayMoney`, `Donat`, `Mins`, `Health`, `Zakon`, `Wanted`, `Voennik`, `Lic`, `Mute`, `MuteTime`, `MuteOffReason`, `Jail`, `JailTime`, `JailOffReason`, `Warn`, `WarnTime`, `WarnOffReason`, `Vip`, `VipTime`, `Pasport`, `Phone`, `SimCard`, `PhoneMoney`, `CheckCode`, `Code`, `Google`, `GoogleAuth`, `Settings`, `InterSettings`, `Enhancement`, `WalkStyle`, `TextStyle`, `MoneyCase`, `Kolokol`, `DamageInfo`, `MaskStatus`, `PasswordStatus`, `SpawnStatus`, `FreezeInt`, `Family`, `FamilyData`, `Frac`, `FracLeader`, `FracData`, `FracRang`, `FracWarn`, `NewName`, `StatusNewName`, `SkillGun`, `ShtrafMVD`, `ShtrafPdd`, `House`, `Biz`, `TCompany`) VALUES
(1, 'Andrei_Morozov', '802cb311ce3ef4ac13525c77d8158106', 'redwich-rp@mail.ru', 0, 'The Stats', '85.140.24.203', '29.09.2020 21:22:07', '85.140.17.150', '21.10.2020 - 19:07:42', 0, 2, 595.451, 1623.08, -88.63, 270, 1, 18, 1, 294, 23, 24, 30, 0, 38755000, 23952502, 0, 1000000, 52, 100, 12, 0, 1, '1|1|1|1|1|1|1|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneMute', 0, 0, 1, 1, 777777, 250000, 0, 2502, 1, '7X2UUXHZDJ2LT3AO', '1|1|1|1|1|1|1|0', '1|1|1|1|1|1|1|1|1', '1|1|1|1', 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, '20.10.2020 - 13:55:58', 3, 3, '21.10.2020 - 17:47:42', 10, 0, 'New Name', 0, '10000|10000|10000|10000|10000|10000|100', 0, 0, 18, 0, 0),
(2, 'Nikita_Founder', 'e10adc3949ba59abbe56e057f20f883e', 'ntfhnftsng@gmail.com', 0, 'The Stats', '185.218.200.1', '29.09.2020 21:34:12', '85.140.13.169', '06.10.2020 - 11:48:42', 0, 1, 2352.22, -580.039, 1001.5, 267.734, 1, 1, 1, 102, 0, 0, 0, 1, 15000, 0, 0, 0, 15, 95, 0, 0, 0, '1|1|1|1|1|1|1|0', 0, 0, 'NoneMute', 0, 0, 'NoneMute', 0, 0, 'NoneMute', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(3, 'Ayaz_Sharipov', 'b0f8b3e58f093359fe1af416b5ea8ed6', 'mmm@gmail.com', 0, 'The Stats', '62.133.162.168', '03.10.2020 15:22:22', '62.133.162.168', '03.10.2020 - 16:33:36', 0, 1, 2355.97, -584.835, 1001.5, 57.6542, 1, 1, 1, 294, 0, 0, 0, 0, 15000, 0, 0, 0, 27, 100, 0, 0, 0, '1|1|1|1|1|1|1|0', 0, 0, 'NoneMute', 0, 0, 'NoneMute', 0, 0, 'NoneMute', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(4, 'Tihon_Neuman', 'c948e23d0ccb59dac192912b0d46fbbc', 'dmitrii.sadkov10@mail.ru', 0, 'The Stats', '82.208.124.215', '06.10.2020 14:29:21', '82.208.124.215', '06.10.2020 14:29:21', 0, 1, 0, 0, 0, 0, 0, 0, 1, 104, 0, 0, 0, 0, 15000, 0, 0, 0, 0, 100, 0, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(5, 'Maksud_Jermy', '4297f44b13955235245b2497399d7a93', '123213gmail.ru', 0, 'The Stats', '46.8.241.112', '06.10.2020 20:45:11', '46.8.241.112', '06.10.2020 20:45:11', 0, 1, 0, 0, 0, 0, 0, 0, 1, 14, 0, 0, 0, 0, 15000, 0, 0, 0, 0, 100, 0, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(6, 'Aleksandr_Melkov', '64fdcc616b8857f798b174215a5c9d9e', 'dsadsadsada@.ru', 0, 'The Stats', '46.216.168.190', '06.10.2020 20:46:59', '46.53.250.94', '16.10.2020 - 21:41:13', 0, 1, 2006.5, 1429.26, 26.149, 261.922, 0, 0, 1, 294, 0, 4, 10, 0, 15000, 102500, 0, 0, 25, 90, 100, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneMute', 0, 0, 'NoneMute', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NULL', '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '', 0, 0, 'New Name', 0, '10000|10000|10000|10000|10000|10000|1000', 0, 0, 0, 0, 0),
(7, 'Maksim_Ivanov', '927846988e0b66c328cb327f3059260d', 'mad-svetlana@mail.ru', 0, 'The Stats', '95.31.174.196', '17.10.2020 13:54:29', '95.31.174.196', '17.10.2020 13:54:29', 0, 1, 0, 0, 0, 0, 0, 0, 1, 14, 0, 0, 0, 0, 15000, 0, 0, 0, 0, 100, 0, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(8, 'Dmitriy_Korolewskiy', '9376a81ed6eff08f555c88bdd9ce408a', 'Dimma037@gmail.com', 0, 'The Stats', '185.86.115.67', '18.10.2020 17:32:08', '185.86.115.67', '18.10.2020 - 17:38:34', 0, 3, 1911.52, -2206.24, 11.39, 89.988, 0, 0, 1, 14, 0, 2, 10, 1, 15000, 55000, 0, 0, 47, 100, 1, 0, 0, '1|1|1|1|1|1|1|1', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NULL', '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 6, 0, '', 1, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(9, 'Samir_Astro', 'ae6b546897d9e87b16ee91252578a1c7', 'gnrhubgr@mail.ru', 0, 'The Stats', '176.215.114.254', '18.10.2020 17:36:53', '176.215.114.254', '18.10.2020 - 18:16:58', 0, 1, 2200.16, -1658.83, 21.959, 176.201, 0, 0, 1, 22, 0, 2, 10, 0, 15000, 43000, 0, 0, 24, 81, 1, 3, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NULL', '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(10, 'Gosha_Pashkov', '901cd730ee8d9f78f627f404911283fa', 'duywrh@gmail.com', 0, 'The Stats', '193.56.148.111', '18.10.2020 20:22:01', '193.56.148.111', '18.10.2020 20:22:01', 0, 1, 0, 0, 0, 0, 0, 0, 1, 21, 0, 0, 0, 0, 15000, 0, 0, 0, 0, 100, 0, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(11, 'Misha_Tarasov', '1ef0cbbb1312698065ceb7f7e0f817da', 'Alianceloda@i.ua', 0, 'The Stats', '93.183.251.167', '18.10.2020 23:45:19', '93.183.251.167', '18.10.2020 23:45:19', 0, 1, 0, 0, 0, 0, 0, 0, 1, 14, 0, 0, 0, 0, 15000, 0, 0, 0, 0, 100, 0, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(12, 'Danil_Nogan', '93279e3308bdbbeed946fc965017f67a', 'aDW@adw.wda', 0, 'The Stats', '176.59.65.2', '18.10.2020 23:51:52', '176.59.65.2', '19.10.2020 - 00:34:35', 0, 1, 0, 0, 0, 0, 0, 0, 1, 14, 0, 0, 10, 0, 15000, 0, 0, 0, 12, 100, 100, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(13, 'Dantes_Dangeres', '72a54cb3e30d734a71afbd553258a557', 'egorchannel1378@gmail.com', 0, 'The Stats', '178.217.208.14', '19.10.2020 00:56:11', '178.217.208.14', '19.10.2020 - 09:34:05', 0, 1, 2321.88, -1805.41, 22.454, 44.633, 0, 0, 1, 21, 0, 0, 10, 0, 515000, 0, 0, 0, 18, 100, 0, 0, 0, '1|1|1|1|1|1|1|1', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NULL', '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(14, 'Ali_Gadban', '603805e84e28bd1438c83fedf7feb541', 'Andrei_Morozow', 0, 'The Stats', '188.163.45.27', '19.10.2020 11:27:18', '188.163.45.27', '19.10.2020 - 13:38:47', 1, 1, 1390.92, 1550.85, 139.971, 334.765, 0, 10, 1, 20, 0, 3, 7, 0, 15000, 21250, 0, 0, 13, 100, 100, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NULL', '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(15, 'Dmitriy_Sadkov', 'c948e23d0ccb59dac192912b0d46fbbc', 'dmitrii.sadkov09@mail.ru', 0, 'The Stats', '82.208.124.215', '20.10.2020 12:09:32', '82.208.124.215', '20.10.2020 - 12:24:46', 0, 1, 0, 0, 0, 0, 0, 0, 1, 104, 0, 0, 20, 0, 10000, 0, 0, 0, 33, 100, 100, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '0', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0),
(16, 'Andrey_Mixov', 'e10adc3949ba59abbe56e057f20f883e', 'ldd@gmail.cokm', 0, 'The Stats', '195.138.94.241', '20.10.2020 22:46:40', '195.138.94.241', '20.10.2020 22:46:40', 0, 1, 0, 0, 0, 0, 0, 0, 1, 14, 0, 0, 0, 0, 15000, 0, 0, 0, 0, 100, 0, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 'NoneMute', 0, 0, 'NoneJail', 0, 0, 'NoneWarn', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '1|1|1|1|1|1|1', '1|1|1|1|1|1|1|1|1', '0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '00.00.0000 - 00:00:00', 0, 0, '00.00.0000 - 00:00:00', 0, 0, 'New Name', 0, '0|0|0|0|0|0|0', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `aID` int(11) NOT NULL,
  `aName` varchar(24) NOT NULL DEFAULT 'The Stats',
  `aPassword` varchar(40) NOT NULL DEFAULT 'NoneQwerty',
  `aLevel` int(1) NOT NULL DEFAULT 0,
  `aData` varchar(30) NOT NULL DEFAULT '00-00-0000 | 00:00:00',
  `aPut` varchar(24) NOT NULL DEFAULT 'The Stats',
  `aLastData` varchar(30) NOT NULL DEFAULT '00-00-0000 | 00:00:00',
  `aVigovor` int(1) NOT NULL DEFAULT 0,
  `aReputacion` int(5) NOT NULL DEFAULT 0,
  `aPrefix` varchar(12) NOT NULL DEFAULT 'NoPrefix',
  `aSetting` varchar(20) NOT NULL DEFAULT '1|1|1|1|1|1|0|1',
  `aOtvet` int(5) NOT NULL DEFAULT 0,
  `aMute` int(5) NOT NULL DEFAULT 0,
  `aKick` int(5) NOT NULL DEFAULT 0,
  `aJail` int(5) NOT NULL DEFAULT 0,
  `aWarn` int(5) NOT NULL DEFAULT 0,
  `aBan` int(5) NOT NULL DEFAULT 0,
  `aBanIP` int(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`aID`, `aName`, `aPassword`, `aLevel`, `aData`, `aPut`, `aLastData`, `aVigovor`, `aReputacion`, `aPrefix`, `aSetting`, `aOtvet`, `aMute`, `aKick`, `aJail`, `aWarn`, `aBan`, `aBanIP`) VALUES
(1, 'Nikita_Founder', 'NoneQwerty', 9, '06.10.2020 - 11:49:31', 'Sustem', '00-00-0000 | 00:00:00', 0, 0, 'NoPrefix', '1|1|1|1|1|1|0|1', 0, 0, 0, 0, 0, 0, 0),
(3, 'Aleksandr_Melkov', 'e10adc3949ba59abbe56e057f20f883', 9, '06.10.2020 - 20:47:48', 'Andrei_Morozov', '06.10.2020 - 21:15:12', 0, 0, 'NoPrefix', '1|1|1|1|1|1|0|1', 0, 0, 0, 0, 0, 0, 0),
(5, 'Dmitriy_Korolewskiy', 'NoneQwerty', 9, '18.10.2020 - 17:34:19', 'Andrei_Morozov', '00-00-0000 | 00:00:00', 0, 0, 'NoPrefix', '1|1|1|1|1|1|0|1', 0, 0, 0, 0, 0, 0, 0),
(11, 'Dmitriy_Sadkov', 'c948e23d0ccb59dac192912b0d46fbbc', 8, '20.10.2020 - 12:13:40', 'Andrei_Morozov', '20.10.2020 - 12:25:33', 0, 0, 'NoPrefix', '1|1|1|1|1|1|0|1', 0, 0, 0, 0, 0, 0, 0),
(8, 'Danil_Nogan', '93279e3308bdbbeed946fc965017f67a', 5, '19.10.2020 - 00:26:27', 'Andrei_Morozov', '19.10.2020 - 00:34:50', 0, 0, 'NoPrefix', '1|1|1|1|1|1|0|1', 0, 0, 0, 0, 0, 0, 0),
(10, 'Andrei_Morozov', '802cb311ce3ef4ac13525c77d8158106', 9, '20.10.2020 - 11:57:11', 'Sustem', '21.10.2020 - 19:07:50', 0, 0, 'NoPrefix', '1|1|1|1|1|1|1|1', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_admin`
--

CREATE TABLE `ucp_admin` (
  `a_id` int(11) NOT NULL,
  `a_admin` varchar(24) NOT NULL,
  `a_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ucp_admin`
--

INSERT INTO `ucp_admin` (`a_id`, `a_admin`, `a_pass`) VALUES
(1, 'San4ela', '123456');

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_category_roulette`
--

CREATE TABLE `ucp_category_roulette` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ucp_category_roulette`
--

INSERT INTO `ucp_category_roulette` (`id`, `name`) VALUES
(1, 'Деньги'),
(2, 'Донат'),
(3, 'Авто'),
(4, 'Одежда'),
(5, 'Очки EXP'),
(6, 'Деньги x2');

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_drop_roulette`
--

CREATE TABLE `ucp_drop_roulette` (
  `p_number` int(11) NOT NULL,
  `p_user` varchar(24) NOT NULL DEFAULT '-',
  `p_data` varchar(50) NOT NULL DEFAULT '-',
  `p_value` int(11) NOT NULL DEFAULT 1,
  `p_id` int(11) NOT NULL DEFAULT 1,
  `p_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `ucp_drop_roulette`
--

INSERT INTO `ucp_drop_roulette` (`p_number`, `p_user`, `p_data`, `p_value`, `p_id`, `p_status`) VALUES
(1, 'Brandon_Ghost', '02.02.2019 03:00', 5, 5, 0),
(2, 'Brandon_Ghost', '02.02.2019 03:00', 76823, 1, 0),
(3, 'Brandon_Ghost', '02.02.2019 03:06', 297, 4, 0),
(4, 'Brandon_Ghost', '02.02.2019 03:07', 42924, 1, 0),
(5, 'Brandon_Ghost', '02.02.2019 03:07', 46, 4, 0),
(6, 'Aleksandr_Melkov', '22.08.2020 01:20', 61641, 1, 0),
(7, 'Aleksandr_Melkov', '22.08.2020 01:20', 53900, 1, 0),
(8, 'Aleksandr_Melkov', '22.08.2020 01:20', 98158, 1, 0),
(9, 'Aleksandr_Melkov', '22.08.2020 01:20', 5, 4, 0),
(10, 'Aleksandr_Melkov', '22.08.2020 01:24', 4, 5, 0),
(11, 'Aleksandr_Melkov', '22.08.2020 01:24', 297, 4, 0),
(12, 'Aleksandr_Melkov', '22.08.2020 01:24', 46, 4, 0),
(13, 'Aleksandr_Melkov', '22.08.2020 19:31', 46, 4, 0),
(14, 'Aleksandr_Melkov', '22.08.2020 19:31', 294, 4, 0),
(15, 'Aleksandr_Melkov', '22.08.2020 19:31', 297, 4, 0),
(16, 'Aleksandr_Melkov', '22.08.2020 19:31', 297, 4, 0),
(17, 'Aleksandr_Melkov', '22.08.2020 19:32', 2, 5, 0),
(18, 'Aleksandr_Melkov', '22.08.2020 19:32', 75354, 1, 0),
(19, 'Aleksandr_Melkov', '22.08.2020 19:32', 299, 4, 0),
(20, 'Aleksandr_Melkov', '22.08.2020 19:32', 46, 4, 0),
(21, 'Aleksandr_Melkov', '22.08.2020 19:35', 299, 4, 0),
(22, 'Aleksandr_Melkov', '22.08.2020 19:35', 5, 5, 0),
(23, 'Aleksandr_Melkov', '22.08.2020 19:35', 402, 3, 0),
(24, 'Aleksandr_Melkov', '22.08.2020 19:35', 415, 3, 0),
(25, 'Aleksandr_Melkov', '22.08.2020 19:35', 3, 5, 0),
(26, 'Aleksandr_Melkov', '22.08.2020 19:40', 5, 4, 0),
(27, 'Aleksandr_Melkov', '22.08.2020 19:40', 46, 4, 0),
(28, 'Aleksandr_Melkov', '22.08.2020 19:40', 90, 2, 0),
(29, 'Aleksandr_Melkov', '22.08.2020 19:41', 5, 5, 0),
(30, 'Aleksandr_Melkov', '22.08.2020 19:41', 4, 5, 0),
(31, 'Aleksandr_Melkov', '22.08.2020 19:41', 2, 5, 0),
(32, 'Aleksandr_Melkov', '22.08.2020 21:40', 297, 4, 0),
(33, 'Aleksandr_Melkov', '22.08.2020 21:47', 297, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_item_roulette`
--

CREATE TABLE `ucp_item_roulette` (
  `id` int(11) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `i_images` text NOT NULL,
  `i_category` int(11) NOT NULL,
  `i_change` int(11) NOT NULL,
  `i_start_rand` int(11) NOT NULL,
  `i_end_rand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ucp_item_roulette`
--

INSERT INTO `ucp_item_roulette` (`id`, `i_name`, `i_images`, `i_category`, `i_change`, `i_start_rand`, `i_end_rand`) VALUES
(1, 'Деньги', '/public/main/img/roulette/money.png', 1, 70, 10000, 100000),
(2, 'Infernus', '/public/main/img/roulette/car411.png', 3, 4, 411, 411),
(3, 'Скин #46', '/public/main/img/roulette/skin46.png', 4, 45, 46, 46),
(4, 'Донат', '/public/main/img/roulette/donate.png', 2, 50, 20, 100),
(5, 'Скин #294', '/public/main/img/roulette/skin294.png', 4, 40, 294, 294),
(6, 'Buffalo', '/public/main/img/roulette/car402.png', 3, 10, 402, 402),
(7, 'Скин #5', '/public/main/img/roulette/skin5.png', 4, 42, 5, 5),
(8, 'Очки EXP', '/public/main/img/roulette/time.png', 5, 70, 2, 5),
(9, 'Bobcat', '/public/main/img/roulette/car422.png', 3, 10, 422, 422),
(10, 'Скин #297', '/public/main/img/roulette/skin297.png', 4, 44, 297, 297),
(11, 'Cheetah', '/public/main/img/roulette/car415.png', 3, 8, 415, 415),
(12, 'Скин #299', '/public/main/img/roulette/skin299.png', 4, 39, 299, 299),
(13, 'Bullet', '/public/main/img/roulette/car541.png', 3, 5, 541, 541),
(14, 'BF Injection', '/public/main/img/roulette/car424.png', 3, 10, 424, 424),
(15, 'Super GT', '/public/main/img/roulette/car506.png', 3, 7, 506, 506);

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_news`
--

CREATE TABLE `ucp_news` (
  `n_id` int(11) NOT NULL,
  `n_title` varchar(150) NOT NULL,
  `n_text` text NOT NULL,
  `n_data` varchar(50) NOT NULL,
  `n_images` text NOT NULL,
  `n_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_servers`
--

CREATE TABLE `ucp_servers` (
  `s_id` int(11) NOT NULL,
  `s_ip` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_settings`
--

CREATE TABLE `ucp_settings` (
  `s_title` text NOT NULL,
  `s_favicon` text NOT NULL,
  `s_logo` text NOT NULL,
  `s_logo_footer` text NOT NULL,
  `s_md5` int(11) NOT NULL DEFAULT 0,
  `s_donate_cost` int(11) NOT NULL,
  `s_vk` text NOT NULL,
  `s_discord` text NOT NULL,
  `s_youtube` text NOT NULL,
  `s_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ucp_settings`
--

INSERT INTO `ucp_settings` (`s_title`, `s_favicon`, `s_logo`, `s_logo_footer`, `s_md5`, `s_donate_cost`, `s_vk`, `s_discord`, `s_youtube`, `s_about`) VALUES
('Redwich RolePlay', '/public/main/img/favicon.png', '/public/main/img/logo.png', '/public/main/img/logo.png', 1, 10, '=', '=', '=', 'На нашем сервере игры Grand Theft Auto Criminal Russia MultiPlayer вы сможете найти новый мир широких возможностей ролевой игры.\r\nЗдесь любой игрок сможет себя почувствовать частью игры, влиять на события, происходящие в городе, общаться с другими людьми,\r\nработать и развлекаться. Играя на сервере вы сможете воплотить в жизнь любую мечту, о которой только мечтаете в реальной жизни.\r\nЗдесь можно стать военным, полицеским, служить в ФСБ, медиком, инструктором, заниматься новостями, стать бизнесменом или просто рабочим,\r\nа выиграв голосование, можно даже стать мэром городе. Если не нравятся официальные профессии, можно вступить в банду, \r\nмафию и в конечном счете стать уважаемым человеком в городе, которого будут слушаться все, включая мэра и полицию. \r\nЭто далеко не все варианты, которые доступны для жизни в городе. Любой игрок сможет, по своему желанию, изменить позицию,попробовать себя в новой роли.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ucp_admin`
--
ALTER TABLE `ucp_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Индексы таблицы `ucp_category_roulette`
--
ALTER TABLE `ucp_category_roulette`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ucp_drop_roulette`
--
ALTER TABLE `ucp_drop_roulette`
  ADD PRIMARY KEY (`p_number`);

--
-- Индексы таблицы `ucp_item_roulette`
--
ALTER TABLE `ucp_item_roulette`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ucp_news`
--
ALTER TABLE `ucp_news`
  ADD PRIMARY KEY (`n_id`);

--
-- Индексы таблицы `ucp_servers`
--
ALTER TABLE `ucp_servers`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ucp_admin`
--
ALTER TABLE `ucp_admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `ucp_category_roulette`
--
ALTER TABLE `ucp_category_roulette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `ucp_drop_roulette`
--
ALTER TABLE `ucp_drop_roulette`
  MODIFY `p_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `ucp_item_roulette`
--
ALTER TABLE `ucp_item_roulette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `ucp_news`
--
ALTER TABLE `ucp_news`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `ucp_servers`
--
ALTER TABLE `ucp_servers`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

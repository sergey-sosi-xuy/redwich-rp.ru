-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 21 2020 г., 19:24
-- Версия сервера: 5.5.62-0+deb8u1
-- Версия PHP: 5.6.40-0+deb8u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gs78131`
--

-- --------------------------------------------------------

--
-- Структура таблицы `acc_connect`
--

CREATE TABLE `acc_connect` (
  `Name` varchar(24) NOT NULL DEFAULT 'The State',
  `LastIP` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  `LastData` varchar(30) NOT NULL DEFAULT '00.00.0000 - 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `acc_player`
--

CREATE TABLE `acc_player` (
  `ID` int(11) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Email` varchar(64) NOT NULL DEFAULT 'None',
  `EmailAuth` int(1) NOT NULL DEFAULT '0',
  `Referal` varchar(24) NOT NULL DEFAULT 'The Stats',
  `RegIP` varchar(16) NOT NULL,
  `DataReg` varchar(30) NOT NULL DEFAULT '00.00.0000 - 00:00:00',
  `LastIP` varchar(16) NOT NULL,
  `LastData` varchar(30) NOT NULL DEFAULT '00.00.0000 - 00:00:00',
  `Online` int(1) NOT NULL DEFAULT '0',
  `Spawn` int(2) NOT NULL DEFAULT '1',
  `Pos_X` float NOT NULL DEFAULT '0',
  `Pos_Y` float NOT NULL DEFAULT '0',
  `Pos_Z` float NOT NULL DEFAULT '0',
  `Pos_A` float NOT NULL DEFAULT '0',
  `Interior` int(4) NOT NULL DEFAULT '0',
  `World` int(4) NOT NULL DEFAULT '0',
  `Sex` int(1) NOT NULL DEFAULT '0',
  `Skin` int(3) NOT NULL DEFAULT '0',
  `Age` int(3) NOT NULL DEFAULT '0',
  `Exp` int(4) NOT NULL DEFAULT '0',
  `Level` int(5) NOT NULL DEFAULT '0',
  `Job` int(5) NOT NULL DEFAULT '0',
  `Money` int(9) NOT NULL DEFAULT '15000',
  `Bank` int(11) NOT NULL DEFAULT '0',
  `PayMoney` int(11) NOT NULL DEFAULT '0',
  `Donat` int(5) NOT NULL DEFAULT '0',
  `Mins` int(2) NOT NULL DEFAULT '0',
  `Health` float NOT NULL DEFAULT '100',
  `Zakon` int(3) NOT NULL DEFAULT '0',
  `Wanted` int(1) NOT NULL DEFAULT '0',
  `Voennik` int(1) NOT NULL DEFAULT '0',
  `Lic` varchar(20) NOT NULL DEFAULT '0|0|0|0|0|0|0|0',
  `Mute` int(1) NOT NULL DEFAULT '0',
  `MuteTime` int(11) NOT NULL DEFAULT '0',
  `MuteOffReason` varchar(56) NOT NULL DEFAULT 'NoneMute',
  `Jail` int(1) NOT NULL DEFAULT '0',
  `JailTime` int(11) NOT NULL DEFAULT '0',
  `JailOffReason` varchar(56) NOT NULL DEFAULT 'NoneJail',
  `Warn` int(1) NOT NULL DEFAULT '0',
  `WarnTime` int(10) NOT NULL DEFAULT '0',
  `WarnOffReason` varchar(56) NOT NULL DEFAULT 'NoneWarn',
  `Vip` int(1) NOT NULL DEFAULT '0',
  `VipTime` int(10) NOT NULL DEFAULT '0',
  `Pasport` int(1) NOT NULL DEFAULT '0',
  `Phone` int(1) NOT NULL DEFAULT '0',
  `SimCard` int(11) NOT NULL DEFAULT '0',
  `PhoneMoney` int(9) NOT NULL DEFAULT '0',
  `CheckCode` int(1) NOT NULL DEFAULT '0',
  `Code` int(4) NOT NULL DEFAULT '0',
  `Google` int(1) NOT NULL DEFAULT '0',
  `GoogleAuth` varchar(17) DEFAULT NULL,
  `Settings` varchar(20) NOT NULL DEFAULT '1|1|1|1|1|1|1',
  `InterSettings` varchar(20) NOT NULL DEFAULT '1|1|1|1|1|1|1|1|1',
  `Enhancement` varchar(20) NOT NULL DEFAULT '0|0|0|0',
  `WalkStyle` int(2) NOT NULL DEFAULT '0',
  `TextStyle` int(1) NOT NULL DEFAULT '0',
  `MoneyCase` int(1) NOT NULL DEFAULT '0',
  `Kolokol` int(1) NOT NULL DEFAULT '0',
  `DamageInfo` int(1) NOT NULL DEFAULT '0',
  `MaskStatus` int(1) NOT NULL DEFAULT '0',
  `PasswordStatus` int(1) NOT NULL DEFAULT '0',
  `SpawnStatus` int(1) NOT NULL DEFAULT '0',
  `FreezeInt` int(1) NOT NULL DEFAULT '0',
  `Family` int(3) NOT NULL DEFAULT '0',
  `FamilyData` varchar(32) NOT NULL DEFAULT '00.00.0000 - 00:00:00',
  `Frac` int(5) NOT NULL DEFAULT '0',
  `FracLeader` int(5) NOT NULL DEFAULT '0',
  `FracData` varchar(30) NOT NULL DEFAULT '00.00.0000 - 00:00:00',
  `FracRang` int(5) NOT NULL DEFAULT '0',
  `FracWarn` int(5) NOT NULL DEFAULT '0',
  `NewName` varchar(24) NOT NULL DEFAULT 'New Name',
  `StatusNewName` int(2) NOT NULL DEFAULT '0',
  `SkillGun` varchar(40) NOT NULL DEFAULT '0|0|0|0|0|0|0',
  `ShtrafMVD` int(5) NOT NULL DEFAULT '0',
  `ShtrafPdd` int(5) NOT NULL DEFAULT '0',
  `House` int(3) NOT NULL DEFAULT '0',
  `Biz` int(5) NOT NULL DEFAULT '0',
  `TCompany` int(5) NOT NULL DEFAULT '0'
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
  `aLevel` int(1) NOT NULL DEFAULT '0',
  `aData` varchar(30) NOT NULL DEFAULT '00-00-0000 | 00:00:00',
  `aPut` varchar(24) NOT NULL DEFAULT 'The Stats',
  `aLastData` varchar(30) NOT NULL DEFAULT '00-00-0000 | 00:00:00',
  `aVigovor` int(1) NOT NULL DEFAULT '0',
  `aReputacion` int(5) NOT NULL DEFAULT '0',
  `aPrefix` varchar(12) NOT NULL DEFAULT 'NoPrefix',
  `aSetting` varchar(20) NOT NULL DEFAULT '1|1|1|1|1|1|0|1',
  `aOtvet` int(5) NOT NULL DEFAULT '0',
  `aMute` int(5) NOT NULL DEFAULT '0',
  `aKick` int(5) NOT NULL DEFAULT '0',
  `aJail` int(5) NOT NULL DEFAULT '0',
  `aWarn` int(5) NOT NULL DEFAULT '0',
  `aBan` int(5) NOT NULL DEFAULT '0',
  `aBanIP` int(5) NOT NULL DEFAULT '0'
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
-- Структура таблицы `alogs`
--

CREATE TABLE `alogs` (
  `id` int(11) NOT NULL,
  `text` varchar(144) NOT NULL,
  `date` datetime NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `atm`
--

CREATE TABLE `atm` (
  `aID` int(11) NOT NULL,
  `aX` float NOT NULL,
  `aY` float NOT NULL,
  `aZ` float NOT NULL,
  `arX` float NOT NULL,
  `arY` float NOT NULL,
  `arZ` float NOT NULL,
  `aInt` int(5) NOT NULL DEFAULT '0',
  `aWorld` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `atm`
--

INSERT INTO `atm` (`aID`, `aX`, `aY`, `aZ`, `arX`, `arY`, `arZ`, `aInt`, `aWorld`) VALUES
(1, 1835.87, 1442.58, 9.498, 0, 0, 179.7, 0, 0),
(2, 2675.06, -1616.23, 1001.62, 0, 0, -90.2, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `ban`
--

CREATE TABLE `ban` (
  `bID` int(11) NOT NULL,
  `bName` varchar(24) CHARACTER SET utf8 NOT NULL,
  `bAdmin` varchar(24) CHARACTER SET utf8 NOT NULL,
  `bIP` varchar(16) CHARACTER SET utf8 NOT NULL,
  `bData` varchar(30) CHARACTER SET utf8 NOT NULL,
  `bReason` varchar(50) CHARACTER SET utf8 NOT NULL,
  `bDay` int(34) NOT NULL,
  `bUnBanData` int(34) NOT NULL,
  `bStatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `banip`
--

CREATE TABLE `banip` (
  `IP` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `banlist`
--

CREATE TABLE `banlist` (
  `id` int(10) NOT NULL,
  `name` varchar(24) NOT NULL,
  `admin` varchar(24) NOT NULL,
  `bantime` int(34) NOT NULL,
  `unbantime` int(34) NOT NULL,
  `text` varchar(100) NOT NULL,
  `ip` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `biznes`
--

CREATE TABLE `biznes` (
  `ID` int(8) NOT NULL,
  `Owner` varchar(24) NOT NULL DEFAULT 'The Stats',
  `Name` varchar(30) NOT NULL DEFAULT 'Business',
  `State` int(1) NOT NULL,
  `EnterX` float NOT NULL,
  `EnterY` float NOT NULL,
  `EnterZ` float NOT NULL,
  `ExitX` float NOT NULL,
  `ExitY` float NOT NULL,
  `ExitZ` float NOT NULL,
  `PicPayX` float NOT NULL,
  `PicPayY` float NOT NULL,
  `PicPayZ` float NOT NULL,
  `Cost` int(11) NOT NULL,
  `Prod` int(11) NOT NULL DEFAULT '0',
  `Doors` int(1) NOT NULL,
  `Interior` int(11) NOT NULL,
  `Money` int(11) NOT NULL,
  `Prod1` int(11) NOT NULL,
  `Prod2` int(11) NOT NULL,
  `Prod3` int(11) NOT NULL,
  `Nalog` int(11) NOT NULL,
  `Prod4` int(11) NOT NULL,
  `Prod5` int(11) NOT NULL,
  `Mafia` int(11) NOT NULL DEFAULT '0',
  `AllDay` int(11) NOT NULL,
  `Prod6` int(11) NOT NULL,
  `Prod7` int(11) NOT NULL,
  `Auction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `biznes`
--

INSERT INTO `biznes` (`ID`, `Owner`, `Name`, `State`, `EnterX`, `EnterY`, `EnterZ`, `ExitX`, `ExitY`, `ExitZ`, `PicPayX`, `PicPayY`, `PicPayZ`, `Cost`, `Prod`, `Doors`, `Interior`, `Money`, `Prod1`, `Prod2`, `Prod3`, `Nalog`, `Prod4`, `Prod5`, `Mafia`, `AllDay`, `Prod6`, `Prod7`, `Auction`) VALUES
(1, 'Andrei_Morozov', '', 1, 1915.2, -2236.5, 11.2438, -232.698, 592.69, 2112.98, -237.081, 588.445, 2112.98, 750000, 860, 0, 16, 3300, 500, 300, 100, 0, 500, 250, 0, 0, 105, 450, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `ID` int(11) NOT NULL,
  `Owner` varchar(24) NOT NULL DEFAULT 'The Stats',
  `Model` int(4) NOT NULL,
  `PosX` int(11) NOT NULL,
  `PosY` int(11) NOT NULL,
  `PosZ` int(11) NOT NULL,
  `PosA` int(11) NOT NULL,
  `Color1` int(4) NOT NULL,
  `Color2` int(4) NOT NULL,
  `ColorJob` int(4) NOT NULL,
  `Health` float NOT NULL,
  `Money` int(11) NOT NULL,
  `Number` varchar(8) NOT NULL DEFAULT '-----',
  `Key` varchar(24) NOT NULL DEFAULT 'The Stats',
  `Lock` int(2) NOT NULL,
  `Fuel` float NOT NULL,
  `Milage` float NOT NULL,
  `CarShtraf` int(2) NOT NULL,
  `Sirena` int(2) NOT NULL DEFAULT '0',
  `Nalog` int(11) NOT NULL,
  `Family` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ekonoms`
--

CREATE TABLE `ekonoms` (
  `ID` int(1) NOT NULL,
  `Nalogs` int(3) NOT NULL,
  `House` int(4) NOT NULL,
  `Biz` int(4) NOT NULL,
  `CNN` int(4) NOT NULL,
  `PD` int(4) NOT NULL,
  `Radar` int(4) NOT NULL,
  `Card` int(11) NOT NULL,
  `Car` int(11) NOT NULL,
  `SelCar` int(11) NOT NULL,
  `Health` int(11) NOT NULL,
  `AutoDrive` int(11) NOT NULL,
  `AutoShow` int(11) NOT NULL,
  `STO` int(11) NOT NULL,
  `Fine` int(11) NOT NULL,
  `PDF` int(11) NOT NULL,
  `RentCar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

--
-- Дамп данных таблицы `ekonoms`
--

INSERT INTO `ekonoms` (`ID`, `Nalogs`, `House`, `Biz`, `CNN`, `PD`, `Radar`, `Card`, `Car`, `SelCar`, `Health`, `AutoDrive`, `AutoShow`, `STO`, `Fine`, `PDF`, `RentCar`) VALUES
(1, 500, 500, 500, 350, 2500, 250, 5000, 5000, 35, 1500, 20, 2500, 1500, 500, 2000, 1500);

-- --------------------------------------------------------

--
-- Структура таблицы `family`
--

CREATE TABLE `family` (
  `famID` int(11) NOT NULL,
  `famName` varchar(32) NOT NULL,
  `famColor` int(2) NOT NULL DEFAULT '1',
  `famCreator` varchar(24) NOT NULL DEFAULT 'The Stats',
  `famZam` varchar(24) NOT NULL DEFAULT 'The Stats',
  `famData` varchar(30) NOT NULL DEFAULT '00.00.0000 - 00:00:00',
  `famHouse` int(11) NOT NULL DEFAULT '0',
  `famSpawnX` float NOT NULL,
  `famSpawnY` float NOT NULL,
  `famSpawnZ` float NOT NULL,
  `famSpawnA` float NOT NULL,
  `famInt` int(11) NOT NULL DEFAULT '0',
  `famWorld` int(11) NOT NULL DEFAULT '0',
  `famUpdate` varchar(30) NOT NULL DEFAULT '0|0|0|0|0|0|0|0',
  `famMembers` int(5) NOT NULL DEFAULT '0',
  `famDrugs` int(5) NOT NULL DEFAULT '0',
  `famMetall` int(5) NOT NULL DEFAULT '0',
  `famPatron` int(5) NOT NULL DEFAULT '0',
  `famMoney` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `family`
--

INSERT INTO `family` (`famID`, `famName`, `famColor`, `famCreator`, `famZam`, `famData`, `famHouse`, `famSpawnX`, `famSpawnY`, `famSpawnZ`, `famSpawnA`, `famInt`, `famWorld`, `famUpdate`, `famMembers`, `famDrugs`, `famMetall`, `famPatron`, `famMoney`) VALUES
(1, 'Admins', 1255450367, 'Andrei_Morozov', 'The Stats', '20.10.2020 - 13:55:58', 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `family_cars`
--

CREATE TABLE `family_cars` (
  `id` int(11) NOT NULL,
  `familyid` int(11) NOT NULL DEFAULT '-1',
  `model` int(11) NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL,
  `color_1` int(11) NOT NULL DEFAULT '0',
  `color_2` int(11) NOT NULL DEFAULT '0',
  `pos_x` float NOT NULL DEFAULT '0',
  `pos_y` float NOT NULL DEFAULT '0',
  `pos_z` float NOT NULL DEFAULT '0',
  `pos_r` float NOT NULL DEFAULT '0',
  `virtual` int(11) NOT NULL DEFAULT '0',
  `number` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `fuel` int(11) NOT NULL DEFAULT '45',
  `lock` int(11) NOT NULL DEFAULT '0',
  `veh_com` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '	0,0,0,0,0,0,0,0,0,0,0,0,0,0	',
  `paintjob` int(11) NOT NULL DEFAULT '3',
  `mileage` float NOT NULL DEFAULT '0',
  `health` float NOT NULL DEFAULT '1000',
  `engine` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `frac`
--

CREATE TABLE `frac` (
  `oID` int(11) NOT NULL,
  `oName` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oLeader` varchar(24) CHARACTER SET utf8 NOT NULL DEFAULT 'The Stats',
  `oBank` int(11) NOT NULL DEFAULT '0',
  `oMats` int(5) NOT NULL DEFAULT '0',
  `oDrugs` int(5) NOT NULL DEFAULT '0',
  `oRent` int(5) NOT NULL DEFAULT '0',
  `oFillend` int(5) NOT NULL DEFAULT '0',
  `oMask` int(5) NOT NULL DEFAULT '0',
  `oArmour` int(5) NOT NULL DEFAULT '0',
  `oHealth` int(5) NOT NULL DEFAULT '0',
  `oRangName1` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oRangName2` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oRangName3` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oRangName4` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oRangName5` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oRangName6` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oRangName7` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oRangName8` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oRangName9` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oRangName10` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  `oRangZP1` int(11) NOT NULL DEFAULT '0',
  `oRangZP2` int(11) NOT NULL DEFAULT '0',
  `oRangZP3` int(11) NOT NULL DEFAULT '0',
  `oRangZP4` int(11) NOT NULL DEFAULT '0',
  `oRangZP5` int(11) NOT NULL DEFAULT '0',
  `oRangZP6` int(11) NOT NULL DEFAULT '0',
  `oRangZP7` int(11) NOT NULL DEFAULT '0',
  `oRangZP8` int(11) NOT NULL DEFAULT '0',
  `oRangZP9` int(11) NOT NULL DEFAULT '0',
  `oRangZP10` int(11) NOT NULL DEFAULT '0',
  `oStock` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `frac`
--

INSERT INTO `frac` (`oID`, `oName`, `oLeader`, `oBank`, `oMats`, `oDrugs`, `oRent`, `oFillend`, `oMask`, `oArmour`, `oHealth`, `oRangName1`, `oRangName2`, `oRangName3`, `oRangName4`, `oRangName5`, `oRangName6`, `oRangName7`, `oRangName8`, `oRangName9`, `oRangName10`, `oRangZP1`, `oRangZP2`, `oRangZP3`, `oRangZP4`, `oRangZP5`, `oRangZP6`, `oRangZP7`, `oRangZP8`, `oRangZP9`, `oRangZP10`, `oStock`) VALUES
(1, 'Администрация области', 'The Stats', 30000000, 0, 0, 0, 0, 0, 0, 0, 'Водитель', 'Охранник', 'Телохраните', 'Нач. Охраны', 'Лицензор', 'Адвокат', 'Прокурор', 'Судья', 'Зам. Губерн', 'Губернатор', 5000, 7000, 9000, 11000, 13000, 15000, 17000, 19000, 21000, 23000, 0),
(2, 'МВД', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Рядовой', 'Сержант', 'Ст. Сержант', 'Мл. Лейтена', 'Лейтенант', 'Капитан', 'Майор', 'Подполковни', 'Полковник', 'Генерал', 7000, 9000, 11000, 13000, 15000, 17000, 19000, 21000, 23000, 25000, 0),
(3, 'ГИБДД', 'Andrei_Morozov', 0, 0, 0, 0, 0, 0, 0, 0, 'Рядовой', 'Сержант', 'Ст. Сержант', 'Мл. Лейтена', 'Лейтенант', 'Капитан', 'Майор', 'Подполковни', 'Полковник', 'Генерал', 5000, 7000, 9000, 11000, 13000, 15000, 17000, 19000, 21000, 23000, 0),
(4, 'ФСИН', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Рядовой', 'Сержант', 'Ст. Сержант', 'Мл. Лейтена', 'Лейтенант', 'Капитан', 'Майор', 'Подполковни', 'Полковник', 'Генерал', 5000, 7000, 9000, 11000, 13000, 15000, 17000, 19000, 21000, 23000, 0),
(5, 'ФСБ', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Младший опе', 'Сотрудник о', 'Сотрудник о', 'Сотрудник о', 'Старший опе', 'Глава отдел', 'Глава отдел', 'Глава отдел', 'Зам. Директ', 'Директор', 6000, 8000, 10000, 12000, 14000, 16000, 18000, 20000, 22000, 24000, 0),
(6, 'Вооруженные силы', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Рядовой', 'Сержант', 'Ст. Сержант', 'Старшина', 'Лейтинант', 'Капитан', 'Майор', 'Подполковни', 'Полковник', 'Генерал', 5000, 7000, 9000, 11000, 13000, 15000, 17000, 19000, 21000, 23000, 0),
(7, 'Областная больница', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Санитар', 'Стажер', 'Интерн', 'Нарколог', 'Доктор', 'Хирург', 'Психолог', 'Терапевт', 'Зам. Глав. ', 'Глав. Врач', 5500, 7000, 8500, 10000, 11500, 13000, 14500, 16000, 17500, 19000, 0),
(8, 'ТРК \"Редвич\"', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Стажер', 'Мл.Редактор', 'Редактор', 'Звукорежисс', 'Оператор', 'Помощник ре', 'Репортер', 'Режиссер', 'Зам. Гл. Ре', 'Гл.Редактор', 6000, 7000, 8000, 9000, 10000, 11000, 12000, 13000, 14000, 15000, 0),
(9, 'ОПГ \"Барыги\"', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Браток', 'Головорез', 'Чистильщик', 'Шпион', 'Координатор', 'Ветеран', 'Пахан', 'Сторожила', 'Аристократ', 'Авторитет', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'ОПГ \"Ореховская\"', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Браток', 'Головорез', 'Чистильщик', 'Шпион', 'Координатор', 'Ветеран', 'Пахан', 'Сторожила', 'Аристократ', 'Авторитет', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'ОПГ \"Южная\"', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Браток', 'Головорез', 'Чистильщик', 'Шпион', 'Координатор', 'Ветеран', 'Пахан', 'Сторожила', 'Аристократ', 'Авторитет', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Чеченская мафия', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Новицио', 'Ассасиато', 'Сомбатентте', 'Солдато', 'Ассасино', 'Сото-Капо', 'Капо', 'Младший бос', 'Коньсельери', 'Дон', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'Русская мафия', 'The Stats', 0, 0, 0, 0, 0, 0, 0, 0, 'Новицио', 'Ассасиато', 'Сомбатентте', 'Солдато', 'Ассасино', 'Сото-Капо', 'Капо', 'Младший бос', 'Коньсельери', 'Дон', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fulladmin`
--

CREATE TABLE `fulladmin` (
  `fID` int(11) NOT NULL,
  `fName` varchar(24) CHARACTER SET utf8 NOT NULL,
  `fData` varchar(30) CHARACTER SET utf8 NOT NULL,
  `fPutName` varchar(24) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `fulladmin`
--

INSERT INTO `fulladmin` (`fID`, `fName`, `fData`, `fPutName`) VALUES
(1, 'Andrei_Morozov', '29.09.2020 - 21:22:07', '53'),
(2, 'Nikita_Founder', '29.09.2020 - 21:34:18', 'Sustem'),
(3, 'Aleksandr_Melkov', '06.10.2020 - 20:47:19', 'Sustem'),
(4, 'Dmitriy_Korolewskiy', '18.10.2020 - 17:37:00', '83');

-- --------------------------------------------------------

--
-- Структура таблицы `house`
--

CREATE TABLE `house` (
  `hID` int(11) NOT NULL,
  `hEnterX` float NOT NULL,
  `hEnterY` float NOT NULL,
  `hEnterZ` float NOT NULL,
  `hExitX` float NOT NULL,
  `hExitY` float NOT NULL,
  `hExitZ` float NOT NULL,
  `hOwner` varchar(24) NOT NULL DEFAULT 'The Stats',
  `hClass` int(2) NOT NULL,
  `hSpawnX` float NOT NULL,
  `hSpawnY` float NOT NULL,
  `hSpawnZ` float NOT NULL,
  `hSpawnA` float NOT NULL,
  `hPriceBuy` int(11) NOT NULL,
  `hPriceDay` int(11) NOT NULL,
  `hInt` int(4) NOT NULL,
  `hLock` int(2) NOT NULL DEFAULT '1',
  `hDay` int(4) NOT NULL,
  `hMapIcon` int(3) NOT NULL,
  `hGarage` int(2) NOT NULL DEFAULT '0',
  `hAutoDoors` int(2) NOT NULL,
  `hMoney` int(11) NOT NULL DEFAULT '0',
  `hCupboard` int(5) NOT NULL DEFAULT '0',
  `hAmmo` int(5) NOT NULL DEFAULT '0',
  `hHealth` int(5) NOT NULL DEFAULT '0',
  `hNarko` int(5) NOT NULL DEFAULT '0',
  `hArmour` int(5) NOT NULL DEFAULT '0',
  `hHangers` varchar(30) NOT NULL DEFAULT '0,0,0,0,0',
  `hBar` int(2) NOT NULL DEFAULT '0',
  `hBarProd` int(5) NOT NULL DEFAULT '0',
  `hNalog` int(11) NOT NULL DEFAULT '0',
  `hKey` int(5) NOT NULL DEFAULT '0',
  `hPass` int(5) NOT NULL DEFAULT '0',
  `hGuns` varchar(30) NOT NULL DEFAULT '0,0,0,0,0',
  `hRooms` int(5) NOT NULL DEFAULT '0',
  `hProd` int(5) NOT NULL DEFAULT '0',
  `hPlayer_1` varchar(24) NOT NULL DEFAULT 'The Stats',
  `hPlayer_2` varchar(24) NOT NULL DEFAULT 'The Stats',
  `hPlayer_3` varchar(24) NOT NULL DEFAULT 'The Stats',
  `hPlayer_4` varchar(24) NOT NULL DEFAULT 'The Stats',
  `hPlayer_5` varchar(24) NOT NULL DEFAULT 'The Stats',
  `hPlayer_6` varchar(24) NOT NULL DEFAULT 'The Stats',
  `hTime` int(5) NOT NULL DEFAULT '0',
  `hFamily` int(5) NOT NULL DEFAULT '0',
  `hSafe` int(5) NOT NULL DEFAULT '0',
  `hAuction` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `house`
--

INSERT INTO `house` (`hID`, `hEnterX`, `hEnterY`, `hEnterZ`, `hExitX`, `hExitY`, `hExitZ`, `hOwner`, `hClass`, `hSpawnX`, `hSpawnY`, `hSpawnZ`, `hSpawnA`, `hPriceBuy`, `hPriceDay`, `hInt`, `hLock`, `hDay`, `hMapIcon`, `hGarage`, `hAutoDoors`, `hMoney`, `hCupboard`, `hAmmo`, `hHealth`, `hNarko`, `hArmour`, `hHangers`, `hBar`, `hBarProd`, `hNalog`, `hKey`, `hPass`, `hGuns`, `hRooms`, `hProd`, `hPlayer_1`, `hPlayer_2`, `hPlayer_3`, `hPlayer_4`, `hPlayer_5`, `hPlayer_6`, `hTime`, `hFamily`, `hSafe`, `hAuction`) VALUES
(1, 1859.44, 1405.13, 9.756, 1859.44, 1405.13, 9.756, 'The Stats', 1, 595.451, 1623.08, -88.63, 270, 100000, 2000, 0, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '53', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(2, 1865.34, 1358.2, 10.223, 1865.34, 1358.2, 10.223, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '53', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(3, 1865.88, 1337.14, 10.321, 1865.88, 1337.14, 10.321, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '53', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(4, 1838.13, 1338.57, 10.28, 1838.13, 1338.57, 10.28, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '53', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(5, 1813.25, 1333.64, 10.54, 1813.25, 1333.64, 10.54, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 135000, 2700, 0, 0, 0, 8, 0, 1, 0, 1, 0, 0, 0, 0, '0,0,0,0,0', 1, 0, 0, 1, 0, '53', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 1, 0),
(6, 1800.69, 1337.77, 10.224, 1800.69, 1337.77, 10.224, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '53', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(7, 1764.07, 1334.25, 10.126, 1764.07, 1334.25, 10.126, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '53', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(8, 2039.12, 1339.85, 26.736, 2039.12, 1339.85, 26.736, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '53', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(9, 2060.38, 1339.85, 26.635, 2060.38, 1339.85, 26.635, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '53', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(10, 2207.31, 1363.47, 11.359, 2207.31, 1363.47, 11.359, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '53', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(11, 1943.52, 1753.03, 15.3569, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(12, 1994.99, 1746.19, 15.6921, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(13, 1943.55, 1806.77, 15.7021, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(14, 1989.36, 1794.03, 15.7392, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 150000, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(15, 1945.14, 1845.31, 15.4186, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(16, 1985.88, 1831.91, 16.111, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(17, 1749.3, 2076.44, 16.575, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(18, 1745.89, 2115.13, 15.948, 1745.89, 2115.13, 15.948, 'Andrei_Morozov', 1, 338.908, 1599.96, 6998.16, 260, 350000, 7000, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '48', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(19, 1747.25, 2155.08, 16.7052, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(20, 1749.77, 2189.04, 15.9295, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(21, 1912.08, 2266.19, 15.9241, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(22, 1857.62, 2297.42, 15.2572, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(23, 1855.47, 2301.08, 15.2572, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(24, 1852.74, 2305.69, 15.2572, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0),
(25, 1850.57, 2309.38, 15.2572, 332.3, 1611.67, 6998.16, 'The Stats', 1, 338.908, 1599.96, 6998.16, 260, 100000, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 0, 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 'The Stats', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `joblevel`
--

CREATE TABLE `joblevel` (
  `jID` int(11) NOT NULL,
  `jName` varchar(24) NOT NULL DEFAULT 'The Stats',
  `jExp` varchar(30) NOT NULL DEFAULT '0,0,0,0,0,0,0',
  `jLevel` varchar(30) NOT NULL DEFAULT '1,1,1,1,1,1,1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `joblevel`
--

INSERT INTO `joblevel` (`jID`, `jName`, `jExp`, `jLevel`) VALUES
(1, 'Andrei_Morozov', '0,0,0,0,0,0,0', '1,1,1,1,1,1,1'),
(2, 'Gosha_Pashkov', '0,0,0,0,0,0,0', '1,1,1,1,1,1,1'),
(3, 'Misha_Tarasov', '0,0,0,0,0,0,0', '1,1,1,1,1,1,1'),
(4, 'Danil_Nogan', '0,0,0,0,0,0,0', '1,1,1,1,1,1,1'),
(5, 'Dantes_Dangeres', '0,0,0,0,0,0,0', '1,1,1,1,1,1,1'),
(6, 'Ali_Gadban', '0,0,0,0,0,0,0', '1,1,1,1,1,1,1'),
(7, 'Dmitriy_Sadkov', '0,0,0,0,0,0,0', '1,1,1,1,1,1,1'),
(8, 'Andrey_Mixov', '0,0,0,0,0,0,0', '1,1,1,1,1,1,1');

-- --------------------------------------------------------

--
-- Структура таблицы `micon`
--

CREATE TABLE `micon` (
  `ID` int(11) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `IconID` int(11) NOT NULL,
  `Distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `Text` varchar(2000) NOT NULL,
  `Date` varchar(40) NOT NULL,
  `title` varchar(120) NOT NULL,
  `Dev` varchar(32) NOT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `Text`, `Date`, `title`, `Dev`, `img`) VALUES
(6, 'Описание новости', '27.04.2017 / 16:20', 'Тестовое название', 'Andreas_Moore', '/classes/img/news/news1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `passport`
--

CREATE TABLE `passport` (
  `pasName` varchar(24) NOT NULL DEFAULT 'The State',
  `pasSeria` int(11) DEFAULT NULL,
  `pasNumber` int(11) DEFAULT NULL,
  `pasData` varchar(15) DEFAULT NULL,
  `pasOblasti` varchar(30) DEFAULT NULL,
  `pasGorod` varchar(30) DEFAULT NULL,
  `pasDataRojdenia` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `passport`
--

INSERT INTO `passport` (`pasName`, `pasSeria`, `pasNumber`, `pasData`, `pasOblasti`, `pasGorod`, `pasDataRojdenia`) VALUES
('Andrei_Morozov', 5319, 944440, '19.10.0023', 'Свердловская', 'Екатеринбург', '25.02.1997'),
('Dmitriy_Sadkov', 4569, 481417, '20.10.0016', 'Нижегородская', 'Арзамас', '10.07.2004');

-- --------------------------------------------------------

--
-- Структура таблицы `podarki`
--

CREATE TABLE `podarki` (
  `ID` int(11) DEFAULT NULL,
  `Pickup` int(11) NOT NULL,
  `Pos_X` float NOT NULL,
  `Pos_Y` float NOT NULL,
  `Pos_Z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `radar`
--

CREATE TABLE `radar` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(24) NOT NULL,
  `r_type` int(11) NOT NULL,
  `r_speed` int(11) NOT NULL,
  `r_x` float NOT NULL,
  `r_y` float NOT NULL,
  `r_z` float NOT NULL,
  `r_a` float NOT NULL,
  `r_money` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `radar`
--

INSERT INTO `radar` (`r_id`, `r_name`, `r_type`, `r_speed`, `r_x`, `r_y`, `r_z`, `r_a`, `r_money`) VALUES
(1, 'Andrei_Morozov', 2, 60, 2224.47, -2191.66, 20.1619, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `seatdowns`
--

CREATE TABLE `seatdowns` (
  `SeatX` float NOT NULL,
  `SeatY` float NOT NULL,
  `SeatZ` float NOT NULL,
  `SeatA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `seatdowns`
--

INSERT INTO `seatdowns` (`SeatX`, `SeatY`, `SeatZ`, `SeatA`) VALUES
(966.296, 1767.57, 1702.5, 0.019782),
(965.858, 1768.28, 1702.5, 89.3242),
(965.861, 1768.91, 1702.5, 89.0109),
(965.862, 1769.47, 1702.5, 86.5042),
(965.142, 1769.51, 1702.5, 264.938),
(965.141, 1768.92, 1702.5, 271.349),
(964.045, 1769.51, 1702.5, 268.216),
(964.045, 1768.89, 1702.5, 270.409),
(962.911, 1769.51, 1702.5, 270.409),
(962.913, 1768.92, 1702.5, 270.409),
(961.763, 1769.06, 1702.5, 181.277),
(961.111, 1769.05, 1702.5, 178.457),
(960.525, 1769.05, 1702.5, 188.483),
(960, 1769.5, 1702.5, 276.989),
(959.994, 1768.9, 1702.5, 259.129),
(959.999, 1768.28, 1702.5, 266.818),
(959.996, 1767.7, 1702.5, 274.001),
(959.998, 1767.12, 1702.5, 268.988),
(961.135, 1767.58, 1702.5, 2.79652),
(961.711, 1767.64, 1702.5, 359.327),
(962.913, 1767.12, 1702.5, 268.772),
(962.913, 1767.69, 1702.5, 268.772),
(964.042, 1767.73, 1702.5, 264.989),
(964.055, 1767.14, 1702.5, 266.845),
(2572.84, -2441.6, 1502, 358.433);

-- --------------------------------------------------------

--
-- Структура таблицы `server`
--

CREATE TABLE `server` (
  `sName` varchar(32) NOT NULL DEFAULT 'Name RolePlay',
  `sNumber` int(2) NOT NULL,
  `sNameServer` varchar(32) NOT NULL DEFAULT 'Name',
  `sObnova` varchar(32) NOT NULL DEFAULT 'None',
  `sVersion` varchar(32) NOT NULL DEFAULT 'v0.0.1',
  `sWeb` varchar(32) NOT NULL DEFAULT 'redwich-rp.ru',
  `sDonate` varchar(32) NOT NULL DEFAULT 'None',
  `sForum` varchar(32) NOT NULL DEFAULT 'None',
  `sGroup` varchar(32) NOT NULL DEFAULT 'None',
  `sGroupFree` varchar(32) NOT NULL DEFAULT 'None',
  `sMapName` varchar(32) NOT NULL DEFAULT 'Criminal Russia',
  `sLanguage` varchar(32) NOT NULL DEFAULT 'Russian',
  `sPassword` varchar(32) NOT NULL DEFAULT 'NoneQwerty',
  `sRconPass` varchar(32) NOT NULL DEFAULT '2545864',
  `sData` varchar(32) NOT NULL DEFAULT '00-00-0000',
  `sX_Day` int(2) NOT NULL DEFAULT '1',
  `sX_Exp` int(2) NOT NULL DEFAULT '1',
  `sX_JobMoney` int(2) NOT NULL DEFAULT '1',
  `sX_PayDay` int(2) NOT NULL DEFAULT '1',
  `sX_Donat` int(2) NOT NULL DEFAULT '1',
  `sMineral` int(11) NOT NULL DEFAULT '0',
  `sNefti` int(11) NOT NULL DEFAULT '0',
  `sDrova` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `server`
--

INSERT INTO `server` (`sName`, `sNumber`, `sNameServer`, `sObnova`, `sVersion`, `sWeb`, `sDonate`, `sForum`, `sGroup`, `sGroupFree`, `sMapName`, `sLanguage`, `sPassword`, `sRconPass`, `sData`, `sX_Day`, `sX_Exp`, `sX_JobMoney`, `sX_PayDay`, `sX_Donat`, `sMineral`, `sNefti`, `sDrova`) VALUES
('Redwich RolePlay', 1, 'Pulsar', 'Разработка', 'v1.5.9', 'redwich-rp.ru', 'forum.redwich-rp.ru', 'forum.redwich-rp.ru', 'vk.com/redwich_rp', 'Criminal Russia', 'Russian', '25458642545864', 'NoneQwerty', '15.01.2020', '0', 1, 2, 2, 2, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `title` text CHARACTER SET utf8 NOT NULL,
  `favicon` text CHARACTER SET utf8 NOT NULL,
  `logo` text CHARACTER SET utf8 NOT NULL,
  `md5` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL,
  `vk` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`title`, `favicon`, `logo`, `md5`, `description`, `keywords`, `vk`) VALUES
('Redwich', 'public', 'public', 0, 'Выбери сам, кем ты хочешь стать в нашей игре', 'начать играть в гта са, гта по сети, андреас, GTA, Grand Theft Auto, самп, samp, sa-mp, гта са, swatch, свотч, s-rp, с-рп, роле плей, RolePlay, сервер, са мп, multiplayer', '');

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `number` int(11) NOT NULL,
  `offender` varchar(50) NOT NULL,
  `charge` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `date` varchar(40) NOT NULL,
  `signed` varchar(24) NOT NULL,
  `ids` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `trucker`
--

CREATE TABLE `trucker` (
  `ID` int(11) NOT NULL,
  `Name` varchar(128) NOT NULL DEFAULT 'Compania',
  `Owner` varchar(24) NOT NULL DEFAULT 'The State',
  `EnterX` float NOT NULL,
  `EnterY` float NOT NULL,
  `EnterZ` float NOT NULL,
  `ExitX` float NOT NULL,
  `ExitY` float NOT NULL,
  `ExitZ` float NOT NULL,
  `Price` int(11) NOT NULL,
  `Balans` int(11) NOT NULL,
  `PicInfoX` float NOT NULL,
  `PicInfoY` float NOT NULL,
  `PicInfoZ` float NOT NULL,
  `MapIcon` int(11) NOT NULL DEFAULT '42',
  `SpawnX` float NOT NULL,
  `SpawnY` float NOT NULL,
  `SpawnZ` float NOT NULL,
  `SpawnA` float NOT NULL,
  `World` int(11) NOT NULL DEFAULT '0',
  `Members` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `trucker`
--

INSERT INTO `trucker` (`ID`, `Name`, `Owner`, `EnterX`, `EnterY`, `EnterZ`, `ExitX`, `ExitY`, `ExitZ`, `Price`, `Balans`, `PicInfoX`, `PicInfoY`, `PicInfoZ`, `MapIcon`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnA`, `World`, `Members`) VALUES
(1, 'Компания', 'The Stats', 1970.24, -2603.9, 11.482, 2372.52, -584.458, 1502, 30000000, 0, 1967.15, -2601.01, 10.815, 51, 2365.76, -590.256, 1502, 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `truckercar`
--

CREATE TABLE `truckercar` (
  `TruckID` int(11) NOT NULL,
  `TruckCar_1` int(11) NOT NULL DEFAULT '0',
  `TruckCar_2` int(11) NOT NULL DEFAULT '0',
  `TruckCar_3` int(11) NOT NULL DEFAULT '0',
  `TruckCar_4` int(11) NOT NULL DEFAULT '0',
  `TruckCar_5` int(11) NOT NULL DEFAULT '0',
  `TruckCar_6` int(11) NOT NULL DEFAULT '0',
  `TruckCar_7` int(11) NOT NULL DEFAULT '0',
  `TruckCar_8` int(11) NOT NULL DEFAULT '0',
  `TruckCar_9` int(11) NOT NULL DEFAULT '0',
  `TruckCar_10` int(11) NOT NULL DEFAULT '0',
  `TruckCar_11` int(11) NOT NULL DEFAULT '0',
  `TruckCar_12` int(11) NOT NULL DEFAULT '0',
  `TruckCar_13` int(11) NOT NULL DEFAULT '0',
  `TruckCar_14` int(11) NOT NULL DEFAULT '0',
  `TruckCar_15` int(11) NOT NULL DEFAULT '0',
  `TruckCar_16` int(11) NOT NULL DEFAULT '0',
  `TruckCar_17` int(11) NOT NULL DEFAULT '0',
  `TruckCar_18` int(11) NOT NULL DEFAULT '0',
  `TruckCar_19` int(11) NOT NULL DEFAULT '0',
  `TruckCar_20` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `truckercar`
--

INSERT INTO `truckercar` (`TruckID`, `TruckCar_1`, `TruckCar_2`, `TruckCar_3`, `TruckCar_4`, `TruckCar_5`, `TruckCar_6`, `TruckCar_7`, `TruckCar_8`, `TruckCar_9`, `TruckCar_10`, `TruckCar_11`, `TruckCar_12`, `TruckCar_13`, `TruckCar_14`, `TruckCar_15`, `TruckCar_16`, `TruckCar_17`, `TruckCar_18`, `TruckCar_19`, `TruckCar_20`) VALUES
(1, 514, 514, 514, 514, 514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `trudovais`
--

CREATE TABLE `trudovais` (
  `Name` varchar(24) NOT NULL,
  `Frac` int(3) NOT NULL,
  `Data` varchar(30) NOT NULL,
  `Info` varchar(144) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uk`
--

CREATE TABLE `uk` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT 'None',
  `wanted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `unitpay_payments`
--

CREATE TABLE `unitpay_payments` (
  `id` int(10) NOT NULL,
  `unitpayId` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `sum` float NOT NULL,
  `itemsCount` int(11) NOT NULL DEFAULT '1',
  `dateCreate` datetime NOT NULL,
  `dateComplete` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `unitpay_payments`
--

INSERT INTO `unitpay_payments` (`id`, `unitpayId`, `account`, `sum`, `itemsCount`, `dateCreate`, `dateComplete`, `status`) VALUES
(2, '43923', 'test', 10, 1, '2020-10-20 19:44:48', NULL, 0),
(3, '51610', 'test', 10, 1, '2020-10-20 20:04:47', NULL, 0),
(4, '11833', 'test', 10, 1, '2020-10-20 20:04:58', NULL, 0),
(5, '80949', 'test', 10, 1, '2020-10-20 20:05:48', NULL, 0),
(6, '47802', 'test', 10, 1, '2020-10-20 20:34:03', NULL, 0),
(7, '33107', 'test', 10, 1, '2020-10-20 20:34:08', NULL, 0),
(8, '63343', 'test', 10, 1, '2020-10-20 20:35:30', NULL, 0),
(9, '91525', 'test', 10, 1, '2020-10-20 20:37:54', NULL, 0),
(10, '18609', 'test', 10, 1, '2020-10-20 20:38:20', NULL, 0),
(11, '41380', 'test', 10, 1, '2020-10-20 20:38:32', NULL, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `acc_player`
--
ALTER TABLE `acc_player`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aID`);

--
-- Индексы таблицы `alogs`
--
ALTER TABLE `alogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`aID`);

--
-- Индексы таблицы `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`bID`);

--
-- Индексы таблицы `biznes`
--
ALTER TABLE `biznes`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`famID`);

--
-- Индексы таблицы `frac`
--
ALTER TABLE `frac`
  ADD PRIMARY KEY (`oID`);

--
-- Индексы таблицы `fulladmin`
--
ALTER TABLE `fulladmin`
  ADD PRIMARY KEY (`fID`);

--
-- Индексы таблицы `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`hID`);

--
-- Индексы таблицы `joblevel`
--
ALTER TABLE `joblevel`
  ADD PRIMARY KEY (`jID`);

--
-- Индексы таблицы `micon`
--
ALTER TABLE `micon`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `radar`
--
ALTER TABLE `radar`
  ADD PRIMARY KEY (`r_id`);

--
-- Индексы таблицы `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`sNumber`);

--
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`number`);

--
-- Индексы таблицы `trucker`
--
ALTER TABLE `trucker`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `truckercar`
--
ALTER TABLE `truckercar`
  ADD PRIMARY KEY (`TruckID`);

--
-- Индексы таблицы `uk`
--
ALTER TABLE `uk`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `unitpay_payments`
--
ALTER TABLE `unitpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `acc_player`
--
ALTER TABLE `acc_player`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `aID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `alogs`
--
ALTER TABLE `alogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `atm`
--
ALTER TABLE `atm`
  MODIFY `aID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `ban`
--
ALTER TABLE `ban`
  MODIFY `bID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `biznes`
--
ALTER TABLE `biznes`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `family`
--
ALTER TABLE `family`
  MODIFY `famID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `frac`
--
ALTER TABLE `frac`
  MODIFY `oID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `fulladmin`
--
ALTER TABLE `fulladmin`
  MODIFY `fID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `house`
--
ALTER TABLE `house`
  MODIFY `hID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `joblevel`
--
ALTER TABLE `joblevel`
  MODIFY `jID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `micon`
--
ALTER TABLE `micon`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `radar`
--
ALTER TABLE `radar`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `server`
--
ALTER TABLE `server`
  MODIFY `sNumber` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `trucker`
--
ALTER TABLE `trucker`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `truckercar`
--
ALTER TABLE `truckercar`
  MODIFY `TruckID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `uk`
--
ALTER TABLE `uk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `unitpay_payments`
--
ALTER TABLE `unitpay_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

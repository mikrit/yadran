-- phpMyAdmin SQL Dump
-- version 4.2.8.1
-- http://www.phpmyadmin.net
--
-- Хост: 10.0.2.3
-- Время создания: Июл 30 2015 г., 16:08
-- Версия сервера: 5.5.34-32.0-log
-- Версия PHP: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `a70218_2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `approval_conditions`
--

CREATE TABLE IF NOT EXISTS `approval_conditions` (
`id` int(11) NOT NULL,
  `approval_condition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `approval_conditions`
--

INSERT INTO `approval_conditions` (`id`, `approval_condition`) VALUES
(1, 'without a prescription'),
(2, 'on prescription');

-- --------------------------------------------------------

--
-- Структура таблицы `changes`
--

CREATE TABLE IF NOT EXISTS `changes` (
`id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `changes_box` varchar(100) DEFAULT NULL,
  `changes_old` varchar(255) DEFAULT NULL,
  `changes_new` varchar(255) DEFAULT NULL,
  `changes_date` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `changes`
--

INSERT INTO `changes` (`id`, `user_id`, `changes_box`, `changes_old`, `changes_new`, `changes_date`) VALUES
(1, 2, 'company', NULL, 'JGL', 1409944511);

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
`id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `company`, `address`) VALUES
(1, '-', '1'),
(2, 'JGL', '');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
`id` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `country`) VALUES
(1, 'Russia'),
(2, 'Ukraine'),
(3, 'Kazakhstan'),
(4, 'Belarus'),
(5, 'Armenia'),
(6, 'Azerbaijan'),
(7, 'Georgia'),
(8, 'Moldova'),
(9, 'Turkmenistan'),
(10, 'Tajikistan'),
(11, 'Mongolia'),
(12, 'Kirgizia'),
(13, 'Croatia');

-- --------------------------------------------------------

--
-- Структура таблицы `dosages`
--

CREATE TABLE IF NOT EXISTS `dosages` (
`id` int(11) NOT NULL,
  `dosage` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dosages`
--

INSERT INTO `dosages` (`id`, `dosage`) VALUES
(1, '-'),
(2, 'mg'),
(3, 'ml'),
(4, 'g'),
(5, '%'),
(6, 'IU'),
(7, 'ME');

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE IF NOT EXISTS `files` (
`id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `add_date` int(11) DEFAULT NULL,
  `discription` text,
  `archive` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `files`
--

INSERT INTO `files` (`id`, `title`, `link`, `product_id`, `user_id`, `add_date`, `discription`, `archive`) VALUES
(2, 'Altey. Registration certificate.pdf', 'files/49/Altey. Registration certificate.pdf', 49, 2, 1409944361, '', NULL),
(3, 'Izmenenie Instr.pdf', 'files/49/Izmenenie Instr.pdf', 49, 2, 1409944484, 'New Instruction', NULL),
(4, 'IMG_20140531_142339.jpg', 'files/1/IMG_20140531_142339.jpg', 1, 2, 1412934430, 'Проверка', NULL),
(5, 'jadran.sql', 'files/333/jadran.sql', 333, 2, 1415603892, 'База', NULL),
(6, 'Измененеи №2.pdf', 'files/1/Izmenenei №2.pdf', 1, 2, 1415608957, '', NULL),
(7, 'Изменение № 1 Драмина real.pdf', 'files/1/Izmenenie № 1 Dramina real.pdf', 1, 2, 1415609040, '', NULL),
(9, 'Инструкция скан.pdf', 'files/1/Instruktsiya skan.pdf', 1, 2, 1415613233, '', NULL),
(10, 'AQUA MARIS spray-NEW reg cert.pdf', 'files/2/AQUA MARIS spray-NEW reg cert.pdf', 2, 2, 1415780027, '', NULL),
(11, 'макет пачки.tif', 'files/2/maket pachki.tif', 2, 2, 1415780065, '', NULL),
(12, 'АМ спрей назальный- письмо ФС 2011.pdf', 'files/3/AM sprey nazalnyiy- pismo FS 2011.pdf', 3, 2, 1415796368, '', NULL),
(13, 'РУ_Аква Марис капли назальные для детей.pdf', 'files/3/RU_Akva Maris kapli nazalnyie dlya detey.pdf', 3, 2, 1415796403, '', NULL),
(14, 'РУ.pdf', 'files/8/RU.pdf', 8, 2, 1415876743, '', NULL),
(15, 'РУ.pdf', 'files/9/RU.pdf', 9, 2, 1415877300, '', NULL),
(16, 'Макет Розамет (внесение изменений)3.pdf', 'files/9/Maket Rozamet (vnesenie izmeneniy)3.pdf', 9, 2, 1415877736, '', NULL),
(18, 'folacin_blister materials.pdf', 'files/8/folacin_blister materials.pdf', 8, 2, 1415949739, '', NULL),
(19, 'Инструкция на Аква Марис.pdf', 'files/2/Instruktsiya na Akva Maris.pdf', 2, 2, 1415949829, '', NULL),
(21, 'утв Инструкция.pdf', 'files/1/utv Instruktsiya.pdf', 1, 2, 1417184843, '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `international_nonproprietary_names`
--

CREATE TABLE IF NOT EXISTS `international_nonproprietary_names` (
`id` int(11) NOT NULL,
  `international_nonproprietary_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `international_nonproprietary_names`
--

INSERT INTO `international_nonproprietary_names` (`id`, `international_nonproprietary_name`) VALUES
(1, '-'),
(2, 'Metronidazolum'),
(3, 'Betahistine'),
(4, 'Isotretinoin'),
(5, 'Clindamycinum'),
(6, 'Betamethasone'),
(7, 'Xylomethazolinum'),
(8, 'Dexpanthenol'),
(9, 'Interferon Alfa'),
(10, 'Latanoprost'),
(11, 'Clindamycin');

-- --------------------------------------------------------

--
-- Структура таблицы `pharmaceutical_forms`
--

CREATE TABLE IF NOT EXISTS `pharmaceutical_forms` (
`id` int(11) NOT NULL,
  `pharmaceutical_form` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pharmaceutical_forms`
--

INSERT INTO `pharmaceutical_forms` (`id`, `pharmaceutical_form`) VALUES
(1, '-'),
(2, 'tablets'),
(3, 'nasal spray'),
(4, 'nasal drops'),
(5, 'spray for topical use'),
(6, 'sirup'),
(7, 'ointment'),
(8, 'cream'),
(9, 'drops'),
(10, 'capsule'),
(11, 'rinsing'),
(12, 'eye drops'),
(13, 'spray'),
(14, 'soap'),
(15, 'gel'),
(16, 'vaginal capsule'),
(17, 'monodoses'),
(18, 'sachet and capsule'),
(19, 'lozenges'),
(20, 'aerosol'),
(21, 'spray for throat'),
(22, 'spray for external use'),
(23, 'oinment for external use'),
(24, 'lyophilizat'),
(25, 'solution'),
(26, 'peroral capsule'),
(27, 'ophthalmic solution'),
(28, 'oral capsule'),
(29, 'throat spray'),
(30, 'spray nasal'),
(31, 'nasal aerosol');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `international_nonproprietary_name_id` int(11) DEFAULT NULL,
  `active_ingredient` text,
  `quantity_ai` varchar(35) DEFAULT NULL,
  `dosage_id` int(11) DEFAULT NULL,
  `composition` text,
  `status_id` int(11) DEFAULT NULL,
  `pharmaceutical_form_id` int(11) DEFAULT NULL,
  `packaging` varchar(255) DEFAULT NULL,
  `shelf_life_id` int(11) DEFAULT NULL,
  `storage_condition_id` int(11) DEFAULT NULL,
  `approval_condition_id` int(11) DEFAULT NULL,
  `registration_certificate_number` varchar(255) DEFAULT NULL,
  `registration_certificate_date` int(11) DEFAULT NULL,
  `period_of_validity` int(11) DEFAULT NULL,
  `unlimited_validity` int(1) NOT NULL DEFAULT '0',
  `registration_stage_id` int(11) DEFAULT NULL,
  `registration_stage_date` int(11) DEFAULT NULL,
  `comment` text,
  `manufacturer` int(11) DEFAULT NULL,
  `manufacturer_primary` int(11) DEFAULT NULL,
  `manufacturer_secondary` int(11) DEFAULT NULL,
  `quality_control` int(11) DEFAULT NULL,
  `marketing_authorisation_holder` int(11) DEFAULT NULL,
  `type_of_process` int(3) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `product_name`, `international_nonproprietary_name_id`, `active_ingredient`, `quantity_ai`, `dosage_id`, `composition`, `status_id`, `pharmaceutical_form_id`, `packaging`, `shelf_life_id`, `storage_condition_id`, `approval_condition_id`, `registration_certificate_number`, `registration_certificate_date`, `period_of_validity`, `unlimited_validity`, `registration_stage_id`, `registration_stage_date`, `comment`, `manufacturer`, `manufacturer_primary`, `manufacturer_secondary`, `quality_control`, `marketing_authorisation_holder`, `type_of_process`) VALUES
(1, 'Dramina', 1, 'Dimenhydrinate', '50', 2, '', 2, 2, '№5, №10', 5, 1, 1, 'П №016084/01', NULL, NULL, 1, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(2, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 2, 3, NULL, 3, 1, NULL, 'П №013831/01', 1984, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 'Aqua Maris', NULL, 'Seawater', '10', 2, NULL, 2, 4, NULL, 2, 1, NULL, 'П №013831/02', 1984, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 2, 5, NULL, 3, 1, NULL, '№ ЛС - 002319', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'Althaeae', NULL, 'Extractum radicum Althaeae officinalis', NULL, NULL, NULL, 2, 6, NULL, 2, 1, NULL, 'П №014964/01-2003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 'D-Panthenol', NULL, 'Dexpanthenolum', '25, 50', 3, NULL, 2, 7, NULL, 2, 1, NULL, 'П № 011108', 1975, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 'D-Panthenol', NULL, 'Dexpanthenolum', '25, 51', 3, NULL, 2, 8, NULL, 2, 1, NULL, '№ ЛС - 001251', 2001, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'Folacin', NULL, 'Acidum folicum', '5', 1, NULL, 2, 2, '№10, №20, №30', 5, 1, NULL, '№ ЛС - 001513', 1992, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'Rozamet', 2, 'Metronidazole', '1', 4, NULL, 2, 8, NULL, 2, 1, NULL, 'П №012373/01', 1981, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'Glautam', NULL, 'Timolol', '0.25 and 0.5', 4, NULL, 2, 9, '5 ml', 2, 1, NULL, 'ЛСР-000081/08', 1986, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 'Betacentrin', 3, 'Betahistine', '8 and 16', 1, NULL, 2, NULL, NULL, 3, 1, NULL, 'ЛРС-001572/08', 1991, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 'Acnecutan', 4, 'Isotretinoin', '10', 2, '', 2, 10, '', 2, 1, 1, 'ЛСР - 004782/09', NULL, NULL, 1, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(13, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, '№ KZ 16.01.78.003.E.002988.05.12', 1986, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'Feminal', NULL, 'Trifolium pratense', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, '№ KZ 16.01.78.003.E004103.03.11', 2004, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'Aqua Maris Strong', 1, 'Seawater', '', 1, '', 2, 1, '', 3, 1, 1, 'ЛП-000810', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(16, 'Aqua Maris Plus', 1, 'Seawater', '', 1, '', 2, 1, '', 2, 1, 1, 'ЛП-001359', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(17, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 11, NULL, 3, 1, NULL, 'ФСЗ 2010/07753', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'Aqua Maris ', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, 'sea salt and enriched sea salt', 3, 1, NULL, 'ФСЗ 2010/07752', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 'Ksalatamax', 1, 'Latanoprostum', '', 1, '', 2, 12, '', 2, 2, 1, 'ЛП-000193', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(20, 'Adrience ® Basics', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU.77.01.34.001.Е.008072.06.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 'Adrience ® Oligisource', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU.77.01.34.001.Е.005719.05.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 'Adrience ® Aqualift', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU.77.01.34.001.Е.005720.05.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 'Adrience ® Marine', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU 77.01.34.001.Е.005717.05.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 5, 7, NULL, 2, 1, NULL, 'RU.77.01.34.001E.010359.07.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 'Aqua Maris Baby', NULL, 'Seawater', '50', 2, NULL, 4, 13, NULL, 3, 1, NULL, 'ФСЗ 2011/09268', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 'Aqua Maris Norm', NULL, 'Seawater', '50, 100 and 150', 2, NULL, 4, NULL, NULL, 3, 1, NULL, 'ФСЗ 2011/09269', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 'Aqua Maris Oto', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, NULL, 3, 1, NULL, 'ФСЗ 2011/09269', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(28, 'Zerkalin', 5, 'Сlindamycin hydrochloride', '', 1, '', 2, 1, '', 2, 1, 1, 'ЛП-000534', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(29, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 5, 14, NULL, 2, 1, NULL, 'RU.77.99.29.001.E.004378.06.14', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(30, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 5, 15, NULL, 2, 1, NULL, 'RU.77.99.29.001.E.004377.06.14', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(31, 'Laka Medcoat', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'KZ.16.01.79.009.E.002755.05.12', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(32, 'Lutein Jadran', NULL, 'FloraGlo Lutein', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'KZ.16.01.78.003.E.001933.03.12', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(33, 'Betliben', 6, 'Betamethasone dipropionate', '', 1, '', 2, 7, '', 2, 1, 1, 'ЛП-001654', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(34, 'Betliben', 6, 'Betamethasone dipropionate', '', 1, '', 2, 8, '', 2, 1, 1, 'ЛП-001659', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(35, 'Adiarin', NULL, 'Gelatin tannate', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'KZ.16.01.78.003.E.003549.06.12', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(36, 'Rinomaris', 7, 'Xylomethazolinum', '0,05', 4, '', 2, 3, '', 2, 1, 1, 'ЛП-001909', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(37, 'D-Panthenol', NULL, 'Dexpanthenolum', NULL, NULL, NULL, 5, 13, NULL, 2, 1, NULL, 'KZ.16.01.79.001.E.000326.02.13', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(38, 'Omega-3 Jadran', NULL, 'Omega-3 ', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'KZ.16.01.78.003.E.000598.04.13', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(39, 'Aqua Maris Sens', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, NULL, 3, 1, NULL, 'РЗН 2014/1548', 1992, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(40, 'Septogal', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1985, 'Variation. Preparation of the documents.', NULL, NULL, NULL, NULL, NULL, 3),
(41, 'Amorolfin', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1979, 'New registration. Preparation of the documents. We are waiting for approval  from HQ for start of registration procedure.', NULL, NULL, NULL, NULL, NULL, 1),
(42, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 4, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'New registration. Preparation of the documents. ', NULL, NULL, NULL, NULL, NULL, 1),
(43, 'Ksalatamax', NULL, 'Latanoprostum', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Variation. The changes of the design, of the company site address, MA transfer (preparation of the documents).', NULL, NULL, NULL, NULL, NULL, 3),
(44, 'Optinol', NULL, NULL, NULL, NULL, NULL, 4, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'New registration. Preparation of the documents.', NULL, NULL, NULL, NULL, NULL, 1),
(45, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1979, 'New registration. Preparation of the documents.', NULL, NULL, NULL, NULL, NULL, 1),
(46, 'Folacin', NULL, 'Acidum folicum', NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1973, 'Variation. Shelf life variation. Analitical examination ', NULL, NULL, NULL, NULL, NULL, 3),
(47, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 3, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Re-registration according to Customs Union. Final stage.', NULL, NULL, NULL, NULL, NULL, 2),
(48, 'Adiarin', NULL, 'Gelatin tannate', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'New registration. Preparation of the documents.', NULL, NULL, NULL, NULL, NULL, 1),
(49, 'Altey', 1, 'Extractum radicum Althaeae officinalis', '5', 2, '', 2, 6, '', 1, 1, 1, '', NULL, NULL, 0, 1, NULL, 'Variation. New MAH - The project is closed.', 2, 1, 1, 1, 1, 3),
(50, 'Feminal', NULL, 'Trifolium pratense', NULL, NULL, NULL, 3, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Re-registration according to Customs Union. Final stage.', NULL, NULL, NULL, NULL, NULL, 2),
(51, 'Aqua Maris Plus ', NULL, 'Seawater', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1972, 'Variation of content.', NULL, NULL, NULL, NULL, NULL, 3),
(52, 'Omega-3 Jadran', NULL, 'Omega-3 ', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Re-registration according to Customs Union. Preparation of the documents.', NULL, NULL, NULL, NULL, NULL, 2),
(53, 'Lutein Jadran', NULL, 'FloraGlo Lutein', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Re-registration according to Customs Union. Documents were given for re-registration', NULL, NULL, NULL, NULL, NULL, 2),
(54, 'Adiarin', NULL, 'Gelatin tannate', NULL, NULL, NULL, 3, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1973, 'Re-registration according to Customs Union. Preparation of the documents.', NULL, NULL, NULL, NULL, NULL, 2),
(55, 'Dramina', 1, 'Dimenhydrinate', '50', 1, '', 2, 2, '№5, №10', 5, 1, 1, 'UA/8430/01/01', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(56, 'Septogal', 1, 'Benzalkonium chloride', '', 1, '', 2, 19, '№20', 2, 1, 1, 'UA/8797/01/01', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(57, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 4, 3, NULL, 3, 1, NULL, '№12659/2013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(58, 'Aqua Maris Baby', NULL, 'Seawater', '50', 2, NULL, 4, 20, NULL, 3, 1, NULL, '№12659/2013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(59, 'Aqua Maris', NULL, 'Seawater', '50 and 100', 2, NULL, 4, 20, NULL, 3, 1, NULL, '№12659/2013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(60, 'Aqua Maris Children', NULL, 'Seawater', '10', 2, NULL, 4, 4, NULL, 2, 1, NULL, '№12758/2013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(61, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 4, 21, NULL, 3, 1, NULL, '№12660/2013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(62, 'Meralys', 7, 'Xylomethazolinum', '0,1', 4, '', 2, 3, '', 2, 1, 1, '№ UA/12207/01/02', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(63, 'Meralys', 7, 'Xylomethazolinum', '0,05', 4, '', 2, 3, '', 2, 1, 1, '№ UA/12207/01/01', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(64, 'Folacin', 1, 'Acidum folicum', '5', 1, '', 2, 2, '30', 5, 1, 1, '№ UA/3244/01/01', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(65, 'Pantexol Jadran', 8, 'Dexpanthenol', '5', 4, '', 2, 8, '', 2, 1, 1, '№ UA/5876/01/01', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(66, 'Pantexol Jadran', 8, 'Dexpanthenol', '5', 4, '', 2, 22, '', 2, 1, 1, '№ UA/5876/02/01', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(67, 'Pantexol Jadran', 8, 'Dexpanthenol', '5', 4, '', 2, 23, '', 2, 1, 1, '', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(68, 'Rekoferon', 9, 'Interferon Alfa-2b', '500000', 6, '', 2, 24, '', 2, 2, 1, 'UA/10838/02/01', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(69, 'Rekoferon', 9, 'Interferon Alfa-2b', '1000000', 6, '', 2, 24, '', 2, 2, 1, 'UA/10838/02/02', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(70, 'Rekoferon', 9, 'Interferon Alfa-2b', '3000000', 6, '', 2, 24, '', 2, 2, 1, 'UA/10838/02/03', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(71, 'Rekoferon', 9, 'Interferon Alfa-2b', '5000000', 6, '', 2, 24, '', 2, 2, 1, 'UA/10838/02/04', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(72, 'Rekoferon', 9, 'Interferon Alfa-2b', '500000', 6, NULL, 2, 25, NULL, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(73, 'Rekoferon', 9, 'Interferon Alfa-2b', '1000000', 6, NULL, 2, 25, NULL, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(74, 'Rekoferon', 9, 'Interferon Alfa-2b', '3000000', 6, NULL, 2, 25, NULL, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(75, 'Rekoferon', 9, 'Interferon Alfa-2b', '5000000', 6, NULL, 2, 25, NULL, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(76, 'Lipoferon', 9, 'Interferon Alfa-2b', '250000', 5, NULL, 2, NULL, NULL, 2, 2, NULL, '863/11-300200000', NULL, 1982, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(77, 'Lipoferon', 9, 'Interferon Alfa-2b', '500000', 5, NULL, 2, NULL, NULL, 2, 2, NULL, '863/11-300200000', NULL, 1982, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(78, 'Lipoferon', 9, 'Interferon Alfa-2b', '1000000', 5, NULL, 2, NULL, NULL, 2, 2, NULL, '863/11-300200000', NULL, 1982, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(79, 'Virogel', 9, 'Interferon Alfa-2b', NULL, NULL, NULL, 2, NULL, NULL, 2, 2, NULL, '№ UA/4193/01/01', NULL, 1990, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(80, 'Rozamet', 2, 'Metronidazole', '1', 4, NULL, 2, 8, NULL, 2, 1, NULL, '№UA/7256/01/01', 2009, 2014, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(81, 'Kleverol', NULL, 'Trifolium pratense', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, '№05.03.02-03/128991', NULL, 1987, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(82, 'Vagisan', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 3, 26, '№15, №30', 2, 2, NULL, '№05.03.02-03/86802', NULL, 1990, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(83, 'Vagisal', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 4, 16, NULL, 2, 2, NULL, '№12898/2013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(84, 'Aqua Maris Strong', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, NULL, 3, 1, NULL, '№12655/2013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(85, 'Aqua Maris Plus', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, NULL, 2, 1, NULL, '№12656/2013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(86, 'Aqua Maris sens', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, NULL, 3, 1, NULL, '№12759/2013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(87, 'Acnetin', 4, 'Isotretinoin', '8 and 16', 1, NULL, 2, 10, NULL, 2, 1, NULL, '№UA/10316/01/01 №UA/10316/01/02', NULL, 1992, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(88, 'Aqua Maris', 1, 'Seawater', '', 1, '', 5, 11, '', 3, 1, 1, '№05.03.02-03/48236', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(89, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 5, NULL, 'sea salt/enriched sea salt', 3, 1, NULL, '№05.03.02-03/48590', NULL, 1996, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(90, 'Vagisan', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 5, 14, NULL, 2, 1, NULL, '№05.03.02-03/79757', NULL, 1980, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(91, 'Vagisan', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 5, 15, NULL, 2, 1, NULL, '№05.03.02-03/108530', NULL, 2004, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 5, 7, NULL, 2, 1, NULL, '№05.03.02-03/79886', NULL, 1979, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, 'Latanox', 10, 'Latanoprost', '0,005', 4, NULL, 2, 27, NULL, 2, 2, NULL, 'UA/12401/01/01', NULL, 1984, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(94, 'Acnesept', 11, 'Clindamycin hydrochloride', '1', 4, NULL, 2, 25, NULL, 2, 1, NULL, 'UA/12443/01/01', NULL, 1986, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(95, 'Lutein Jadran', NULL, 'FloraGlo Lutein', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, '№05.03.02-03/93224', NULL, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(96, 'Omega-3 Jadran', NULL, 'Omega-3 ', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, '№05.03.02-03/33572', NULL, 1992, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(97, 'Optinol', NULL, NULL, NULL, NULL, NULL, 4, 12, NULL, 2, 1, NULL, '№13352/2013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(98, 'Betliben', 6, 'Betamethasone dipropionate', NULL, NULL, NULL, 2, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical examination was finished.', NULL, NULL, NULL, NULL, NULL, 1),
(99, 'Betliben', 6, 'Betamethasone dipropionate', NULL, NULL, NULL, 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical examination was finished.', NULL, NULL, NULL, NULL, NULL, 1),
(100, 'Dorzol', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical examination was finished.', NULL, NULL, NULL, NULL, NULL, 1),
(101, 'Dorzotimol', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical examination was finished.', NULL, NULL, NULL, NULL, NULL, 1),
(102, 'Brimonidin', NULL, NULL, NULL, NULL, NULL, 2, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registration. Application was given for registration. The examination has been paused. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(103, 'Amorolfin', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registration. Preparation of the documents for registration. The examination has been paused. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(104, 'Adiarin', NULL, 'Gelatin tannate', NULL, NULL, NULL, 4, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registration. Preparation of the documents for registration. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(105, 'Septogal without sugar', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Examination of the documents.', NULL, NULL, NULL, NULL, NULL, 1),
(106, 'Folacin', NULL, 'Acidum folicum', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Re-registration. Preparation of the document. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 2),
(107, 'Latanox', 10, 'Latanoprost', '0,005', 4, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Variation. Change of company seat address and type of bottle. Examination of the documents.', NULL, NULL, NULL, NULL, NULL, 3),
(108, 'Dramina', NULL, 'Dimenhydrinate', NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Variation. Change of company seat address. Examination of the documents.', NULL, NULL, NULL, NULL, NULL, 3),
(109, 'Rozamet', 2, 'Metronidazole', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Variation. Change of company seat address. Examination of the documents.', NULL, NULL, NULL, NULL, NULL, 3),
(110, 'Meralys', 7, 'Xylomethazolinum', '0.1 and 0.05', 4, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Variation. Change of company seat address. Examination of the documents.', NULL, NULL, NULL, NULL, NULL, 3),
(111, 'Acnetin', 4, 'Isotretinoin', '8 and 16', 1, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1971, 'Variation. Change of company seat address. Examination of the documents.\r\nRe-registration. Documents were given for re-registration.', NULL, NULL, NULL, NULL, NULL, 3),
(112, 'Сertificate GMP for medicicne', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'GMP  Certificate was signed and received.', NULL, NULL, NULL, NULL, NULL, 1),
(113, 'Folacin', NULL, 'Acidum folicum', NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1979, 'Re-registration. Documents were given for re-registration', NULL, NULL, NULL, NULL, NULL, 2),
(114, 'Latanox', 10, 'Latanoprost', NULL, NULL, NULL, 2, 12, NULL, 2, 2, NULL, 'PK-ЛС-№017056', NULL, 1994, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(115, 'Acnet', 11, 'Clindamycin hydrochloride', NULL, NULL, NULL, 2, 25, NULL, 2, 1, NULL, 'PK-ЛС-№017045', NULL, 1994, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(116, 'Aqua Maris Plus', NULL, 'Seawater', NULL, NULL, NULL, 4, 13, NULL, 2, 1, NULL, 'РК-ИМН-5№000490', NULL, 1983, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(117, 'Aqua Maris Strong', 1, 'Seawater', '', 1, '', 4, 13, '', 3, 1, 1, 'РК-ИМН-5№000489', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(118, 'Lipoferon', 9, 'Interferon Alfa-2b', '250000', 6, NULL, 2, 24, NULL, 2, 2, NULL, 'РК-ЛС-5-№016103', NULL, 1989, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(119, 'Lipoferon', 9, 'Interferon Alfa-2b', '500000', 6, NULL, 2, 24, NULL, 2, 2, NULL, 'РК-ЛС-5-№016104', NULL, 1989, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(120, 'Lipoferon', 9, 'Interferon Alfa-2b', '1000000', 6, NULL, 2, 24, NULL, 2, 2, NULL, 'РК-ЛС -5-№016105', NULL, 1989, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(121, 'Lifferon', 9, 'Interferon Alfa-2b', '1000000', 6, NULL, 2, 24, NULL, 2, 2, NULL, 'РК-ЛС -5-№016109', NULL, 1989, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(122, 'Lifferon', 9, 'Interferon Alfa-2b', '3000000', 6, NULL, 2, 24, NULL, 2, 2, NULL, 'РК-ЛС-5-№016110', NULL, 1989, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(123, 'Lifferon', 9, 'Interferon Alfa-2b', '5000000', 6, NULL, 2, 24, NULL, 2, 2, NULL, 'РК-ЛС-5-016111', NULL, 1989, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(124, 'Lifferon', 9, 'Interferon Alfa-2b', '1000000', 6, NULL, 2, 25, NULL, 2, 2, NULL, 'РК-ЛС-5-№016106', NULL, 1989, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(125, 'Lifferon', 9, 'Interferon Alfa-2b', '3000000', 6, NULL, 2, 25, NULL, 2, 2, NULL, 'РК-ЛС-5-№016107', NULL, 1989, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(126, 'Lifferon', 9, 'Interferon Alfa-2b', '5000000', 6, NULL, 2, 25, NULL, 2, 2, NULL, 'РК-ЛС-5-№016107', NULL, 1989, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(127, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 2, 3, NULL, 3, 1, NULL, 'РК-ЛС-5- №016179', NULL, 1982, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(128, 'Aqua Maris', NULL, 'Seawater', '10', 2, NULL, 2, 4, NULL, 2, 1, NULL, 'РК-ЛС-5-№016178', NULL, 1982, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(129, 'Dramina', NULL, 'Dimenhydrinate', NULL, NULL, NULL, 2, 2, '№5, №10', 5, 1, NULL, 'РК-ЛС-5-№009621', 1983, 1988, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(130, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 3, 28, NULL, 2, 1, NULL, '№ KZ 16.01.78.003.E.002988.05.12', 1986, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(131, 'Feminal', NULL, 'Trifolium pratense', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, '№ KZ 16.01.78.003.E004103.03.11', 2004, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(132, 'Septogal', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 2, 19, '№20, №30', 2, 1, NULL, 'РК-ЛС-5-№010873', NULL, 2007, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(133, 'Rozamet', 2, 'Metronidazole', '1', 4, NULL, 2, 8, NULL, 2, 1, NULL, 'РК-ЛС-5-№010800', NULL, 1997, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(134, 'Folacin', NULL, 'Acidum folicum', '5', 1, NULL, 2, 2, '№10, №20, №30', 3, 1, NULL, 'РК-ЛС-5№019543', NULL, 2006, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(135, 'Virogel', 9, 'Interferon Alfa-2b', NULL, NULL, NULL, 2, 15, NULL, 2, 3, NULL, '№РК-ЛС-5-014431', NULL, 1981, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(136, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 2, 29, NULL, 3, 1, NULL, '№РК-ЛС-5-014742', NULL, 1984, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(137, 'Aqua Maris', NULL, 'Seawater', '50 and 100            ', 2, NULL, 4, 3, NULL, 3, 1, NULL, '№РК-ИМН-5-008621', NULL, 1986, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(138, 'Aqua Maris Children', NULL, 'Seawater', '50', 2, NULL, 4, 3, NULL, 3, 1, NULL, '№РК-ИМН-5-008622', NULL, 1986, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(139, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 4, 16, NULL, 2, 2, NULL, 'РК-ИМН-5№009686', NULL, 1987, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(140, 'Lutein Jadran', NULL, 'FloraGlo Lutein', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, '№ KZ 16.01.78.003.E.001933.03.12', 1983, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(141, 'Laka Medcoat', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'KZ.16.01.79.009.E.002755.05.12', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(142, 'Adrience ® Oligisource', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU.77.01.34.001.Е.005719.05.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(143, 'Adrience ® Aqualift', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU.77.01.34.001.Е.005720.05.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(144, 'Adrience ® Marine', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU 77.01.34.001.Е.005717.05.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(145, 'Adrience ® Basics', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU.77.01.34.001.Е.008072.06.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(146, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 5, 7, NULL, 2, 1, NULL, 'RU.77.01.34.001E.010359.07.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(147, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 5, 14, NULL, 2, 1, NULL, 'RU.77.99.01.001.E0395575.09.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(148, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 5, 15, NULL, 2, 1, NULL, 'RU.77.99.88.001.E.039575.09.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(149, 'Adiarin', NULL, 'Gelatin tannate', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'KZ.16.01.78.003.E.003549.06.12', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(150, 'Meralys', 7, 'Xylomethazolinum', '0,05', 4, NULL, 2, NULL, NULL, 2, 1, NULL, '№РК-ЛС-5-018660', NULL, 1997, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(151, 'Meralys', 7, 'Xylomethazolinum', '0,1', 4, NULL, 2, NULL, NULL, 2, 1, NULL, '№РК-ЛС-5-018661', NULL, 1997, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(152, 'D-Panthenol', NULL, 'Dexpanthenolum', NULL, NULL, NULL, 5, 13, NULL, 2, 1, NULL, 'KZ.16.01.79.001.E.000326.02.13', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(153, 'Omega-3 Jadran', NULL, 'Omega-3 ', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'KZ.16.01.78.003.E.000598.04.13', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(154, 'Aqua Maris Sens', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, NULL, 2, 1, NULL, 'РК-ИМН-5№011887', NULL, 1994, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(155, 'Betliben', 6, 'Betamethasone dipropionate', NULL, NULL, NULL, 2, 8, NULL, 2, 1, NULL, '№РК-ЛС-5-019827', NULL, 1992, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(156, 'Betliben', 6, 'Betamethasone dipropionate', NULL, NULL, NULL, 2, 7, NULL, 2, 1, NULL, '№РК-ЛС-5-019837', NULL, 2011, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(157, 'Optinol', NULL, NULL, NULL, NULL, NULL, 4, 12, NULL, 2, 1, NULL, 'РК-ИМН-5№013204', NULL, 1989, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(158, 'Amorolfin', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registration. Preparation of the documents for registration.  We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(159, 'Acnecutan', 4, 'Isotretinoin', NULL, NULL, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1983, 'New registration. Inspection of SMB site in August.', NULL, NULL, NULL, NULL, NULL, 1),
(160, 'Septogal', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1979, 'New registration. Preparation of the documents for registration. ', NULL, NULL, NULL, NULL, NULL, 1),
(161, 'Optinol', NULL, NULL, NULL, NULL, NULL, 4, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'New registration. The Registration Certificate was signed.', NULL, NULL, NULL, NULL, NULL, 1),
(162, 'Virogel', 9, 'Interferon Alfa-2b', NULL, NULL, NULL, 2, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Re-registration. Preparation of the documents for re-registration. The examination has been paused. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 2),
(163, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1973, 'Re-registration. Documents were given for re-registrarion.', NULL, NULL, NULL, NULL, NULL, 2),
(164, 'Feminal', NULL, 'Trifolium pratense', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Re-registration according to Customs Union. Final stage.', NULL, NULL, NULL, NULL, NULL, 2),
(165, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Re-registration according to Customs Union. Final stage.', NULL, NULL, NULL, NULL, NULL, 2),
(166, 'Lutein Jadran', NULL, 'FloraGlo Lutein', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Re-registration according to Customs Union. Preparation of the documents for re-registration', NULL, NULL, NULL, NULL, NULL, 2),
(167, 'Omega-3 Jadran', NULL, 'Omega-3 ', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Re-registration according to Customs Union. Preparation of the documents for re-registration', NULL, NULL, NULL, NULL, NULL, 2),
(168, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 3, NULL, 3, 1, NULL, '№ИМ-7.98996', 1991, 1996, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(169, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 4, NULL, 2, 1, NULL, '№ИМ-7.98996', 1991, 1996, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(170, 'Folacin', NULL, 'Acidum folicum', '5', 1, NULL, 4, 2, '№10, №20, №30', 3, 1, NULL, '№7974/06/12', 2004, 2009, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(171, 'Laka Medcoat', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'KZ.16.01.79.009.E.002755.05.12', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(172, 'Lutein Jadran', NULL, 'FloraGlo Lutein', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, '№ KZ 16.01.78.003.E.001933.03.12', 1983, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(173, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, '№ KZ 16.01.78.003.E.002988.05.12', 1986, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(174, 'Feminal', NULL, 'Trifolium pratense', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, '№ KZ 16.01.78.003.E004103.03.11', 2004, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(175, 'Adrience ® Oligisource', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU.77.01.34.001.Е.005719.05.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(176, 'Adrience ® Aqualift', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU.77.01.34.001.Е.005720.05.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(177, 'Adrience ® Marine', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU 77.01.34.001.Е.005717.05.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(178, 'Adrience ® Basics', NULL, 'AquaBIO-3 Complex', NULL, NULL, NULL, 5, NULL, NULL, 2, 1, NULL, 'RU.77.01.34.001.Е.008072.06.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(179, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 5, 7, NULL, 2, 1, NULL, 'RU.77.01.34.001E.010359.07.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(180, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 5, 14, NULL, 2, 1, NULL, 'RU.77.99.01.001.E0395575.09.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(181, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 5, 15, NULL, 2, 1, NULL, 'RU.77.99.88.001.E.039575.09.11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(182, 'Adiarin', NULL, 'Gelatin tannate', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'KZ.16.01.78.003.E.003549.06.12', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(183, 'Dramina', NULL, 'Dimenhydrinate', NULL, NULL, NULL, 4, 2, NULL, 5, 1, NULL, '№10045/12', 1996, 2001, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(184, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 29, NULL, 3, 1, NULL, 'ИМ-7.99629', 1986, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(185, 'Aqua Maris Strong', 1, 'Seawater', '', 1, '', 4, 1, '', 3, 1, 1, 'ИМ-7.99629', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(186, 'Aqua Maris Plus', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, NULL, 2, 1, NULL, 'ИМ-7.99629', 1986, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(187, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 11, 'irrigation system and sea salt', 3, 1, NULL, 'ИМ-7.99629', 1986, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(188, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 11, 'sea salt', 3, 1, NULL, 'ИМ-7.99629', 1986, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(189, 'D-Panthenol', NULL, 'Dexpanthenolum', NULL, NULL, NULL, 5, 13, NULL, 2, 1, NULL, 'KZ.16.01.79.001.E.000326.02.13', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(190, 'Omega-3 Jadran', NULL, 'Omega-3 ', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'KZ.16.01.78.003.E.000598.04.13', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(191, 'Aqua Maris Norm', NULL, 'Seawater', '50, 100 and 150', 2, NULL, 4, 3, NULL, 3, 1, NULL, 'ИМ-7.100894', 1999, 2004, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(192, 'Aqua Maris Baby', NULL, 'Seawater', NULL, NULL, NULL, 4, 3, NULL, 3, 1, NULL, 'ИМ-7.100896', 1999, 2004, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(193, 'Aqua Maris sens', NULL, 'Seawater', NULL, NULL, NULL, 4, 3, NULL, 3, 1, NULL, 'ИМ-7.100895', 1999, 2004, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(194, 'Optinol', NULL, NULL, NULL, NULL, NULL, 4, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(195, 'Rozamet', 2, 'Metronidazole', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registration. Received the program of clinical trials from  the Ministry of Health. The program  presented for approval to the clinic. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(196, 'Meralys', 7, 'Xylomethazolinum', NULL, NULL, NULL, 4, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registration. Received the program of clinical trials from  the Ministry of Health. The program  presented for approval to the clinic. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(197, 'Ksalatamax', NULL, 'Latanoprostum', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registration. Documents were given for registration. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(198, 'Optinol', NULL, NULL, NULL, NULL, NULL, 4, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registration. The Registration Certificate was signed and received. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(199, 'Acnecutan', 4, 'Isotretinoin', NULL, NULL, NULL, 4, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registration. Preparation of the documents for registration. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(200, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registration. Preparation of the documents. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(201, 'Zerkalin', 5, 'Сlindamycin hydrochloride', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'New registraton. Preparation of the documents for registration. We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(202, 'Dramina', NULL, 'Dimenhydrinate', '50', 1, NULL, 2, 2, '№5, №10', 5, 1, NULL, '№11776', 1990, 1995, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(203, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 2, 4, NULL, 2, 1, NULL, '№11712', 1985, 1990, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(204, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 2, 3, NULL, 3, 1, NULL, '№11713', 1985, 1990, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(205, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 2, 29, NULL, 3, 1, NULL, '№13211', 1982, 1987, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(206, 'Septogal', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 2, 19, NULL, 2, 1, NULL, '№7891', 1984, 1984, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(207, 'Folacin', NULL, 'Acidum folicum', '5', 1, NULL, 2, 2, NULL, 5, 1, NULL, '№10266', 1994, 1999, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(208, 'Rozamet', 2, 'Metronidazole', NULL, NULL, NULL, 2, 8, NULL, 2, 1, NULL, '№10557', 1995, 2000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(209, 'Ksalatamax', NULL, 'Latanoprostum', NULL, NULL, NULL, 2, 12, NULL, 2, 2, NULL, '№12432', 2001, 2006, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(210, 'Rinomaris', 7, 'Xylomethazolinum', '0,1', 4, NULL, 2, 3, NULL, 2, 1, NULL, '№12698', 1983, 1988, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(211, 'Rinomaris', 7, 'Xylomethazolinum', '0,05', 4, NULL, 2, 3, NULL, 2, 1, NULL, '№12697', 1983, 1988, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(212, 'Aqua Maris Baby', NULL, 'Seawater', NULL, NULL, NULL, 2, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1973, 'New registration. Documents were given for registration.', NULL, NULL, NULL, NULL, NULL, 1),
(213, 'Aqua Maris', NULL, 'Seawater', '50, 100 and 150', 2, NULL, 2, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1973, 'New registration. Documents were given for registration.', NULL, NULL, NULL, NULL, NULL, 1),
(214, 'Aqua Maris Strong', 1, 'Seawater', '', 1, '', 2, 30, '', 1, 1, 1, '', NULL, NULL, 0, 1, NULL, 'New registration. Examination of the documents.', 1, 1, 1, 1, 1, 1),
(215, 'Aqua Maris Plus', NULL, 'Seawater', NULL, NULL, NULL, 2, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1973, 'New registration. Examination of the documents.', NULL, NULL, NULL, NULL, NULL, 1),
(216, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Preparation of stikers.', NULL, NULL, NULL, NULL, NULL, 1),
(217, 'Feminal', NULL, 'Trifolium pratense', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Preparation of stikers.', NULL, NULL, NULL, NULL, NULL, 1),
(218, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Preparation of stikers.', NULL, NULL, NULL, NULL, NULL, 1),
(219, 'Vagisan', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 3, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Preparation of stikers.', NULL, NULL, NULL, NULL, NULL, 1),
(220, 'Vagisan', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 4, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Preparation of stikers.', NULL, NULL, NULL, NULL, NULL, 1),
(221, 'Vagisan', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 5, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Preparation of stikers.', NULL, NULL, NULL, NULL, NULL, 1),
(222, 'Vagisan', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 5, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Preparation of stikers.', NULL, NULL, NULL, NULL, NULL, 1),
(223, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 2, 3, NULL, 3, 1, NULL, 'DV №08-01868', NULL, 1993, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(224, 'Aqua Maris', NULL, 'Seawater', '10', 2, NULL, 2, 4, NULL, 2, 1, NULL, 'DV №08-01866', NULL, 1993, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(225, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 2, 29, NULL, 3, 1, NULL, 'DV №10-00101', NULL, 2009, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(226, 'Septogal', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 2, 19, '№20, №30', 2, 1, NULL, 'DV №10-00161', NULL, 2001, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(227, 'Rinomaris', 7, 'Xylomethazolinum', NULL, NULL, NULL, 2, NULL, NULL, 2, 1, NULL, 'DV №12-0813', NULL, 1976, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(228, 'Aqua Maris Plus', NULL, 'Seawater', NULL, NULL, NULL, 2, NULL, NULL, 2, 1, NULL, 'DV №12-0810', NULL, 1976, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(229, 'Aqua Maris Strong', 1, 'Seawater', '', 1, '', 2, 1, '', 3, 1, 1, 'DV №12-0809', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(230, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 3, 28, NULL, 2, 1, NULL, 'The conclusion before import', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(231, 'Feminal', NULL, 'Trifolium pratense', NULL, NULL, NULL, 3, 10, NULL, 2, 1, NULL, 'The conclusion before import', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(232, 'Lutein Jadran', NULL, 'FloraGlo Lutein', NULL, NULL, NULL, 3, 10, NULL, 2, 1, NULL, 'The conclusion before import', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(233, 'Aqua Maris Baby', NULL, 'Seawater', '50', 2, NULL, 4, NULL, NULL, 3, 1, NULL, 'The conclusion before import', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(234, 'Aqua Maris Norm', NULL, 'Seawater', '50, 100 and 150', 2, NULL, 4, NULL, NULL, 3, 1, NULL, 'The conclusion before import', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(235, 'Aqua Maris Oto', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, NULL, 3, 1, NULL, 'The conclusion before import', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(236, 'Ksalatamax', NULL, 'Latanoprostum', NULL, NULL, NULL, 2, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Final stage', NULL, NULL, NULL, NULL, NULL, 1),
(237, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Re-registration. Final stage', NULL, NULL, NULL, NULL, NULL, 2),
(238, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'Re-registration. Final stage', NULL, NULL, NULL, NULL, NULL, 2),
(239, 'Folacin', NULL, 'Acidum folicum', NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical expertise', NULL, NULL, NULL, NULL, NULL, 1),
(240, 'Rozamet', 2, 'Metronidazole', NULL, NULL, NULL, 2, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical expertise', NULL, NULL, NULL, NULL, NULL, 1),
(241, 'Feminal', NULL, 'Trifolium pratense', NULL, NULL, NULL, 3, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'New registration. Getting of permission for import in BAA category. Document was received.', NULL, NULL, NULL, NULL, NULL, 1),
(242, 'Septogal', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 2, 19, '№20', 2, 1, NULL, '№554', NULL, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(243, 'Dramina', NULL, 'Dimenhydrinate', '50', 1, NULL, 2, 2, '№5', 5, 1, NULL, '№ р-002182', NULL, 1981, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(244, 'Dramina', NULL, 'Dimenhydrinate', '50', 1, NULL, 2, 2, '№10', 5, 1, NULL, '№ р-002182', NULL, 1981, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(245, 'Rozamet', 2, 'Metronidazole', '1', 4, NULL, 2, 8, NULL, 2, 1, NULL, '№ р-002801', NULL, 1992, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(246, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 4, 3, NULL, 3, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(247, 'Aqua Maris Children', NULL, 'Seawater', '10', 2, NULL, 4, 4, NULL, 2, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(248, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 2, 29, NULL, 3, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(249, 'Ksalatamax', NULL, 'Latanoprostum', NULL, NULL, NULL, 2, 12, '№3', 2, 1, NULL, '№ R-011299', NULL, 2008, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(250, 'Ksalatamax', NULL, 'Latanoprostum', NULL, NULL, NULL, 2, 12, '№1', 2, 1, NULL, '№ R - 011274', NULL, 2008, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(251, 'Rinomaris', 7, 'Xylomethazolinum', '0,05', 4, NULL, 2, 3, NULL, 2, 1, NULL, '№ R-011273', NULL, 2008, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(252, 'Rinomaris', 7, 'Xylomethazolinum', '0,1', 4, NULL, 2, 3, NULL, 2, 1, NULL, '№R-011296', NULL, 2008, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(253, 'Aqua Maris', NULL, 'Seawater', '50, 100  and 150', 2, NULL, 4, 31, NULL, 3, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(254, 'Septogal', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1973, 'Re-registration with new content', NULL, NULL, NULL, NULL, NULL, 2),
(255, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 4, 3, NULL, 3, 1, NULL, 'Without Registration Certificate', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(256, 'Aqua Maris', NULL, 'Seawater', '10', 2, NULL, 4, 4, NULL, 2, 1, NULL, 'Without Registration Certificate', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(257, 'Aqua Maris Strong', NULL, 'Seawater', NULL, NULL, NULL, 4, 30, NULL, 3, 1, NULL, 'Without Registration Certificate', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(258, 'Aqua Maris Plus', NULL, 'Seawater', NULL, NULL, NULL, 4, 30, NULL, 2, 1, NULL, 'Without Registration Certificate', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(259, 'Aqua Maris norm', NULL, 'Seawater', '50, 100  and 150', NULL, NULL, 4, 20, NULL, 3, 1, NULL, 'Without Registration Certificate', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(260, 'Aqua Maris Oto', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, NULL, 3, 1, NULL, 'Without Registration Certificate', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(261, 'Septogal', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 4, 19, '№20, №30', 2, 1, NULL, '№1398', NULL, 1996, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `products` (`id`, `product_name`, `international_nonproprietary_name_id`, `active_ingredient`, `quantity_ai`, `dosage_id`, `composition`, `status_id`, `pharmaceutical_form_id`, `packaging`, `shelf_life_id`, `storage_condition_id`, `approval_condition_id`, `registration_certificate_number`, `registration_certificate_date`, `period_of_validity`, `unlimited_validity`, `registration_stage_id`, `registration_stage_date`, `comment`, `manufacturer`, `manufacturer_primary`, `manufacturer_secondary`, `quality_control`, `marketing_authorisation_holder`, `type_of_process`) VALUES
(262, 'Dramina', NULL, 'Dimenhydrinate', NULL, NULL, NULL, 4, 2, '№5, №10', 5, 1, NULL, '№14360', NULL, 1988, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(263, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 29, NULL, 3, 1, NULL, '№14677', NULL, 1992, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(264, 'Folacin', NULL, 'Acidum folicum', NULL, NULL, NULL, 4, 2, NULL, 5, 1, NULL, '15521', NULL, 2003, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(265, 'Rozamet', 2, 'Metronidazole', NULL, NULL, NULL, 4, 8, NULL, 2, 1, NULL, '17850', NULL, 1990, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(266, 'Feminal', NULL, 'Trifolium pratense', NULL, NULL, NULL, 3, 10, NULL, 2, 1, NULL, '№ 0400', 2004, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(267, 'Rinomaris', 7, 'Xylomethazolinum', '0,05', 4, NULL, 4, 13, NULL, 2, 1, NULL, '№19211', 1987, 1992, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(268, 'Rinomaris', 7, 'Xylomethazolinum', '0,1', 4, NULL, 4, 13, NULL, 2, 1, NULL, '№19212', 1987, 1992, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(269, 'Ksalatamax', NULL, 'Latanoprostum', NULL, NULL, NULL, 4, 12, NULL, 2, 2, NULL, '№19213', 1987, 1992, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(270, 'Omega-3 Jadran', NULL, 'Omega-3 ', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'Without Registration Certificate', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(271, 'Lutein Jadran', NULL, 'FloraGlo Lutein', NULL, NULL, NULL, 3, NULL, NULL, 2, 1, NULL, 'Without Registration Certificate', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(272, 'Septogal', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 4, 13, NULL, 2, 1, NULL, 'Without Registration Certificate', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(273, 'Infagel', NULL, NULL, '2, 3 and 5', 3, NULL, 2, NULL, '№1', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Variation. Documents were signed and received.', NULL, NULL, NULL, NULL, NULL, 3),
(274, 'Reafferon', 9, 'Interferon Alfa-2b', '250000', 5, NULL, 2, 24, '5', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Variation. Documents were signed and received.', NULL, NULL, NULL, NULL, NULL, 3),
(275, 'Reafferon', 9, 'Interferon Alfa-2b', '500000', 5, NULL, 2, 24, '5', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Variation. Documents were signed and received.', NULL, NULL, NULL, NULL, NULL, 3),
(276, 'Reafferon', 9, 'Interferon Alfa-2b', '1000000', 5, NULL, 2, 24, '5', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1976, 'Variation. Documents were signed and received.', NULL, NULL, NULL, NULL, NULL, 3),
(277, 'Dramina', NULL, 'Dimenhydrinate', NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1971, 'Re-registration. Documents were given for re-registration. The examination has been paused.', NULL, NULL, NULL, NULL, NULL, 2),
(278, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 2, 3, NULL, 3, 1, NULL, 'ЛС-Б №008257', NULL, 1998, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(279, 'Aqua Maris', NULL, 'Seawater', '10', 2, NULL, 2, 4, NULL, 2, 1, NULL, 'ЛС-Б №008258', NULL, 1998, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(280, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 2, 29, NULL, 3, 1, NULL, 'ЛС-Б №008256', NULL, 1998, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(281, 'Aqua Maris Strong', 1, 'Seawater', '', 1, '', 2, 13, '', 3, 1, 1, 'ЛС-А№008529', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(282, 'Rinimaris', 7, 'Xylomethazolinum', '0,05', 4, NULL, 2, 3, NULL, 2, 1, NULL, 'ЛС-А №008938', NULL, 2007, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(283, 'Rinimaris', 7, 'Xylomethazolinum', '0,1', 4, NULL, 2, 3, NULL, 2, 1, NULL, 'ЛС-Б №008939', NULL, 2007, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(284, 'Aqua Maris Plus', NULL, 'Seawater', NULL, NULL, NULL, 2, NULL, NULL, 2, 1, NULL, 'ЛС-А №008626', NULL, 2005, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(285, 'Dramina', NULL, 'Dimenhydrinate', NULL, NULL, NULL, 2, 2, NULL, 5, 1, NULL, 'ЛС-А №008457', NULL, 2008, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(286, 'Ksalatamax', NULL, 'Latanoprostum', NULL, NULL, NULL, 2, 9, NULL, 2, 2, NULL, 'ЛС-А №009057', NULL, 2014, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(287, 'Aqua Maris Norm', NULL, 'Seawater', '50, 100  and 150', 2, NULL, 4, NULL, NULL, 3, 1, NULL, 'ИМ-А №00956', NULL, 2014, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(288, 'Aqua Maris Baby', NULL, 'Seawater', '50', 2, NULL, 4, NULL, NULL, 3, 1, NULL, 'ИМ-А №009055', NULL, 2014, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(289, 'Aqua Maris Oto', NULL, 'Seawater', '50', 2, NULL, 4, NULL, NULL, 3, 1, NULL, 'ИМ-А№009054', NULL, 2014, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(290, 'Folacin', NULL, 'Acidum folicum', NULL, NULL, NULL, 2, 2, NULL, 5, 1, NULL, 'ЛС-А№009393', NULL, 2009, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(291, 'Rozamet', 2, 'Metronidazole', NULL, NULL, NULL, 2, 8, NULL, 2, 1, NULL, 'ЛС-А№009755', NULL, 1999, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(292, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 11, 'sea salt', 3, 1, NULL, 'ИМ-Б №010067', NULL, 2005, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(293, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 11, 'enriched sea salt', 3, 1, NULL, 'ИМ-Б №010068', NULL, 2005, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(294, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, 'sea salt', 3, 1, NULL, 'ИМ-Б №010069', NULL, 2005, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(295, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, 'enriched sea salt', 3, 1, NULL, 'ИМ-Б №010070', NULL, 2005, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(296, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 2, 3, NULL, 3, 1, NULL, '№004120', NULL, 2004, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(297, 'Aqua Maris', NULL, 'Seawater', '10', 2, NULL, 2, 4, NULL, 2, 1, NULL, '№004121', NULL, 2004, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(298, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 2, 29, NULL, 3, 1, NULL, '№004122', NULL, 2004, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(299, 'Aqua Maris Strong', 1, 'Seawater', '', 1, '', 2, 13, '', 3, 1, 1, '№004123', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(300, 'Aqua Maris Plus', NULL, 'Seawater', NULL, NULL, NULL, 2, NULL, NULL, 2, 1, NULL, '№004124', NULL, 2004, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(301, 'Dramina', NULL, 'Dimenhydrinate', NULL, NULL, NULL, 2, 2, NULL, 5, 1, NULL, '№004119', NULL, 2004, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(302, 'Rinomaris', 7, 'Xylomethazolinum', NULL, NULL, NULL, 2, 13, NULL, 2, 1, NULL, '№004501', NULL, 1997, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(303, 'Ksalatamax', NULL, 'Latanoprostum', NULL, NULL, NULL, 2, 12, NULL, 2, 2, NULL, '№004788', NULL, 1995, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(304, 'Folacin', NULL, 'Acidum folicum', NULL, NULL, NULL, 2, 2, NULL, 5, 1, NULL, '№004790', NULL, 1995, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(305, 'Rozamet', 2, 'Metronidazole', NULL, NULL, NULL, 2, 8, NULL, 2, 1, NULL, '№004789', NULL, 1995, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(306, 'Aqua Maris', NULL, 'Seawater', '50, 100  and 150', 2, NULL, 4, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical examination.', NULL, NULL, NULL, NULL, NULL, 1),
(307, 'Aqua Maris Baby', NULL, 'Seawater', '50', 2, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical examination.', NULL, NULL, NULL, NULL, NULL, 1),
(308, 'Feminal', NULL, 'Trifolium pratense', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical examination.', NULL, NULL, NULL, NULL, NULL, 1),
(309, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, NULL, 'irrigation system and salt', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical examination.', NULL, NULL, NULL, NULL, NULL, 1),
(310, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 4, 3, NULL, 3, 1, NULL, 'According to conclusion of Laboratory', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(311, 'Aqua Maris', NULL, 'Seawater', '10', 2, NULL, 4, 4, NULL, 2, 1, NULL, 'According to conclusion of Laboratory', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(312, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 4, 29, NULL, 3, 1, NULL, 'According to conclusion of Laboratory', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(313, 'Aqua Maris Strong', NULL, 'Seawater', NULL, NULL, NULL, 4, 13, NULL, 3, 1, NULL, 'According to conclusion of Laboratory', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(314, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 2, 3, NULL, 3, 1, NULL, 'КР-№6803', NULL, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(315, 'Aqua Maris', NULL, 'Seawater', '10', 2, NULL, 2, 4, NULL, 2, 1, NULL, 'КР-№6802', NULL, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(316, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 2, 29, NULL, 3, 1, NULL, 'КР-№6804', NULL, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(317, 'Dramina', NULL, 'Dimenhydrinate', NULL, NULL, NULL, 2, 2, '№5, №10', 5, 1, NULL, 'КР-№6805', NULL, 1991, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(318, 'Vagilak', NULL, 'Lactobacillus rhamnosus GR-1, \r\nLactobacillus reuteri RC-14', NULL, NULL, NULL, 3, 10, NULL, 2, 1, NULL, 'Р-2011-459 КР-N8673', NULL, 1985, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(319, 'Aqua Maris Strong', 1, 'Seawater', '', 1, '', 2, 3, '', 3, 1, 1, 'Р-2013-379 КР-№10484', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(320, 'Aqua Maris Plus', 1, 'Seawater', '', 1, '', 2, 3, '', 2, 1, 1, 'Р-2013-737 КР-№10662', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(321, 'Rinomaris', 7, 'Xylomethazolinum', '', 1, '', 2, 1, '', 2, 1, 1, 'Р-2013-737 КР-№10660', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(322, 'Ksalatamax', 1, 'Latanoprostum', '', 1, '', 2, 1, '', 2, 2, 1, 'Р-2013-737 КР-№10661', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(323, 'Folacin', NULL, 'Acidum folicum', NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical expertise.', NULL, NULL, NULL, NULL, NULL, 1),
(324, 'Rozamet', 2, 'Metronidazole', NULL, NULL, NULL, 2, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1975, 'New registration. Analitical expertise.', NULL, NULL, NULL, NULL, NULL, 1),
(325, 'Aqua Maris', NULL, 'Seawater', '30', 2, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1977, 'Re-registraion. Documents were given for re-registration', NULL, NULL, NULL, NULL, NULL, 2),
(326, 'Aqua Maris', NULL, 'Seawater', '10', 2, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1977, 'Re-registraion. Documents were given for re-registration', NULL, NULL, NULL, NULL, NULL, 2),
(327, 'Aqua Maris', NULL, 'Seawater', NULL, NULL, NULL, 2, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1979, 'Re-registraion. Documents were given for re-registration', NULL, NULL, NULL, NULL, NULL, 2),
(328, 'Dramina', NULL, 'Dimenhydrinate', NULL, NULL, NULL, 2, 2, '№5, №10', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1977, 'Re-registraion. Documents were given for re-registration', NULL, NULL, NULL, NULL, NULL, 2),
(329, 'Septogal', NULL, 'Benzalkonium chloride', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Preparation of the documents for registration  We find difficulty in forecasting.', NULL, NULL, NULL, NULL, NULL, 1),
(331, 'Acnecutan', 1, '', '0', 1, '', 1, 1, '', 1, 1, 1, '', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 1),
(332, '123', 1, '', '0', 1, '', 1, 1, '', 1, 1, 1, '', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(333, 'Faf', 1, '', '0', 1, '', 1, 1, '', 1, 1, 1, '', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(334, '444', 2, '', '0', 1, '', 1, 1, '', 1, 1, 1, '', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(335, 'Proverka3', 2, '', '0', 1, '', 1, 1, '', 1, 1, 1, '', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0),
(336, 'Glaumax', 1, '', '0', 1, '', 1, 1, '', 1, 1, 1, '', NULL, NULL, 0, 1, NULL, '', 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `products_countries`
--

CREATE TABLE IF NOT EXISTS `products_countries` (
`id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products_countries`
--

INSERT INTO `products_countries` (`id`, `product_id`, `country_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 32, 1),
(33, 33, 1),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1),
(37, 37, 1),
(38, 38, 1),
(39, 39, 1),
(40, 40, 1),
(41, 41, 1),
(42, 42, 1),
(43, 43, 1),
(44, 44, 1),
(45, 45, 1),
(46, 46, 1),
(47, 47, 1),
(48, 48, 1),
(49, 49, 1),
(50, 50, 1),
(51, 51, 1),
(52, 52, 1),
(53, 53, 1),
(54, 54, 1),
(55, 55, 2),
(56, 56, 2),
(57, 57, 2),
(58, 58, 2),
(59, 59, 2),
(60, 60, 2),
(61, 61, 2),
(62, 62, 2),
(63, 63, 2),
(64, 64, 2),
(65, 65, 2),
(66, 66, 2),
(67, 67, 2),
(68, 68, 2),
(69, 69, 2),
(70, 70, 2),
(71, 71, 2),
(72, 72, 2),
(73, 73, 2),
(74, 74, 2),
(75, 75, 2),
(76, 76, 2),
(77, 77, 2),
(78, 78, 2),
(79, 79, 2),
(80, 80, 2),
(81, 81, 2),
(82, 82, 2),
(83, 83, 2),
(84, 84, 2),
(85, 85, 2),
(86, 86, 2),
(87, 87, 2),
(88, 88, 2),
(89, 89, 2),
(90, 90, 2),
(91, 91, 2),
(92, 92, 2),
(93, 93, 2),
(94, 94, 2),
(95, 95, 2),
(96, 96, 2),
(97, 97, 2),
(98, 98, 2),
(99, 99, 2),
(100, 100, 2),
(101, 101, 2),
(102, 102, 2),
(103, 103, 2),
(104, 104, 2),
(105, 105, 2),
(106, 106, 2),
(107, 107, 2),
(108, 108, 2),
(109, 109, 2),
(110, 110, 2),
(111, 111, 2),
(112, 112, 2),
(113, 113, 2),
(114, 114, 3),
(115, 115, 3),
(116, 116, 3),
(117, 117, 3),
(118, 118, 3),
(119, 119, 3),
(120, 120, 3),
(121, 121, 3),
(122, 122, 3),
(123, 123, 3),
(124, 124, 3),
(125, 125, 3),
(126, 126, 3),
(127, 127, 3),
(128, 128, 3),
(129, 129, 3),
(130, 130, 3),
(131, 131, 3),
(132, 132, 3),
(133, 133, 3),
(134, 134, 3),
(135, 135, 3),
(136, 136, 3),
(137, 137, 3),
(138, 138, 3),
(139, 139, 3),
(140, 140, 3),
(141, 141, 3),
(142, 142, 3),
(143, 143, 3),
(144, 144, 3),
(145, 145, 3),
(146, 146, 3),
(147, 147, 3),
(148, 148, 3),
(149, 149, 3),
(150, 150, 3),
(151, 151, 3),
(152, 152, 3),
(153, 153, 3),
(154, 154, 3),
(155, 155, 3),
(156, 156, 3),
(157, 157, 3),
(158, 158, 3),
(159, 159, 3),
(160, 160, 3),
(161, 161, 3),
(162, 162, 3),
(163, 163, 3),
(164, 164, 3),
(165, 165, 3),
(166, 166, 3),
(167, 167, 3),
(168, 168, 4),
(169, 169, 4),
(170, 170, 4),
(171, 171, 4),
(172, 172, 4),
(173, 173, 4),
(174, 174, 4),
(175, 175, 4),
(176, 176, 4),
(177, 177, 4),
(178, 178, 4),
(179, 179, 4),
(180, 180, 4),
(181, 181, 4),
(182, 182, 4),
(183, 183, 4),
(184, 184, 4),
(185, 185, 4),
(186, 186, 4),
(187, 187, 4),
(188, 188, 4),
(189, 189, 4),
(190, 190, 4),
(191, 191, 4),
(192, 192, 4),
(193, 193, 4),
(194, 194, 4),
(195, 195, 4),
(196, 196, 4),
(197, 197, 4),
(198, 198, 4),
(199, 199, 4),
(200, 200, 4),
(201, 201, 4),
(202, 202, 5),
(203, 203, 5),
(204, 204, 5),
(205, 205, 5),
(206, 206, 5),
(207, 207, 5),
(208, 208, 5),
(209, 209, 5),
(210, 210, 5),
(211, 211, 5),
(212, 212, 5),
(213, 213, 5),
(214, 214, 5),
(215, 215, 5),
(216, 216, 5),
(217, 217, 5),
(218, 218, 5),
(219, 219, 5),
(220, 220, 5),
(221, 221, 5),
(222, 222, 5),
(223, 223, 6),
(224, 224, 6),
(225, 225, 6),
(226, 226, 6),
(227, 227, 6),
(228, 228, 6),
(229, 229, 6),
(230, 230, 6),
(231, 231, 6),
(232, 232, 6),
(233, 233, 6),
(234, 234, 6),
(235, 235, 6),
(236, 236, 6),
(237, 237, 6),
(238, 238, 6),
(239, 239, 6),
(240, 240, 6),
(241, 241, 6),
(242, 242, 7),
(243, 243, 7),
(244, 244, 7),
(245, 245, 7),
(246, 246, 7),
(247, 247, 7),
(248, 248, 7),
(249, 249, 7),
(250, 250, 7),
(251, 251, 7),
(252, 252, 7),
(253, 253, 7),
(254, 254, 7),
(255, 255, 8),
(256, 256, 8),
(257, 257, 8),
(258, 258, 8),
(259, 259, 8),
(260, 260, 8),
(261, 261, 8),
(262, 262, 8),
(263, 263, 8),
(264, 264, 8),
(265, 265, 8),
(266, 266, 8),
(267, 267, 8),
(268, 268, 8),
(269, 269, 8),
(270, 270, 8),
(271, 271, 8),
(272, 272, 8),
(273, 273, 8),
(274, 274, 8),
(275, 275, 8),
(276, 276, 8),
(277, 277, 8),
(278, 278, 9),
(279, 279, 9),
(280, 280, 9),
(281, 281, 9),
(282, 282, 9),
(283, 283, 9),
(284, 284, 9),
(285, 285, 9),
(286, 286, 9),
(287, 287, 9),
(288, 288, 9),
(289, 289, 9),
(290, 290, 9),
(291, 291, 9),
(292, 292, 9),
(293, 293, 9),
(294, 294, 9),
(295, 295, 9),
(296, 296, 10),
(297, 297, 10),
(298, 298, 10),
(299, 299, 10),
(300, 300, 10),
(301, 301, 10),
(302, 302, 10),
(303, 303, 10),
(304, 304, 10),
(305, 305, 10),
(306, 306, 10),
(307, 307, 10),
(308, 308, 10),
(309, 309, 10),
(310, 310, 11),
(311, 311, 11),
(312, 312, 11),
(313, 313, 11),
(314, 314, 12),
(315, 315, 12),
(316, 316, 12),
(317, 317, 12),
(318, 318, 12),
(319, 319, 12),
(320, 320, 12),
(321, 321, 12),
(322, 322, 12),
(323, 323, 12),
(324, 324, 12),
(325, 325, 12),
(326, 326, 12),
(327, 327, 12),
(328, 328, 12),
(329, 329, 12),
(331, 331, 1),
(332, 332, 12),
(333, 335, 1),
(334, 336, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_statuses`
--

CREATE TABLE IF NOT EXISTS `product_statuses` (
`id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_statuses`
--

INSERT INTO `product_statuses` (`id`, `status`) VALUES
(1, '-'),
(2, 'medicine'),
(3, 'BAA'),
(4, 'medical device'),
(5, 'cosmetics');

-- --------------------------------------------------------

--
-- Структура таблицы `registration_stages`
--

CREATE TABLE IF NOT EXISTS `registration_stages` (
`id` int(11) NOT NULL,
  `registration_stage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `registration_stages`
--

INSERT INTO `registration_stages` (`id`, `registration_stage`) VALUES
(1, 'Dossier was obtained'),
(2, 'Dossier is being translated'),
(3, 'Documents are being prepared for registration'),
(4, 'Application was submitted for registration'),
(5, 'Documents were submitted for registration'),
(6, 'Initial examination of documents'),
(7, 'Examination of documents'),
(8, 'Technical and toxicological trials'),
(9, 'Clinical trials'),
(10, 'Evaluation of clinical trials results'),
(11, 'Pharm examination'),
(12, 'Approval of Normative Document'),
(13, 'Approval  of leaflet'),
(14, 'Experts committee'),
(15, 'Final stage of registration'),
(16, 'Order is under signature'),
(17, 'Registration Certificate was obtained'),
(18, 'Preparation of package material'),
(19, 'Product registered');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'login', 'Login privileges, granted after account confirmation'),
(2, 'admin', 'Administrative user, has access to everything.');

-- --------------------------------------------------------

--
-- Структура таблицы `roles_users`
--

CREATE TABLE IF NOT EXISTS `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles_users`
--

INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(1, 2),
(2, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `shelf_lifes`
--

CREATE TABLE IF NOT EXISTS `shelf_lifes` (
`id` int(11) NOT NULL,
  `shelf_life` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shelf_lifes`
--

INSERT INTO `shelf_lifes` (`id`, `shelf_life`) VALUES
(1, '1 year'),
(2, '2 years'),
(3, '3 years'),
(4, '4 years'),
(5, '5 years');

-- --------------------------------------------------------

--
-- Структура таблицы `storage_conditions`
--

CREATE TABLE IF NOT EXISTS `storage_conditions` (
`id` int(11) NOT NULL,
  `storage_condition` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `storage_conditions`
--

INSERT INTO `storage_conditions` (`id`, `storage_condition`) VALUES
(1, 'At temperature not more than 25° C'),
(2, 'from 2 to 8° C'),
(3, 'from 0 to 10° C');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `logins`, `last_login`, `country_id`, `position`) VALUES
(1, 'Egor Isaev', 'mikrit@ai-tech.ru', 'mikrit', '496259cb6b4d9f3d3eaaf530c8534b847acf4c15ff8c56c0f319a3e0211814ac', 34, 1415616157, 1, 'Main admin'),
(2, 'Тест', 'test@test.ru', 'test', '18c7a796f76b61d396800f649243f7a58ed370154a3b39af52c48a819d0f0040', 65, 1438261624, 1, 'test 1'),
(3, 'Тест2', 'test2@test.ru', 'test2', '18c7a796f76b61d396800f649243f7a58ed370154a3b39af52c48a819d0f0040', 12, 1417588978, 2, 'test 2'),
(4, 'Ivan Ivanov', 'ivan@jljfjwf.ru', 'Ivan', '18c7a796f76b61d396800f649243f7a58ed370154a3b39af52c48a819d0f0040', 1, 1409906239, 1, ''),
(5, 'Petr Petrov', 'petr@ayfjle.ru', 'Petr', '18c7a796f76b61d396800f649243f7a58ed370154a3b39af52c48a819d0f0040', 17, 1409944825, 1, ''),
(6, 'qwerty', 'qwerty@qwerty.ru', 'qwerty', '18c7a796f76b61d396800f649243f7a58ed370154a3b39af52c48a819d0f0040', 3, 1416919475, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `user_tokens`
--

CREATE TABLE IF NOT EXISTS `user_tokens` (
`id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `approval_conditions`
--
ALTER TABLE `approval_conditions`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `changes`
--
ALTER TABLE `changes`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dosages`
--
ALTER TABLE `dosages`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `international_nonproprietary_names`
--
ALTER TABLE `international_nonproprietary_names`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pharmaceutical_forms`
--
ALTER TABLE `pharmaceutical_forms`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products_countries`
--
ALTER TABLE `products_countries`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_statuses`
--
ALTER TABLE `product_statuses`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `registration_stages`
--
ALTER TABLE `registration_stages`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uniq_name` (`name`);

--
-- Индексы таблицы `roles_users`
--
ALTER TABLE `roles_users`
 ADD PRIMARY KEY (`user_id`,`role_id`), ADD KEY `fk_role_id` (`role_id`);

--
-- Индексы таблицы `shelf_lifes`
--
ALTER TABLE `shelf_lifes`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `storage_conditions`
--
ALTER TABLE `storage_conditions`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uniq_username` (`username`), ADD UNIQUE KEY `uniq_email` (`email`);

--
-- Индексы таблицы `user_tokens`
--
ALTER TABLE `user_tokens`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uniq_token` (`token`), ADD KEY `fk_user_id` (`user_id`), ADD KEY `expires` (`expires`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `approval_conditions`
--
ALTER TABLE `approval_conditions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `changes`
--
ALTER TABLE `changes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `dosages`
--
ALTER TABLE `dosages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `international_nonproprietary_names`
--
ALTER TABLE `international_nonproprietary_names`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `pharmaceutical_forms`
--
ALTER TABLE `pharmaceutical_forms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=337;
--
-- AUTO_INCREMENT для таблицы `products_countries`
--
ALTER TABLE `products_countries`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=335;
--
-- AUTO_INCREMENT для таблицы `product_statuses`
--
ALTER TABLE `product_statuses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `registration_stages`
--
ALTER TABLE `registration_stages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `shelf_lifes`
--
ALTER TABLE `shelf_lifes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `storage_conditions`
--
ALTER TABLE `storage_conditions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `user_tokens`
--
ALTER TABLE `user_tokens`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `roles_users`
--
ALTER TABLE `roles_users`
ADD CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_tokens`
--
ALTER TABLE `user_tokens`
ADD CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

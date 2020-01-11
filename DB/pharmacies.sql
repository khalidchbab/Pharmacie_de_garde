-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 11 jan. 2020 à 14:37
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pharmacies`
--

-- --------------------------------------------------------

--
-- Structure de la table `phar_gard_tanger`
--

CREATE TABLE `phar_gard_tanger` (
  `ID` bigint(20) NOT NULL,
  `NAME` text DEFAULT NULL,
  `ADD` text DEFAULT NULL,
  `TEL` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `phar_gard_tanger`
--

INSERT INTO `phar_gard_tanger` (`ID`, `NAME`, `ADD`, `TEL`) VALUES
(0, 'Pharmacie AL AOUDA', '186, Avenue Principal, Hay Al Aouda', '+212 05 39 36 05 00'),
(1, 'Pharmacie BAB EL BHAR', '28, Rue Bab El  Assa, Kasbah', '+212 05 39 93 05 61'),
(2, 'Pharmacie PERLE DE MEDITERRANEE', 'Groupe Adoha avant kantarat Ouad Chatte, Tanja Balia', '+212 05 39 30 27 32'),
(3, 'Pharmacie SALAHEDDINE', '40A, Lot. Rhorfa, 2 lot Nr.1', '+212 05 39 31 56 88');

-- --------------------------------------------------------

--
-- Structure de la table `phar_tanger`
--

CREATE TABLE `phar_tanger` (
  `ID` bigint(20) NOT NULL,
  `NAME` text DEFAULT NULL,
  `ADD` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `phar_tanger`
--

INSERT INTO `phar_tanger` (`ID`, `NAME`, `ADD`) VALUES
(0, 'Grande Pharmacie Branes', '21, av Fayçal Ibn Abdelaziz TANGER'),
(1, 'Grande Pharmacie Malabata', 'av. Mohammed VI , résid. Al Hanae TANGER'),
(2, 'Grande Pharmacie Moderne', '32, Place du 9 avril 90000 TANGER'),
(3, 'Grande Pharmacie Rif', '17, av Mly Ali Chrif , Bni Makada TANGER'),
(4, 'Grande Pharmacie Souani', '43, bd d\'Anfa Souani TANGER'),
(5, 'Grande Pharmacie Zeroual', '69, rue de Fes TANGER'),
(6, 'La Grande Pharmacie Assia', '30 B, lotis. Laayoune 1 TANGER'),
(7, 'Para Pharmacie Mershan', '143, av Hassan II TANGER'),
(8, 'Pharmacie 2000', 'av. de la Paix , résid. Chourouk, bloc B, n°4 TANGER'),
(9, 'Pharmacie 6 Novembre', '30, résid. Marjane , rte de Rabat TANGER'),
(10, 'Pharmacie Abbes', '88 Bis, Azib hadj Kaddour , q. Laouina TANGER'),
(11, 'Pharmacie Abi Abass Sebti', '169, rue Ibn Batouta TANGER'),
(12, 'Pharmacie Achourouk', 'hay haj Mokhtar , rue 60 n°13 Bendibanet TANGER'),
(13, 'Pharmacie Afilal', '30, av Allal Fassi, Belle vue , Drissia II TANGER'),
(14, 'Pharmacie Ahlen', 'av. des F.a.r. , résid. Habiba bloc A1 loc. n°7 TANGER'),
(15, 'Pharmacie Al Andalous', '118, bd Mohamed V TANGER'),
(16, 'Pharmacie Al Bayrouni', '62, lotiss. Alosra TANGER'),
(17, 'Pharmacie Al Ihssane', 'rue Boutrika , q. Mesnana 90000 TANGER'),
(18, 'Pharmacie Al Moujahidine', '54, rue AlMoujahidine TANGER'),
(19, 'Pharmacie Al-Ghazali', '73, av. Harroun Errachid Colonia TANGER'),
(20, 'Pharmacie AlAndalous', '118, bd Mohammed V , résid. AlAndalous TANGER'),
(21, 'Pharmacie AlAouda', 'bd. Tunsie , Hay AlAouda Beni Makada TANGER'),
(22, 'Pharmacie AlBalsam', 'hay Azib Haj Kadour , bloc A résid. Mabrouka TANGER'),
(23, 'Pharmacie AlBoughaz', '78, Rue du Mexique 90000 TANGER'),
(24, 'Pharmacie AlFajr', '3900, av Al Inara , q. Mesnana TANGER'),
(25, 'Pharmacie AlFarabi', '165, bd prince Héritier TANGER'),
(26, 'Pharmacie AlHamd', 'bd. des Far , cplxe Hassani TANGER'),
(27, 'Pharmacie AlHanae', 'av. Kods, hay AlHane 1, rte Aouama , lot.120 TANGER'),
(28, 'Pharmacie AlImam Malik', 'av. Abbou Kasim Cherif Sebti , lot. Safif, Casabarata TANGER'),
(29, 'Pharmacie AlJamae', 'Hay Kouadess Bir Chifa, n°127 , Beni Makada Dradeb TANGER'),
(30, 'Pharmacie AlKantara', '84, av Rahal Ben Ahmed , Al Kantara Ben dibane TANGER'),
(31, 'Pharmacie AlMajd', 'Lotiss. AlMajd n°307 TANGER'),
(32, 'Pharmacie AlMarsa', '21, rue Ibn Zohr q. Espagnôl TANGER'),
(33, 'Pharmacie AlMassira', 'hay Mesnana , Khandak Roman TANGER'),
(34, 'Pharmacie AlMouna', 'lot. Ibn Khaldoun , rue E n°60 Bir Chifae TANGER'),
(35, 'Pharmacie AlRaha', '115, av Tarik Ibn Ziad , hay Sourien TANGER'),
(36, 'Pharmacie AlRahma', 'Mghogha Jdida, rte de Tétouan , lot. 140 B TANGER'),
(37, 'Pharmacie AlYasmine', 'bd. Med. Zahraoui , lot. AlYasmine 28 A TANGER'),
(38, 'Pharmacie Alamal', '20, av. My Abdelaziz , imm. Dar AlAmal TANGER'),
(39, 'Pharmacie Alazhar', 'hay Alaoui , rue 2 n°10, Ben Diban TANGER'),
(40, 'Pharmacie Albaraka', '2, place du koweit , imm. Iberia TANGER'),
(41, 'Pharmacie Alfath', '26, bd Royaume d\'Arabie Saoudite , hay Gourziana 90000 TANGER'),
(42, 'Pharmacie Alhambra', '30, bd Aicha Moussafir , hay haddad Aouama TANGER'),
(43, 'Pharmacie Alhilal', 'bd. Far, lot ennasr , Ben Dibane TANGER'),
(44, 'Pharmacie Alhouria', '149, Lotiss. Lalla Meriem , hay Essalam II rte. Aouama TANGER'),
(45, 'Pharmacie Alidaa', 'av. Jad AlMaoula, lotiss. Ard Bouhsain n°92 TANGER'),
(46, 'Pharmacie Alidrissi', 'hay ElMokadem , rue 152 n°18 Bir Chifae TANGER'),
(47, 'Pharmacie Alissrae', '54, hay Benkirane , rte de Tétouan TANGER'),
(48, 'Pharmacie Alkhair', 'hay bouniar , rue 7 n°33 Ben Didane TANGER'),
(49, 'Pharmacie Alkodss', '51 B, rue Mansour Ibn Abi Amir Drissia I TANGER'),
(50, 'Pharmacie Almadina', 'Hay Almojahidine , Houmat Albakach lotis. Almadina TANGER'),
(51, 'Pharmacie Almasjid', 'bd. des Far, Azib Haj Kadour , résid. Alkhalij TANGER'),
(52, 'Pharmacie Anas', '78, rue Al Hoceima, Lot. Annasr , Ben Dibane TANGER'),
(53, 'Pharmacie Andalucia', '86, lotiss. Andalous , rte Al Aouama TANGER'),
(54, 'Pharmacie Anegay', '8, rue Semmarine , souk Dakhel 90000 TANGER'),
(55, 'Pharmacie Anfa', '23, av. Haroun Errachid TANGER'),
(56, 'Pharmacie Annajat', '114, av. Mly Rachid TANGER'),
(57, 'Pharmacie Annasr', '1, bd. Martil Dar Mouigna , Souani TANGER'),
(58, 'Pharmacie Annour', '15, lot. Dhar Ejjaïdi, av. Mouritanie TANGER'),
(59, 'Pharmacie Anoual', '26, bd AlQods , rte AlAouama TANGER'),
(60, 'Pharmacie Aoufi', 'q. Benkirane , rue 138 TANGER'),
(61, 'Pharmacie Ariha', '31, bd My Youssef TANGER'),
(62, 'Pharmacie Arrabie', '716, Azib Haj Kaddour , hay Al Kharba TANGER'),
(63, 'Pharmacie Arrazi', 'bd. Mly Rachid, résid. Golden Beach TANGER'),
(64, 'Pharmacie Asanawbar', '79, rue Sanawbar , lot. Narjis, Branes II TANGER'),
(65, 'Pharmacie Assalam', '26, rue Oued Wargha , Quartier Jirari II TANGER'),
(66, 'Pharmacie Aswak Assalam', 'Centre Commerciale Aswak Assalam TANGER'),
(67, 'Pharmacie Atlas', '16, av. Ibn Ardoun TANGER'),
(68, 'Pharmacie Aïda', '7, bd Berkane TANGER'),
(69, 'Pharmacie Aïn Hayyani', '7 a-b, rue Imam Kastalani quartier Aïn Hayyani TANGER'),
(70, 'Pharmacie Bab ElBhar', '28, rue Bab ElAssa, Kasbah TANGER'),
(71, 'Pharmacie Badre', '49, rue AlHind, Beni Makada kdima TANGER'),
(72, 'Pharmacie Bait AlMakdiss', 'hay Sidi Driss , rte Principale TANGER'),
(73, 'Pharmacie Banafsaj', 'rue Banafsaj , Dradeb TANGER'),
(74, 'Pharmacie Bd. Mly Rachid', '13, bd. Mly Rachid, Val Fleuri TANGER'),
(75, 'Pharmacie Bel Air', 'Bel Air , rue 17 n°32B TANGER'),
(76, 'Pharmacie Belkacem', '1110, av. B Jirari II , Beni Makada TANGER'),
(77, 'Pharmacie Ben Dahmane', 'Quartier Hadj Mokhtar, lot. 9547, Ben Dibane TANGER'),
(78, 'Pharmacie BenTaieb', '24 B, av. Mly Abdelhafid TANGER'),
(79, 'Pharmacie Benallal', '127, av Fatima Zohra , Drissia TANGER'),
(80, 'Pharmacie Benayad', 'Mrah Tanja Balia TANGER'),
(81, 'Pharmacie Bendibane', '29, rue Roudani , Ben Dibane TANGER'),
(82, 'Pharmacie Beni Makada', '152, av. My Slimane Benimakada 90000 TANGER'),
(83, 'Pharmacie Bismi Allah', '12, av Driss 1er , résid. ElKheir TANGER'),
(84, 'Pharmacie Bouaraquia', '34, av Hassan II TANGER'),
(85, 'Pharmacie Boubana', '138 B, Rte Rahrah TANGER'),
(86, 'Pharmacie Boukhalef', 'rte de l\'Aviation , cplxe Al Irfane, Doha GH, lot. n°13 TANGER'),
(87, 'Pharmacie Branes II', 'av Abi Zaraa , Branes II TANGER'),
(88, 'Pharmacie Brooks', '28, rue Grenada , Park Brooks TANGER'),
(89, 'Pharmacie California', 'rue Banafsaj TANGER'),
(90, 'Pharmacie Camelia', '8, av. Mly Rachid, Val Fleuri TANGER'),
(91, 'Pharmacie Casabarata', '58 A, av. Moulay Abdelhafid TANGER'),
(92, 'Pharmacie Centrale', '48, bd. Pasteur 90000 TANGER'),
(93, 'Pharmacie Cervantes', '49, rue Anoual TANGER'),
(94, 'Pharmacie Charf', '59 Bis, av. Yacoub ElMansour TANGER'),
(95, 'Pharmacie Chifae', '4 Bis, av. Mly Rachid TANGER'),
(96, 'Pharmacie Chorafa', '1, Ancienne rte d\'Aviation , résid. Al Kheir TANGER'),
(97, 'Pharmacie Dar D\'bagh', '34, rue Dar D\'bagh TANGER'),
(98, 'Pharmacie Dar Tounsi', 'Lot. Enahda n°146 , Drissia TANGER'),
(99, 'Pharmacie Dina', 'av. Imam Mousslim , imm. A n°1 Dradeb TANGER'),
(100, 'Pharmacie Drissia', '42, rue Tarik Ibn Ziad , Drissia TANGER'),
(101, 'Pharmacie Du nord', 'rte de Rabat , lot. Sanae II rue 5 n°3 Bendibane TANGER'),
(102, 'Pharmacie ElAlia', '37, rue Ibn Kadi, quart. ElAlia, pl. des Arenes TANGER'),
(103, 'Pharmacie ElAmile', '73, rue Moussa Ben Noussair 90000 TANGER'),
(104, 'Pharmacie ElAouama', 'av. Royaume Arabe Saoudite , rue 27, n°31, Al Aouama TANGER'),
(105, 'Pharmacie ElAttabi', 'av. Koweit Rgayae 4 , Aouema TANGER'),
(106, 'Pharmacie ElHikma', '25, Av. Omar El Mokhtar TANGER'),
(107, 'Pharmacie ElKindy', '136, av. Harroun Errachid, quart. Belgica TANGER'),
(108, 'Pharmacie Elhouda', '28 Bis, rue Ali Iraki Souani TANGER'),
(109, 'Pharmacie Elyousr', '32, bd. Mohammed V 90000 TANGER'),
(110, 'Pharmacie Erradi', 'bd. des Far , résid. Amine, n°3 TANGER'),
(111, 'Pharmacie Fadili', 'hay Berouaka , rue 10, n°18 Bendibane TANGER'),
(112, 'Pharmacie Fahs', ', rue 36 n°10 , quartier Jirari II Beni Makada TANGER'),
(113, 'Pharmacie Fares', '34 A, av. Chahid Abdesslam Ben Bouhout TANGER'),
(114, 'Pharmacie Fayna', '20 B, av Forêt Eucalyptus , Branes TANGER'),
(115, 'Pharmacie Ghailane', '41, rue Mallysia , hay Ouarda 2 Bendibane TANGER'),
(116, 'Pharmacie Gibraltar', '7, sania aljadida rte de malabata TANGER'),
(117, 'Pharmacie Granada', '18, rue Teheran TANGER'),
(118, 'Pharmacie Gueznaia', 'Souk Sebt n°34, Gueznaia TANGER'),
(119, 'Pharmacie Hadia', 'hay Errahrah , lot. 103 TANGER'),
(120, 'Pharmacie Hamza', '33, rue Yamane , hay Saâda Beni Makada TANGER'),
(121, 'Pharmacie Hay AlBoughaz', 'hay ElBoughaz , rue 3 n° 9 TANGER'),
(122, 'Pharmacie Hay Benkirane', '93, rue principale, Hay Ben Kirane TANGER'),
(123, 'Pharmacie Hay Ouarda', 'av Mly Ali Chérif , résid. AlOuahda 1, Beni Makada TANGER'),
(124, 'Pharmacie Ibn Annafis', '29, rue My Tahar Ben Abdelkrim Boughaz , q. des Fonctionnaires TANGER'),
(125, 'Pharmacie Ibn Barrajan', '41 Bis, av Cedres Branes II TANGER'),
(126, 'Pharmacie Ibn Batouta', '134, rue Ibn Ardoun, Branes I , Branes I TANGER'),
(127, 'Pharmacie Ibn Khaldoun', '619, lotiss. AlMajd , Aouama TANGER'),
(128, 'Pharmacie Ibn Khatib', '24, rue docteur Faraj TANGER'),
(129, 'Pharmacie Ibn Rochd', '134 Bis, rue d\'Angleterre , Aïn Ktiouit 90000 TANGER'),
(130, 'Pharmacie Ibn Sina', '124, av. Hassan II 90000 TANGER'),
(131, 'Pharmacie Ibn Tachfine', '96, bd. Youssef Ibn Tachfine TANGER'),
(132, 'Pharmacie Ifriquia', '44, av. Mly Ali Cherif, Beni Makada TANGER'),
(133, 'Pharmacie Imam Boukhari', '159, rue Principale , Haoumat Elchouk TANGER'),
(134, 'Pharmacie Imam Chadili', 'hay Mesnana , q. Warda rte. de l\'Aéroport TANGER'),
(135, 'Pharmacie Imam Chatebi', 'rue Ajdir, Essalam bloc C n°1 TANGER'),
(136, 'Pharmacie Imam Mouslim', '87, rue Imam Mouslim , Aïn Hayani Drades TANGER'),
(137, 'Pharmacie Imam Nafie', 'lotiss. Belkhairi , rue n°12 Beni Makada TANGER'),
(138, 'Pharmacie Inas', '30, av. Ibn Abi Zare, Branes I 90000 TANGER'),
(139, 'Pharmacie Irchad', '8, lot. AlAouama TANGER'),
(140, 'Pharmacie Jade', '2, rue Ibn Ajroum , résid. Jade TANGER'),
(141, 'Pharmacie Jamaâ Mekraa', 'Amrah Boulaiz Jamaâ Mekraa TANGER'),
(142, 'Pharmacie Jamila', '128 Bis, rue des Fès TANGER'),
(143, 'Pharmacie Jardins Andalous', 'av Mohammed VI 26 B, cplexe jardins Andalous Malabata TANGER'),
(144, 'Pharmacie Jirari', '77, av Aïcha AlMoussafir , Jirari III TANGER'),
(145, 'Pharmacie Josafat', '53, av. Hassan I TANGER'),
(146, 'Pharmacie Kasbah', '67, rue Kasbah TANGER'),
(147, 'Pharmacie Khalil', 'bd Mohammed VI , résid. Zemmouri I, bloc A2 TANGER'),
(148, 'Pharmacie La Wilaya', '24, av Al Massira Al Khadra TANGER'),
(149, 'Pharmacie Laazifat', '77, rue Fatime Zahra , quartier Bouhout Beni Makada Laazifat TANGER'),
(150, 'Pharmacie Laaziza', 'av Abou Jarir Tabari ang. rue Mly Hicham bloc A n°8 TANGER'),
(151, 'Pharmacie Lalla Chafia', 'rue Gutemberg ang. rue Juafar TANGER'),
(152, 'Pharmacie Lamtafi', '6, rue Abi Hanifa , Lamtafi Marchan TANGER'),
(153, 'Pharmacie M\'Ghogha', 'rte de Tétouan, km3 , M\'ghogha Kbira TANGER'),
(154, 'Pharmacie M\'sallah', '45, av. Sidi Mohamed Ben Abdellah 90000 TANGER'),
(155, 'Pharmacie Mabrouka', '35, rue Ali Ibn Tahar Abih , quartier Boughaz TANGER'),
(156, 'Pharmacie Mabrouki', '16, av. My Ali Cherif Beni Makada TANGER'),
(157, 'Pharmacie Madrid', 'hay Jamae n°3 Ben Dibane TANGER'),
(158, 'Pharmacie Maghreb', '56, Rue de la liberté 90000 TANGER'),
(159, 'Pharmacie Makarim', 'rte Sidi Driss , lotiss. Banque Populaire, n°265 TANGER'),
(160, 'Pharmacie Marché de Gros Aouama', '1, rue Mouj Nadir Abou Zar TANGER'),
(161, 'Pharmacie Marjane', 'bd. des Far, c. com. Marjane 90000 TANGER'),
(162, 'Pharmacie Masjid Mabrouka', 'Mabrouka III, rue 3, n°52, Beni Makada TANGER'),
(163, 'Pharmacie Masjid Marchan', '81, av de Nations Unis Marchan TANGER'),
(164, 'Pharmacie Metioui', '153, bd Mohammed V 90000 TANGER'),
(165, 'Pharmacie Mister Khouch', '36, bd Anfa , hay Mister Khouch TANGER'),
(166, 'Pharmacie Mly Ismaïl', 'bd. Mly Ismaïl , résid. Zahara TANGER'),
(167, 'Pharmacie Mly Youssef', '50 A, bd Mly Youssef , imm. AlFath TANGER'),
(168, 'Pharmacie Moncef', 'av des Far , résid. ElYamani n°139 TANGER'),
(169, 'Pharmacie Mouadafine', 'quart. Boughaz, rue 70A, n°1, A Bis Wahda Watania TANGER'),
(170, 'Pharmacie Mountassir', 'Z.I. AlMajd , bloc 11 n° 2 TANGER'),
(171, 'Pharmacie My Ali Cherif', '78, bd. My Ali Cherif Beni Makada TANGER'),
(172, 'Pharmacie Méditerranée', '66, plage oualidia, Tanja Balia 90000 TANGER'),
(173, 'Pharmacie Najid', 'Route de Rabat , Boukhalef Gzenaya TANGER'),
(174, 'Pharmacie Narjiss', '55, av. Genevries , Branes II TANGER'),
(175, 'Pharmacie Nouvelle', 'hay ElHassania , rue 4 n°2 Bendibane TANGER'),
(176, 'Pharmacie Ouahabi', 'quartier Dziri Jamaa El Mokraa TANGER'),
(177, 'Pharmacie Ouahid', 'Ancienne rte de l\'Aéroport , hay Massnana lot. 56 n°39 TANGER'),
(178, 'Pharmacie Passadena', 'Rte de Tetouan, résid. Passadena TANGER'),
(179, 'Pharmacie Pasteur', '3, Place de France 90000 TANGER'),
(180, 'Pharmacie Perle de Méditerranée', '708, lotiss. Méditerranee , Tanger Balia TANGER'),
(181, 'Pharmacie Phardet', '147, Rue de Fès 90000 TANGER'),
(182, 'Pharmacie Place du Maroc', 'bd. Mly. Abdelaziz , imm. Joyau de Tanger TANGER'),
(183, 'Pharmacie Populaire', 'Casabarata, Souani rue 20 n°1 - 2 TANGER'),
(184, 'Pharmacie Prefecture Bni Makada', '174, rue ElHind , q. Laouina Beni Makada Kdima TANGER'),
(185, 'Pharmacie Provence', '38, av. de Provence TANGER'),
(186, 'Pharmacie Rabea ElAdaouia', 'hay AlJadid , rue 9 n°1 TANGER'),
(187, 'Pharmacie Rahmouni', 'rue Tan Tan résid. les Palmiers TANGER'),
(188, 'Pharmacie Raihani', '14, av AlKortobi, Marshan TANGER'),
(189, 'Pharmacie Riad Ahlen', 'Rte de Rabat , n° 224 hay Riad Ahlen TANGER'),
(190, 'Pharmacie Route ElAouma', 'av. AlQods rte ElAouama 703 , lotiss. 200 TANGER'),
(191, 'Pharmacie Route de Rabat', 'rte de Rabat , lotiss. Irfane Doha 03, GH 26, imm. 244 TANGER'),
(192, 'Pharmacie Sabila Jmaa', '1, rue Malte, Saliha Jmaa, Marshan TANGER'),
(193, 'Pharmacie Sahat AlOumam', 'rue Ibn Toumart , résid. Rokaia TANGER'),
(194, 'Pharmacie Salaheddine', 'rue Fkih Ben Mekki , lotiss. Rhofa 2 lot. 40 A TANGER'),
(195, 'Pharmacie San Francisco', '3, Place de Navarre , quartier. Souk ElBakar TANGER'),
(196, 'Pharmacie Sania', 'bd. Aicha Moussafir , rue 3 n°2 bis Sania Beni Makada TANGER'),
(197, 'Pharmacie Satfilage', '17, lotis. Al Amana , n°2 TANGER'),
(198, 'Pharmacie Saâda', '3, rte de Tetouan , place des arènes TANGER'),
(199, 'Pharmacie Sidi Boukhari', 'rue Sidi Boukhari TANGER'),
(200, 'Pharmacie Sidi Driss', 'hay Ben Said, Rte Terciere 8003 , Behraine TANGER'),
(201, 'Pharmacie Souk ElBakar', '46, rue Sidi Amar TANGER'),
(202, 'Pharmacie Souk M\'Sallah', '127 Bis, rue M\'sallah 90000 TANGER'),
(203, 'Pharmacie Taferssiti', 'hay Riad , lot. 195 TANGER'),
(204, 'Pharmacie Tafilalet', 'place Tafilalet Beni Makada TANGER'),
(205, 'Pharmacie Taissir', 'rte de Tetouan , M\'Ghogha Seghira TANGER'),
(206, 'Pharmacie Tanja Balia', '1, rte principale Malaba, Tanja Balia TANGER'),
(207, 'Pharmacie Tarik Ben Ziad', '51, bd Mohammed V 90000 TANGER'),
(208, 'Pharmacie Tingis', '1, bd Imam Mouslim, Dradeb 90000 TANGER'),
(209, 'Pharmacie Touzani', 'Rte Tetouan Dorilla, lot. 41 Loc Dt TANGER'),
(210, 'Pharmacie Val Fleuri', 'bd. Mly Rachid , lot. Mara lot. 11 TANGER'),
(211, 'Pharmacie Yassine', '20, bd. Layth Ibnou Saad , Val Feuri TANGER'),
(212, 'Pharmacie Yousra', 'Douar Nouinich , AlBahraouiyine TANGER'),
(213, 'Pharmacie Zahara', '1, av. Zahara rue 41, Beni Makada TANGER'),
(214, 'Pharmacie Zaoudia', '42, av. Chouhada Zaoudia , Beni Mekada Sud TANGER'),
(215, 'Pharmacie Zemzem', '134, lotiss. Alkheir TANGER'),
(216, 'Pharmacie Zineb', 'q. Bouhout , rue 14 n° 18 rte. Aouama TANGER'),
(217, 'Pharmacie Zone Industrielle', 'Rte Tetouan km 3 , Mghogha Kebira Souani TANGER'),
(218, 'Pharmacie complexe AlHassani', 'bd. des Far, cplxe AlHassani km 7 TANGER'),
(219, 'Pharmacie de Paris', '8, Place de France , imm. Toledano 90000 TANGER'),
(220, 'Pharmacie de Tanger', 'Rte de Tétouan, cplxe Amal II TANGER'),
(221, 'Pharmacie de l\'Université', '50, rue Boukhalef TANGER'),
(222, 'Pharmacie de la Santé', 'av Tarik Ibn Ziad , lot. Fatima Zohra Drissia TANGER'),
(223, 'Pharmacie de la plage', '7, av. Youssef Ibn Tachfine 90000 TANGER'),
(224, 'Pharmacie des Arenes', '12, rte Regayaoi TANGER'),
(225, 'Pharmacie du Conseil', '16, av Koweit , hay Bouhout, Haoumat Haddad TANGER'),
(226, 'Pharmacie du Golf', '1, lotis. Flandria , Boubana TANGER'),
(227, 'Pharmacie du Lycée', '15, rue Allal Ben Abdallah 90000 TANGER'),
(228, 'Pharmacie du Parc', 'rue Iberia ang. bd Moulay Slimane Beni Makada TANGER'),
(229, 'Pharmacie du Quartier', '56, Rte. Rgaya , quartier Draoua TANGER'),
(230, 'Pharmacie du Soleil', '111, bd. Prince Héritier 90000 TANGER'),
(231, 'Pharmacie hay Bouhout', '23, rue Abdelkhalek Torres , hay Bouhout TANGER'),
(232, 'Pharmacie la Source', 'lotiss. Al Majd , lot. 559 q. ElAouama TANGER'),
(233, 'Pharmacie les Palmiers', '7, rue AlAntaki TANGER'),
(234, 'Pharmacie les Parents', '54, bd Pasteur , 5°ét. appt. n°1 TANGER'),
(235, 'Beemik s.a.r.l (Bébé Confort)', '2, bd. des Far, c. com. Marjane , loc. n°2 TANGER'),
(236, 'Bumagéco s.a', '6, rue Ifni , imm. Adil 1°ét. Castilla TANGER'),
(237, 'Pharma Shop s.a.r.l. (agence)', '1, rue Youssoufia TANGER'),
(238, 'Pharmanord', '43 Bis, rue Ahmed Chaouki TANGER'),
(239, 'Sté Pharmaceutique du Détroit (Cooper Sophadet s.a.)', 'ancienne rte de l\'aviation , km 4 TANGER'),
(240, 'Tangelab', 'rte de Fès, 77 complexe Mabrouka, 4°ét. n°8 TANGER'),
(241, 'sté Africaine de Repartition Pharmaceutique (Sarp s.a.r.l.)', '80, av. Yacoub El Mansour , résid. Charf TANGER');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `phar_gard_tanger`
--
ALTER TABLE `phar_gard_tanger`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_phar_gard_tanger_ID` (`ID`);

--
-- Index pour la table `phar_tanger`
--
ALTER TABLE `phar_tanger`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_phar_tanger_ID` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

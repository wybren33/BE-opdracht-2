-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 02 nov 2023 om 19:29
-- Serverversie: 5.7.36
-- PHP-versie: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BEopdracht2`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Instructeur`
--

DROP TABLE IF EXISTS `Instructeur`;
CREATE TABLE IF NOT EXISTS `Instructeur` (
  `Id` int(11) NOT NULL,
  `Voornaam` varchar(255) DEFAULT NULL,
  `Tussenvoegsel` varchar(255) DEFAULT NULL,
  `Achternaam` varchar(255) DEFAULT NULL,
  `Mobiel` varchar(20) DEFAULT NULL,
  `DatumInDienst` date DEFAULT NULL,
  `AantalSterren` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Instructeur`
--

INSERT INTO `Instructeur` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`, `DatumInDienst`, `AantalSterren`) VALUES
(1, 'Li', NULL, 'Zhan', '06-28493827', '2015-04-17', '***'),
(2, 'Leroy', NULL, 'Boerhaven', '06-39398734', '2018-06-25', '*'),
(3, 'Yoeri', NULL, 'Van Veen', '06-24383291', '2010-05-12', '***'),
(4, 'Bert', 'Van', 'Sali', '06-48293823', '2023-01-10', '****'),
(5, 'Mohammed', 'El', 'Yassidi', '06-34291234', '2010-06-14', '*****');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TypeVoertuig`
--

DROP TABLE IF EXISTS `TypeVoertuig`;
CREATE TABLE IF NOT EXISTS `TypeVoertuig` (
  `Id` int(11) NOT NULL,
  `TypeVoertuig` varchar(255) DEFAULT NULL,
  `Rijbewijscategorie` char(2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `TypeVoertuig`
--

INSERT INTO `TypeVoertuig` (`Id`, `TypeVoertuig`, `Rijbewijscategorie`) VALUES
(1, 'Personenauto', 'B'),
(2, 'Vrachtwagen', 'C'),
(3, 'Bus', 'D'),
(4, 'Bromfiets', 'AM');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Voertuig`
--

DROP TABLE IF EXISTS `Voertuig`;
CREATE TABLE IF NOT EXISTS `Voertuig` (
  `Id` int(11) NOT NULL,
  `Kenteken` varchar(20) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Bouwjaar` date DEFAULT NULL,
  `Brandstof` varchar(255) DEFAULT NULL,
  `TypeVoertuigId` int(11) DEFAULT NULL,
  `IsActief` bit(1) DEFAULT NULL,
  `Opmerking` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) DEFAULT NULL,
  `DatumGewijzigd` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `TypeVoertuigId` (`TypeVoertuigId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Voertuig`
--

INSERT INTO `Voertuig` (`Id`, `Kenteken`, `Type`, `Bouwjaar`, `Brandstof`, `TypeVoertuigId`, `IsActief`, `Opmerking`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'AU-67-IO', 'Golf', '2017-06-12', 'Diesel', 1, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(2, 'TR-24-OP', 'DAF', '2019-05-23', 'Diesel', 2, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(3, 'TH-78-KL', 'Mercedes', '2023-01-01', 'Benzine', 1, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(4, '90-KL-TR', 'Fiat 500', '2021-09-12', 'Benzine', 1, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(5, '34-TK-LP', 'Scania', '2015-03-13', 'Diesel', 2, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(6, 'YY-OP-78', 'BMW M5', '2022-05-13', 'Diesel', 1, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(7, 'UU-HH-JK', 'M.A.N', '2017-12-03', 'Diesel', 2, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(8, 'ST-FZ-28', 'Citroën', '2018-01-20', 'Elektrisch', 1, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(9, '123-FR-T', 'Piaggio ZIP', '2021-02-01', 'Benzine', 4, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(10, 'DRS-52-P', 'Vespa', '2022-03-21', 'Benzine', 4, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(11, 'STP-12-U', 'Kymco', '2022-07-02', 'Benzine', 4, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(12, '45-SD-23', 'Renault', '2023-01-01', 'Diesel', 3, b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `VoertuigInstructeur`
--

DROP TABLE IF EXISTS `VoertuigInstructeur`;
CREATE TABLE IF NOT EXISTS `VoertuigInstructeur` (
  `Id` int(11) NOT NULL,
  `VoertuigId` int(11) DEFAULT NULL,
  `InstructeurId` int(11) DEFAULT NULL,
  `DatumToekenning` date DEFAULT NULL,
  `IsActief` bit(1) DEFAULT NULL,
  `Opmerking` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) DEFAULT NULL,
  `DatumGewijzigd` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `VoertuigId` (`VoertuigId`),
  KEY `InstructeurId` (`InstructeurId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `VoertuigInstructeur`
--

INSERT INTO `VoertuigInstructeur` (`Id`, `VoertuigId`, `InstructeurId`, `DatumToekenning`, `IsActief`, `Opmerking`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 1, 5, '2017-06-18', b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(2, 3, 1, '2021-09-26', b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(3, 9, 1, '2021-09-27', b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(4, 4, 4, '2022-08-01', b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(5, 5, 1, '2019-08-30', b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000'),
(6, 10, 5, '2020-02-02', b'1', NULL, '2023-11-02 20:25:38.000000', '2023-11-02 20:25:38.000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

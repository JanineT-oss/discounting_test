-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Feb 2022 um 11:45
-- Server-Version: 10.4.19-MariaDB
-- PHP-Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `rewad`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `consent`
--

CREATE TABLE `consent` (
  `row_id` int(11) NOT NULL,
  `prolific_id` varchar(255) DEFAULT NULL,
  `new_id` varchar(255) DEFAULT NULL,
  `consent1` varchar(10) DEFAULT NULL,
  `consent2` varchar(10) DEFAULT NULL,
  `consent3` varchar(10) DEFAULT NULL,
  `consent4` varchar(10) DEFAULT NULL,
  `consent5` varchar(10) DEFAULT NULL,
  `consent6` varchar(10) DEFAULT NULL,
  `consent7` varchar(10) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `demographics`
--

CREATE TABLE `demographics` (
  `row_id` int(11) NOT NULL,
  `new_id` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `employment` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kappabeta`
--

CREATE TABLE `kappabeta` (
  `row_id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `beta` varchar(255) DEFAULT NULL,
  `kappa` varchar(255) DEFAULT NULL,
  `s` varchar(255) DEFAULT NULL,
  `LL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` int(11) NOT NULL,
  `new_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `audit1` int(255) DEFAULT NULL,
  `audit2` int(255) DEFAULT NULL,
  `audit3` int(255) DEFAULT NULL,
  `audit4` int(255) DEFAULT NULL,
  `audit5` int(255) DEFAULT NULL,
  `audit6` int(255) DEFAULT NULL,
  `audit7` int(255) DEFAULT NULL,
  `audit8` int(255) DEFAULT NULL,
  `audit9` int(255) DEFAULT NULL,
  `audit10` int(255) DEFAULT NULL,
  `bis1` int(255) DEFAULT NULL,
  `bis2` int(255) DEFAULT NULL,
  `bis3` int(255) DEFAULT NULL,
  `bis4` int(255) DEFAULT NULL,
  `bis5` int(255) DEFAULT NULL,
  `bis6` int(255) DEFAULT NULL,
  `bis7` int(255) DEFAULT NULL,
  `bis8` int(255) DEFAULT NULL,
  `bis9` int(255) DEFAULT NULL,
  `bis10` int(255) DEFAULT NULL,
  `bis11` int(255) DEFAULT NULL,
  `bis12` int(255) DEFAULT NULL,
  `bis13` int(255) DEFAULT NULL,
  `bis14` int(255) DEFAULT NULL,
  `bis15` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rewad2exp1`
--

CREATE TABLE `rewad2exp1` (
  `row_id` int(11) NOT NULL,
  `subject_id` varchar(255) DEFAULT NULL,
  `rt` varchar(255) DEFAULT NULL,
  `key_press` varchar(255) DEFAULT NULL,
  `immOpt` varchar(255) DEFAULT NULL,
  `delOpt` varchar(255) DEFAULT NULL,
  `delay` varchar(255) DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `randomize` varchar(255) DEFAULT NULL,
  `trial_type` varchar(255) DEFAULT NULL,
  `trial_index` varchar(255) DEFAULT NULL,
  `time_elapsed` varchar(255) DEFAULT NULL,
  `internal_node_id` varchar(255) DEFAULT NULL,
  `choice` varchar(255) DEFAULT NULL,
  `timelineType` varchar(255) DEFAULT NULL,
  `startdate` varchar(255) DEFAULT NULL,
  `starttime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rewad2exp2`
--

CREATE TABLE `rewad2exp2` (
  `row_id` int(11) NOT NULL,
  `subject_id` varchar(255) DEFAULT NULL,
  `rt` varchar(255) DEFAULT NULL,
  `key_press` varchar(255) DEFAULT NULL,
  `immOpt` varchar(255) DEFAULT NULL,
  `delOpt` varchar(255) DEFAULT NULL,
  `delay` varchar(255) DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `randomize` varchar(255) DEFAULT NULL,
  `trial_type` varchar(255) DEFAULT NULL,
  `trial_index` varchar(255) DEFAULT NULL,
  `time_elapsed` varchar(255) DEFAULT NULL,
  `internal_node_id` varchar(255) DEFAULT NULL,
  `choice` varchar(255) DEFAULT NULL,
  `timelineType` varchar(255) DEFAULT NULL,
  `startdate` varchar(255) DEFAULT NULL,
  `starttime` varchar(255) DEFAULT NULL,
  `p_imm` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `consent`
--
ALTER TABLE `consent`
  ADD PRIMARY KEY (`row_id`);

--
-- Indizes für die Tabelle `demographics`
--
ALTER TABLE `demographics`
  ADD PRIMARY KEY (`row_id`);

--
-- Indizes für die Tabelle `kappabeta`
--
ALTER TABLE `kappabeta`
  ADD PRIMARY KEY (`row_id`);

--
-- Indizes für die Tabelle `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rewad2exp1`
--
ALTER TABLE `rewad2exp1`
  ADD PRIMARY KEY (`row_id`);

--
-- Indizes für die Tabelle `rewad2exp2`
--
ALTER TABLE `rewad2exp2`
  ADD PRIMARY KEY (`row_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `consent`
--
ALTER TABLE `consent`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `demographics`
--
ALTER TABLE `demographics`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `kappabeta`
--
ALTER TABLE `kappabeta`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rewad2exp1`
--
ALTER TABLE `rewad2exp1`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rewad2exp2`
--
ALTER TABLE `rewad2exp2`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

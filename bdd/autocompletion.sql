-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 24 juin 2020 à 14:14
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `autocompletion`
--
CREATE DATABASE IF NOT EXISTS `autocompletion` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `autocompletion`;

-- --------------------------------------------------------

--
-- Structure de la table `effectif`
--

DROP TABLE IF EXISTS `effectif`;
CREATE TABLE IF NOT EXISTS `effectif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `poste` varchar(3) NOT NULL,
  `age` int(11) NOT NULL,
  `statut` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'dirigeant',
  `ancienclub` varchar(255) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'img/photo/unnamed.jpg',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `effectif`
--

INSERT INTO `effectif` (`id`, `nom`, `prenom`, `poste`, `age`, `statut`, `ancienclub`, `img`) VALUES
(1, 'Colas', 'Jean Davidson', 'Att', 31, 'joueur / dirigeant', 'S.O.Caillolais / Forme au Red Star 93', 'img/photo/'),
(2, 'Villas Boas', 'Andres', 'Ent', 42, 'dirigeant', 'Shanghai SIPG', 'img/photo/andre-villas-boas.jpg'),
(3, 'Benedetto', 'Dario', 'Att', 29, 'joueur', 'Boca juniors', 'img/photo/benedetto.jpg'),
(4, 'Rongier ', 'Valentin', 'Mil', 25, 'joueur', 'Fc Nantes ', 'img/photo/rongier.jpg'),
(5, 'Gonzales', 'Alvaro', 'Def', 30, 'joueur', 'Villareal', 'img/photo/'),
(6, 'Khaoui', 'Saif Eddine', 'Mil', 25, 'joueur', 'Tours FC ', 'img/photo/'),
(7, 'Rocchia', 'Christopher', 'Def', 22, 'joueur', 'Forme au club ', 'img/photo/'),
(8, 'Sertic', 'Gregory', 'Mil', 30, 'joueur', 'Fc Bordeaux', 'img/photo/'),
(9, 'Caleta Car', 'Duje ', 'Def', 23, 'joueur', 'RB Salzbourg ', 'img/photo/'),
(10, 'Sakai	', 'Hiroki ', 'Def', 30, 'joueur', 'Hanovre 96', 'img/photo/'),
(11, 'Pelé', 'Yohann ', 'Gb', 37, 'joueur', 'FC Sochaux', 'img/photo/yohann.jpg'),
(12, 'Mandanda', 'Steve', 'Gb', 35, 'joueur', 'Crystal Palace', 'img/photo/'),
(13, 'Kamardin', 'Aaron Nassur ', 'Def', 18, 'joueur', 'Forme au club ', 'img/photo/kamardin.jpg'),
(14, 'Richard', 'Richecard ', 'Def', 18, 'joueur', 'Forme au club ', 'img/photo/r.richard'),
(18, 'Radonjić', 'Nemanja ', 'Mil', 24, 'joueur', 'Etoile rouge de belgrade', 'img/photo/unnamed.jpg'),
(17, 'Kamara', 'Boubacar ', 'Def', 20, 'joueur', 'Forme au club', 'img/photo/bouba.jpg'),
(22, 'Payet\r\n', 'Dimitri', 'Mil', 33, 'joueur', 'West Ham ', 'img/photo/dimitri-payet.jpg'),
(21, 'Sanson', 'Morgan ', 'Mil', 25, 'joueur', 'Montpellier Herault Sport Club', 'img/photo/sanson.jpg'),
(23, 'Strootman', 'Kevin', 'Mil', 30, 'joueur', 'AS Roma', 'img/photo/strootman.jpg'),
(24, 'Thauvin ', 'Florian', 'Mil', 27, 'joueur', 'Newcastle Fc ', 'img/photo/flo.jpeg'),
(25, 'Lopez', 'Maxime', 'Mil', 22, 'joueur', 'Forme au club ', 'img/photo/maxou.jpg'),
(34, 'Aké', 'Marley', 'Att', 19, 'joueur', 'Forme au club ', 'img/photo/ake.jpg'),
(33, 'Germain', 'Valère', 'Att', 30, 'joueur', 'AS Monaco ', 'img/photo/germain.jpg'),
(32, 'Philiponeau', 'Alexandre', 'Mil', 20, 'joueur', 'Forme au club ', 'img/photo/philiponeau.jpg'),
(31, 'Florian ', 'Chabrolle', 'Mil', 22, 'joueur', 'Forme au club', 'img/photo/chabrolle.jpg'),
(35, 'Ahmed', 'Nassim', 'Mil', 18, 'joueur', 'Forme au club ', 'img/photo/ahmed.jpg'),
(36, 'Souaré', 'Cheikh', 'Mil', 19, 'joueur', 'Forme au club', 'img/photo/souare.jpg'),
(37, 'Ali Mohammed', 'Abdallah', 'Def', 21, 'joueur', 'Forme au club', 'img/photo/unnamed.jpg'),
(38, 'Bertelli ', 'Hugo', 'Gb', 16, 'joueur', 'Forme au club ', 'img/photo/bertelli.jpg'),
(39, 'Taiwo', 'Taye', 'Al', 35, 'joueur', 'Lobi Stars', 'img/photo/taye.jpg'),
(40, 'Niang', 'Mamadou', 'Att', 40, 'joueur', 'RC Strasbourg', 'img/photo/mamadou.jpg'),
(41, 'Gonzales ', 'Luis Oscar', 'Mil', 39, 'joueur', 'FC Poryo', 'img/photo/lucho.jpg'),
(42, 'Ayew', 'Andre', 'Mil', 30, 'joueur', 'Forme au club', 'img/photo/ayew.jpg'),
(43, 'Cheyrou', 'Cheyrou', 'Mil', 39, 'joueur', 'AJ Auxerre', 'img/photo/cheyrou.jpg'),
(44, 'Nasri', 'Samir', 'Mil', 32, 'joueur', 'Forme au club', 'img/photo/nasri.jpg'),
(45, 'Tresor', 'Marius Paul', 'Mil', 70, 'joueur', 'AC Ajaccio', 'img/photo/tresor.jpg'),
(46, 'Andersson', 'Gunnar', 'Att', 41, 'joueur', 'Kjøbenhavns Boldklub', 'img/photo/anderson.jpg'),
(47, 'Di meco', 'Eric', 'Alg', 56, 'joueur', 'Forme au club ', 'img/photo/dimeco.jpg'),
(48, 'Drogba', 'Didier', 'Att', 42, 'joueur', 'EA Guingamp', 'img/photo/didier.jpg'),
(49, 'Angloma', 'Jocelyn', 'Def', 54, 'joueur', 'Paris SG', 'img/photo/angloma.jpg'),
(50, 'Gignac', 'André-Pierre', 'Att', 34, 'joueur', 'Toulouse Fc', 'img/photo/gignac.jpg'),
(51, 'Voller', 'Rudi', 'Att', 0, 'joueur', 'AS Roma', 'img/photo/voller.jpg'),
(52, 'Meïte', 'Abdoulaye', 'Def', 39, 'joueur', 'Red Star ;-)', 'img/photo/meite.jpg'),
(53, 'Diouf', 'Pape', 'Pre', 68, 'dirigeant', 'ND', 'img/photo/papediouf.jpg'),
(54, 'labrune', 'Vincent', 'Dir', 49, 'dirigeant', 'TF1', 'img/photo/labrune.jpg'),
(55, 'Bouchet', 'Christophe', 'Dir', 54, 'dirigeant', '???', 'img/photo/bouchet.jpg'),
(56, 'Eyraud', 'Jaques-henri', 'Dir', 52, 'dirigeant', 'Nd', 'img/photo/eyraud.jpg'),
(57, 'Courbis', 'Rolland', 'Ent', 66, 'dirigeant', 'Us Police Marseille', 'img/photo/courbis.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

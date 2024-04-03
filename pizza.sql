
--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `codeCategorie` varchar(3) NOT NULL,
  `libelleCategorie` varchar(40) NOT NULL,
  PRIMARY KEY (`codeCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`codeCategorie`, `libelleCategorie`) VALUES
('FRO', 'Spécialitées aux fromages'),
('MER', 'Produits de la mer'),
('VEG', 'Les végétariennes'),
('VIA', 'Charcuterie et viande');

-- --------------------------------------------------------

--
-- Structure de la table `composer`
--

CREATE TABLE IF NOT EXISTS `composer` (
  `numPizza` int(3) NOT NULL,
  `numIngredient` int(3) NOT NULL,
  PRIMARY KEY (`numPizza`,`numIngredient`),
  KEY `numIngredient` (`numIngredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `composer`
--

INSERT INTO `composer` (`numPizza`, `numIngredient`) VALUES
(1, 1),
(3, 1),
(4, 1),
(5, 1),
(7, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(32, 1),
(1, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(7, 3),
(15, 3),
(3, 4),
(4, 4),
(4, 5),
(3, 6),
(18, 6),
(19, 6),
(1, 8),
(3, 8),
(15, 8),
(17, 8),
(19, 8),
(32, 8),
(3, 10),
(18, 10),
(11, 11),
(10, 14),
(14, 14),
(16, 14),
(17, 14),
(19, 14),
(20, 14),
(10, 15),
(15, 15),
(19, 15),
(20, 15),
(11, 16),
(18, 16),
(18, 17),
(18, 18),
(8, 19),
(8, 20),
(8, 21),
(6, 23),
(9, 23),
(16, 23),
(20, 24),
(17, 25),
(1, 26),
(1, 27),
(32, 27),
(5, 28),
(12, 28),
(15, 28),
(5, 29),
(12, 30),
(16, 30),
(10, 31),
(16, 32),
(16, 33),
(13, 34),
(6, 35),
(6, 36),
(32, 36),
(6, 37),
(11, 38),
(8, 39);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE IF NOT EXISTS `ingredient` (
  `numIngredient` int(3) NOT NULL AUTO_INCREMENT,
  `libelleIngredient` varchar(40) NOT NULL,
  PRIMARY KEY (`numIngredient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Contenu de la table `ingredient`
--

INSERT INTO `ingredient` (`numIngredient`, `libelleIngredient`) VALUES
(1, 'sauce tomate'),
(2, 'mozzarella'),
(3, 'olives'),
(4, 'chèvre'),
(5, 'bleu'),
(6, 'tomates cerises'),
(8, 'champignons'),
(10, 'gorgonzola'),
(11, 'mozzarella de buffala'),
(14, 'oignons'),
(15, 'poivrons'),
(16, 'roquette'),
(17, 'copeaux de parmesan'),
(18, 'perles de mozzarella'),
(19, 'crevettes'),
(20, 'ail'),
(21, 'pesto'),
(23, 'crème fraîche'),
(24, 'viande hachée'),
(25, 'chorizo'),
(26, 'jambon cru'),
(27, 'artichauts'),
(28, 'jambon'),
(29, 'ananas'),
(30, 'lardons'),
(31, 'merguez'),
(32, 'pommes de terre'),
(33, 'reblochon'),
(34, 'oeuf'),
(35, 'magret de canard'),
(36, 'cèpes'),
(37, 'persillade'),
(38, 'pancetta'),
(39, 'parmesan');

-- --------------------------------------------------------

--
-- Structure de la table `pizza`
--

CREATE TABLE IF NOT EXISTS `pizza` (
  `numPizza` int(11) NOT NULL AUTO_INCREMENT,
  `nomPizza` varchar(40) NOT NULL,
  `codeCategorie` varchar(3) NOT NULL,
  PRIMARY KEY (`numPizza`),
  KEY `codeCategorie` (`codeCategorie`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Contenu de la table `pizza`
--

INSERT INTO `pizza` (`numPizza`, `nomPizza`, `codeCategorie`) VALUES
(1, '4 Saisons', 'VIA'),
(3, 'Chèvre', 'FRO'),
(4, 'Fromagère', 'FRO'),
(5, 'Hawai', 'VIA'),
(6, 'Magret', 'VIA'),
(7, 'Marguerita', 'FRO'),
(8, 'Marina', 'MER'),
(9, 'Norvégienne', 'MER'),
(10, 'Orientale', 'VIA'),
(11, 'Pancetta', 'VIA'),
(12, 'Paysanne', 'VIA'),
(13, 'Pizzaiolo', 'VIA'),
(14, 'Primaverde', 'VEG'),
(15, 'Reine', 'VIA'),
(16, 'Savoyarde', 'VIA'),
(17, 'Scala', 'VIA'),
(18, 'LaTradition', 'VEG'),
(19, 'Végétarienne', 'VEG'),
(20, 'Vénitienne', 'VIA'),
(32, 'vivaldi', 'VEG');

-- --------------------------------------------------------

--
-- Structure de la table `prix`
--

CREATE TABLE IF NOT EXISTS `prix` (
  `numPizza` int(3) NOT NULL,
  `taille` int(2) NOT NULL COMMENT 'en cm',
  `prix` float NOT NULL,
  PRIMARY KEY (`numPizza`,`taille`),
  KEY `taille` (`taille`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prix`
--

INSERT INTO `prix` (`numPizza`, `taille`, `prix`) VALUES
(1, 26, 10.5),
(1, 33, 12.5),
(3, 26, 10.5),
(3, 33, 12.5),
(4, 26, 8.5),
(4, 33, 10.6),
(5, 26, 8.5),
(5, 33, 10.6),
(6, 26, 11.5),
(6, 33, 14.5),
(7, 26, 6.5),
(7, 33, 8.5),
(8, 26, 10.5),
(8, 33, 12.5),
(9, 26, 10.5),
(9, 33, 12.5),
(10, 26, 8.5),
(10, 33, 10.6),
(11, 26, 11.5),
(11, 33, 14.5),
(12, 26, 8.5),
(12, 33, 10.6),
(13, 26, 7.5),
(13, 33, 9.6),
(14, 26, 8.5),
(14, 33, 10.6),
(15, 26, 8.5),
(15, 33, 10.6),
(16, 26, 10.5),
(16, 33, 12.5),
(17, 26, 8.5),
(17, 33, 10.6),
(18, 26, 11.5),
(18, 33, 14.5),
(19, 26, 10.5),
(19, 33, 12.5),
(20, 26, 10.5),
(20, 33, 12.5),
(32, 26, 45),
(32, 33, 52);

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

CREATE TABLE IF NOT EXISTS `responsable` (
  `login` varchar(20) NOT NULL,
  `mdp` varchar(200) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `responsable`
--

INSERT INTO `responsable` (`login`, `mdp`) VALUES
('pizza', '7cf2db5ec261a0fa27a502d3196a6f60');

-- --------------------------------------------------------

--
-- Structure de la table `taille`
--

CREATE TABLE IF NOT EXISTS `taille` (
  `taille` int(2) NOT NULL COMMENT 'en cm',
  PRIMARY KEY (`taille`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `taille`
--

INSERT INTO `taille` (`taille`) VALUES
(26),
(33);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `composer`
--
ALTER TABLE `composer`
  ADD CONSTRAINT `composer_ibfk_1` FOREIGN KEY (`numPizza`) REFERENCES `pizza` (`numPizza`) ON UPDATE CASCADE,
  ADD CONSTRAINT `composer_ibfk_2` FOREIGN KEY (`numIngredient`) REFERENCES `ingredient` (`numIngredient`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `pizza`
--
ALTER TABLE `pizza`
  ADD CONSTRAINT `pizza_ibfk_1` FOREIGN KEY (`codeCategorie`) REFERENCES `categorie` (`codeCategorie`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `prix`
--
ALTER TABLE `prix`
  ADD CONSTRAINT `prix_ibfk_1` FOREIGN KEY (`numPizza`) REFERENCES `pizza` (`numPizza`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prix_ibfk_2` FOREIGN KEY (`taille`) REFERENCES `taille` (`taille`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

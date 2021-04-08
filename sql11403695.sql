-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Hôte : sql11.freemysqlhosting.net
-- Généré le :  jeu. 08 avr. 2021 à 10:21
-- Version du serveur :  5.5.62-0ubuntu0.14.04.1
-- Version de PHP :  7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sql11403695`
--

-- --------------------------------------------------------

--
-- Structure de la table `concept`
--

CREATE TABLE `concept` (
  `Id` int(11) NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Text` longtext NOT NULL,
  `Photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `concept`
--

INSERT INTO `concept` (`Id`, `Title`, `Text`, `Photo_id`) VALUES
(4, 'INNOVANT', 'Grâce au container on peut construire autrement et mieux toutes en  préservant la nature. Il devient le support d\'une architecture résolument design et technologique.', 763),
(5, 'ROBUSTE', 'Un container est une structure auto-porteuse extrêmement résistante qui peut supporter 150 tonnes . Construit a partir d\'acier Corten ( alliage d\'acier résistant à la corrosion ).', 755),
(191, 'ECONOMIQUE', 'Les avantages économiques sont nombreux puisque 1 module container comporte déjà un plancher, des murs et un toit.					\n					\nL\'industrialisation de la production  engagée par High Cube Eco Design permet de réduire les côuts et avoir des prix raisonnables.					\n					', 757),
(194, 'ECOLOGIQUE', 'Nous réutilisons les containers maritimes qui sont stockés sur les grandes zones portuaires afin de leur donner une seconde vie, car ceux-ci son destinés à s\'entasser et à rester sur les ports pendant de très nombreuses années.					\n					\n					\n					', 766);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `Id` int(11) NOT NULL,
  `Adress` varchar(100) NOT NULL,
  `Cp` int(11) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`Id`, `Adress`, `Cp`, `City`, `Photo_id`) VALUES
(1, '6  Avenue Maquis des Glières', 51470, 'SAINT-MEMMIE', 1);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `Id` int(11) UNSIGNED NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Text` longtext NOT NULL,
  `Link` varchar(100) NOT NULL,
  `Photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`Id`, `Title`, `Text`, `Link`, `Photo_id`) VALUES
(103, 'aaaaaaa', '', '', 751),
(104, 'Auto-didacte', '', 'zeudi', 750),
(105, 'ttgrtg', 'ezfzesd', 'nh,', 1);

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`Id`, `Name`) VALUES
(1, '/images/Logo-Docker-1.jpg'),
(749, '/images/3D-Maisoncontainer2.png'),
(750, '/images/3D-Maisoncontainer3.png'),
(751, '/images/3D-Maisoncontainer.png'),
(752, '/images/avantprojetcontainer.png'),
(753, '/images/bureauHighCubeEcoDesign-rendufinal.png'),
(754, '/images/plan2D-maisoncontainer.png'),
(755, '/images/plan3D-maisoncontainer.png'),
(756, '/images/projet2D-bureauMagentaContainer.png'),
(757, '/images/3D-Maisoncontainer6.png'),
(758, '/images/3D-Maisoncontainer7.png'),
(761, '/images/3D-Maisoncontainer5.png'),
(762, '/images/plan3D-bureauHighCubeEcoDesign.png'),
(763, '/images/3D-Maisoncontainer8.png'),
(766, '/images/3D-Maisoncontainer4.png');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `CategoryName` varchar(100) NOT NULL,
  `Description` varchar(500) DEFAULT '',
  `Price` int(11) NOT NULL,
  `Individual` tinyint(4) NOT NULL,
  `Photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`Id`, `CategoryName`, `Description`, `Price`, `Individual`, `Photo_id`) VALUES
(1, 'Maison économique', 'Isolation intérieur 120mm laine de roche, VMC simple flux, radiateur électrique, toit plat non accessible.', 1206, 1, 749),
(2, 'Maison confort', 'Isolation intérieur /extérieur 75 + 160mm laine de roche, VMC double flux, PAC air/eau, toit plat accessible ou en pente selon projet.', 1600, 1, 1),
(3, 'Maison écologique', 'Isolation intérieur /extérieur 75 + 160mm laine bois, VMC double flux, PAC air/eau, toit plat accessible végétalisée, panneaux solaires, récupération eaux pluviales…', 1805, 1, 751),
(4, 'Immeuble d\'habitation collectif', '', 1311, 0, 752),
(135, 'terasse', '', 12345, 0, 754);

-- --------------------------------------------------------

--
-- Structure de la table `profile`
--

CREATE TABLE `profile` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `JobName` varchar(100) NOT NULL,
  `Photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profile`
--

INSERT INTO `profile` (`Id`, `FirstName`, `LastName`, `JobName`, `Photo_id`) VALUES
(1, 'Tolgay', 'YILDIZ', 'Fondateur, Directeur bureau d\'études', 749),
(7, 'Ali', 'OZCAN', 'Directeur usine', 1),
(8, 'Salim ', 'OUSSENI', 'Ingénieur Strucure', 751),
(9, 'Soufiane', 'BOULAL', 'Responsable Commercial', 755),
(10, 'BET', 'OWEGA', 'Partenaire', 758),
(11, 'Christelle', 'Mathias', 'Paretnaire', 1);

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `Id` int(11) NOT NULL,
  `Word` varchar(100) NOT NULL DEFAULT '',
  `Photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `slider`
--

INSERT INTO `slider` (`Id`, `Word`, `Photo_id`) VALUES
(311, 'Ecologique', 1),
(321, 'Rapide', 1),
(331, 'Modulable', 1),
(341, 'Robuste', 1),
(351, 'Design', 1);

-- --------------------------------------------------------

--
-- Structure de la table `Title`
--

CREATE TABLE `Title` (
  `Id` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Title`
--

INSERT INTO `Title` (`Id`, `Title`) VALUES
(1, 'Bonjour');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `concept`
--
ALTER TABLE `concept`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Photo_id_idx` (`Photo_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Photo_id_idx` (`Photo_id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Photo_id_idx` (`Photo_id`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Photo_id_idx` (`Photo_id`);

--
-- Index pour la table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Photo_id_idx` (`Photo_id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AF_idx` (`Photo_id`);

--
-- Index pour la table `Title`
--
ALTER TABLE `Title`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `concept`
--
ALTER TABLE `concept`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=767;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT pour la table `profile`
--
ALTER TABLE `profile`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;
--
-- AUTO_INCREMENT pour la table `Title`
--
ALTER TABLE `Title`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `concept`
--
ALTER TABLE `concept`
  ADD CONSTRAINT `AA` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`);

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `AB` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`);

--
-- Contraintes pour la table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `AC` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `AD` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `AE` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `AF` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

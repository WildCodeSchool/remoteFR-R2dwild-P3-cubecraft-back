-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Hôte : sql11.freemysqlhosting.net
-- Généré le :  ven. 16 avr. 2021 à 11:54
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
-- Base de données :  `sql11405396`
--

-- --------------------------------------------------------

--
-- Structure de la table `concept`
--

CREATE TABLE `concept` (
  `Id` int(11) NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Text` longtext,
  `Photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `concept`
--

INSERT INTO `concept` (`Id`, `Title`, `Text`, `Photo_id`) VALUES
(221, 'A l\'origine', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Une maison container est un logement con&ccedil;u &agrave; partir de containers maritimes &eacute;tant normalement destin&eacute;s &agrave; la destruction. Il s&rsquo;agit donc d&rsquo;am&eacute;nager et de moduler ce bloc pour en faire un lieu de vie habitable, agr&eacute;able et confortable au quotidien.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:12609,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;9&quot;:1,&quot;11&quot;:4,&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:11}\">Une maison container est un logement con&ccedil;u &agrave; partir de containers maritimes &eacute;tant normalement destin&eacute;s &agrave; la destruction. Il s&rsquo;agit donc d&rsquo;am&eacute;nager et de moduler ce bloc pour en faire un lieu de vie habitable, agr&eacute;able et confortable au quotidien.</span></p>', 775),
(222, 'ECOLOGIQUE', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Nous r&eacute;utilisons les containers maritimes qui sont stock&eacute;s sur les grandes zones portuaires afin de leur donner une seconde vie, car ceux-ci son destin&eacute;s &agrave; s\'entasser et &agrave; rester sur les ports pendant de tr&egrave;s nombreuses ann&eacute;es.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:14657,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;9&quot;:1,&quot;11&quot;:4,&quot;14&quot;:{&quot;1&quot;:2,&quot;2&quot;:4013373},&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:11}\">Nous r&eacute;utilisons les containers maritimes qui sont stock&eacute;s sur les grandes zones portuaires afin de leur donner une seconde vie, car ceux-ci son destin&eacute;s &agrave; s\'entasser et &agrave; rester sur les ports pendant de tr&egrave;s nombreuses ann&eacute;es.</span></p>', 769),
(223, 'INNOVANT', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Gr&acirc;ce au container on peut construire autrement et mieux toutes en  preservant la nature. Il devient le support d\'une architecture r&eacute;solument design et technologique.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:14657,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;9&quot;:1,&quot;11&quot;:4,&quot;14&quot;:{&quot;1&quot;:3,&quot;3&quot;:1},&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:11}\">Gr&acirc;ce au container on peut construire autrement et mieux toutes en preservant la nature. Il devient le support d\'une architecture r&eacute;solument design et technologique.</span></p>', 772),
(224, 'ROBUSTE', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Un container est une structure auto-porteuse extr&ecirc;mement r&eacute;sistante qui peut supporter 150 tonnes . Construit a partir d\'acier Corten ( alliage d\'acier r&eacute;sistant &agrave; la corrosion ).&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:14657,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;9&quot;:1,&quot;11&quot;:4,&quot;14&quot;:{&quot;1&quot;:3,&quot;3&quot;:1},&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:11}\">Un container est une structure auto-porteuse extr&ecirc;mement r&eacute;sistante qui peut supporter 150 tonnes . Construit a partir d\'acier Corten ( alliage d\'acier r&eacute;sistant &agrave; la corrosion ).</span></p>', 780),
(225, 'ECONOMIQUE', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Les avantages &eacute;conomiques sont nombreux puisque 1 module container comporte d&eacute;j&agrave; un plancher, des murs et un toit.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:14657,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;9&quot;:1,&quot;11&quot;:4,&quot;14&quot;:{&quot;1&quot;:2,&quot;2&quot;:4013373},&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:11}\">Les avantages &eacute;conomiques sont nombreux puisque 1 module container comporte d&eacute;j&agrave; un plancher, des murs et un toit.&nbsp;</span><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Les avantages &eacute;conomiques sont nombreux puisque 1 module container comporte d&eacute;j&agrave; un plancher, des murs et un toit.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:14657,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;9&quot;:1,&quot;11&quot;:4,&quot;14&quot;:{&quot;1&quot;:2,&quot;2&quot;:4013373},&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:11}\">L\'industrialisation de la production engag&eacute;e par High Cube Eco Design permet de r&eacute;duire les c&ocirc;ut et avoir des prix raisonnables.</span></p>', 767);

-- --------------------------------------------------------

--
-- Structure de la table `divers`
--

CREATE TABLE `divers` (
  `Id` int(1) NOT NULL,
  `Titre` varchar(100) DEFAULT NULL,
  `Word` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Text` longtext,
  `Photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `divers`
--

INSERT INTO `divers` (`Id`, `Titre`, `Word`, `Text`, `Photo_id`) VALUES
(1, 'Un produit', NULL, NULL, 769),
(2, 'HIGHCUBE ECO DESIGN', NULL, '6 Avenue du Maquis des Glières\r\n51470 SAINT-MEMMIE', NULL),
(3, 'A propos', 'Qui sommes-nous ?', 'Chez High Cube, nous proposons des solutions économiques et écologiques quel que soit votre projet : maison économique, écologique, confortable, logement étudiant, logements sociaux, piscine, cabane de jardin et bien plus encore ! Notre bureau d’étude, High Cube Eco Design, est spécialisé dans le domaine du bâtiment et de la construction de maison container. Il saura donc, répondre parfaitement à votre demande. Notre équipe composée d\'expert de la construction et de l\'innovation peux répondre à tous les défis techniques afin de réaliser des projets immobiliers à l\'air du temps! Vous allez pouvoir vivre dans un cadre de vie orignal en un temps record mais aussi réaliser des économies au quotidien, en matière d’électricité et de chauffage ! De plus, le prix d’un container habitable est très avantageux avec un coût de construction moindre par rapport à une maison classique.', 788),
(4, 'Un concept avec de nombreux avantages', NULL, 'Les conteneurs maritimes qui ont été conçus pour transporter des marchandises à travers le monde ont été créées por résister à tous les climats les plus rudes du monde. De l\'eau salée aux températures glaciales, le container maritime est destiné à gérer le pire des pires tout en protégeant sa cargaison. Composé d\'acier corten, ils résistent énormément à la corrosion ou à la rouille', NULL),
(5, 'Espace particulier ', NULL, NULL, NULL),
(6, 'Espace professionnel', NULL, NULL, NULL),
(7, 'HIGHCUBE ECODESIGN, spécialiste de la construction en container', 'Découvrir nos offres', 'Vous êtes un particulier ?', 770),
(8, 'HIGHCUBE ECO DESIGN, SPECIALISTE DE LA CONSTRUCTION EN CONTAINER', 'Découvrir nos offres', 'Vous êtes un professionnel ?', 775),
(9, 'Actualités', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `encart`
--

CREATE TABLE `encart` (
  `Id` int(11) NOT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `Text` longtext,
  `Photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `encart`
--

INSERT INTO `encart` (`Id`, `Title`, `Text`, `Photo_id`) VALUES
(5, '', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Les conteneurs maritimes qui ont &eacute;t&eacute; con&ccedil;us pour transporter des marchandises &agrave; travers le monde ont &eacute;t&eacute; cr&eacute;&eacute;es por r&eacute;sister &agrave; tous les climats les plus rudes du monde. De l\'eau sal&eacute;e aux temp&eacute;ratures glaciales, le container maritime est destin&eacute; &agrave; g&eacute;rer le pire des pires tout en prot&eacute;geant sa cargaison. Compos&eacute; d\'acier corten, ils r&eacute;sistent &eacute;norm&eacute;ment &agrave; la corrosion ou &agrave; la rouille&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:10689,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;9&quot;:0,&quot;10&quot;:1,&quot;11&quot;:4,&quot;14&quot;:{&quot;1&quot;:3,&quot;3&quot;:1},&quot;16&quot;:11}\">Les conteneurs maritimes qui ont &eacute;t&eacute; con&ccedil;us pour transporter des marchandises &agrave; travers le monde ont &eacute;t&eacute; cr&eacute;&eacute;es por r&eacute;sister &agrave; tous les climats les plus rudes du monde. De l\'eau sal&eacute;e aux temp&eacute;ratures glaciales, le container maritime est destin&eacute; &agrave; g&eacute;rer le pire des pires tout en prot&eacute;geant sa cargaison. Compos&eacute; d\'acier corten, ils r&eacute;sistent &eacute;norm&eacute;ment &agrave; la corrosion ou &agrave; la rouille</span></p>', 772),
(6, 'Une solution économique', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Une solution &eacute;conomique&hellip; \\nDe plus, les fondations pour une maison conteneur sont l&eacute;g&egrave;res car on utilise des pilotis pour supporter la maison. Enfin, le toit &eacute;tant plat, on &eacute;conomise &eacute;galement toute la menuiserie/charpente. On estime une construction en conteneur maritime, 20% &agrave; 30% moins cher qu\'une construction traditionnelle.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:11201,&quot;3&quot;:{&quot;1&quot;:0},&quot;9&quot;:0,&quot;10&quot;:0,&quot;11&quot;:4,&quot;12&quot;:0,&quot;14&quot;:{&quot;1&quot;:3,&quot;3&quot;:1},&quot;16&quot;:11}\">De plus, les fondations pour une maison conteneur sont l&eacute;g&egrave;res car on utilise des pilotis pour supporter la maison. Enfin, le toit &eacute;tant plat, on &eacute;conomise &eacute;galement toute la menuiserie/charpente. On estime une construction en conteneur maritime, 20% &agrave; 30% moins cher qu\'une construction traditionnelle.</span></p>', 792),
(7, 'Une solution rapide', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Une solution rapide...                                                                              Nous r&eacute;alisons tous vos projets en conteneur maritime dans notre usine de fabrication. Nous avons la possibilit&eacute; de travailler en 3x8, en int&eacute;rieur sans les al&eacute;as de la construction traditionnelle (ex: intemp&eacute;ries)&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:10689,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;9&quot;:0,&quot;10&quot;:1,&quot;11&quot;:4,&quot;14&quot;:{&quot;1&quot;:3,&quot;3&quot;:1},&quot;16&quot;:11}\">Nous r&eacute;alisons tous vos projets en conteneur maritime dans notre usine de fabrication. Nous avons la possibilit&eacute; de travailler en 3x8, en int&eacute;rieur sans les al&eacute;as de la construction traditionnelle (ex: intemp&eacute;ries)</span></p>', 779),
(8, 'Une solution écologique', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Une solution &eacute;cologique...\\n                                                                                \\nPour r&eacute;aliser votre projet, nous recyclons des conteneurs maritimes destin&eacute;s &agrave; &ecirc;tre d&eacute;truit afin de leur donner une seconde vie. En recyclant ces conteneurs, on r&eacute;duit consid&eacute;rablement notre empreinte carbone sur la construction d\'une maison.\\n\\nDe plus, pour r&eacute;pondre aux nouvelles contraintes environnementales, tous les mat&eacute;riaux utilis&eacute;s &agrave; la r&eacute;alisation d\'un projet en conteneur sont biosourc&eacute;s afin un bilan carbon souvent n&eacute;gatif. Nos solutions r&eacute;pondent &eacute;galement aux pr&eacute;-requis de la RE2020, b&acirc;timent &agrave; &eacute;nergie positive.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:11201,&quot;3&quot;:{&quot;1&quot;:0},&quot;9&quot;:0,&quot;10&quot;:0,&quot;11&quot;:4,&quot;12&quot;:0,&quot;14&quot;:{&quot;1&quot;:3,&quot;3&quot;:1},&quot;16&quot;:11}\">Pour r&eacute;aliser votre projet, nous recyclons des conteneurs maritimes destin&eacute;s &agrave; &ecirc;tre d&eacute;truit afin de leur donner une seconde vie. En recyclant ces conteneurs, on r&eacute;duit consid&eacute;rablement notre empreinte carbone sur la construction d\'une maison.<br /><br />De plus, pour r&eacute;pondre aux nouvelles contraintes environnementales, tous les mat&eacute;riaux utilis&eacute;s &agrave; la r&eacute;alisation d\'un projet en conteneur sont biosourc&eacute;s afin un bilan carbon souvent n&eacute;gatif. Nos solutions r&eacute;pondent &eacute;galement aux pr&eacute;-requis de la RE2020, b&acirc;timent &agrave; &eacute;nergie positive.</span></p>', 792);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `Id` int(11) NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Text` longtext,
  `Link` varchar(20000) DEFAULT NULL,
  `Photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`Id`, `Title`, `Text`, `Link`, `Photo_id`) VALUES
(106, 'L\'habitation de demain', '<p>Bonjour &agrave; tous</p>', 'https://www.lemonde.fr/politique/article/2021/04/16/la-fracture-numerique-se-reduit-mais-persiste-entre-les-territoires_6076996_823448.html', 767),
(107, 'Lorem Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis aliquam augue. Morbi id nibh lobortis, porttitor neque malesuada, aliquet augue. Nullam diam ex, venenatis ut cursus nec, consectetur et tellus. Aenean efficitur lorem eu quam imperdiet, a mollis tellus accumsan. Fusce aliquam placerat arcu quis fringilla. Praesent ante mi, viverra sit amet elit vel, rutrum accumsan dui. Donec dictum porttitor rutrum. Sed at elit non libero posuere viverra. Integer dictum quam mi, at sollicitudin nunc luctus sed.</p>\n<p>Morbi ac semper lectus. Duis ac quam gravida purus volutpat ornare sed at erat. Nulla a libero et mauris sagittis euismod. Vestibulum cursus, arcu a molestie dictum, felis nulla elementum massa, ut vestibulum est augue eget arcu. Sed nec bibendum ante, dictum iaculis diam. Quisque placerat turpis sit amet elit blandit, vitae molestie massa porttitor. In lorem enim, porttitor eget orci quis, imperdiet viverra augue. Nulla facilisis sagittis mauris nec ornare. Nam ligula tellus, elementum ac ante vel, scelerisque rutrum sem. Maecenas quis ipsum tempor, imperdiet dolor ac, blandit turpis.</p>', 'https://www.lesechos.fr', 767),
(109, 'Lever de fond', '<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et emp&ecirc;che de se concentrer sur la mise en page elle-m&ecirc;me. L\'avantage du Lorem Ipsum sur un texte g&eacute;n&eacute;rique comme \'Du texte. Du texte. Du texte.\' est qu\'il poss&egrave;de une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du fran&ccedil;ais standard. De nombreuses suites logicielles de mise en page ou &eacute;diteurs de sites Web ont fait du Lorem Ipsum leur faux texte par d&eacute;faut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'&agrave; leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).</p>', 'https://www.lemonde.fr', 767),
(112, 'Figaro', '<p>La France a d&eacute;pass&eacute; ce jeudi 15 avril le lourd bilan de 100.000 morts depuis le d&eacute;but de l\'&eacute;pid&eacute;mie de Covid-19, en pleine troisi&egrave;me vague qui dure et laisse ouvertes les questions sur une r&eacute;ouverture du pays &agrave; partir de la mi-mai. En franchissant cette barre symbolique, le pays rejoint en Europe la Grande-Bretagne (127.000 morts) et l\'Italie (115.000 morts), mais d\'autres pays (Belgique, Portugal) ont une mortalit&eacute; plus &eacute;lev&eacute;e par habitant.</p>', 'https://www.lefigaro.fr/sciences/covid-19-la-france-s-apprete-a-depasser-les-100-000-morts-les-etats-unis-prolongent-la-pause-pour-johnson-johnson-20210415', 771);

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
(767, '/images/3D-Maisoncontainer3.png'),
(768, '/images/3D-Maisoncontainer2.png'),
(769, '/images/3D-Maisoncontainer4.png'),
(770, '/images/3D-Maisoncontainer5.png'),
(771, '/images/3D-Maisoncontainer6.png'),
(772, '/images/3D-Maisoncontainer7.png'),
(774, '/images/3D-Maisoncontainer.png'),
(775, '/images/avantprojetcontainer.png'),
(778, '/images/plan3D-bureauHighCubeEcoDesign.png'),
(779, '/images/plan3D-maisoncontainer.png'),
(780, '/images/projet2D-bureauMagentaContainer.png'),
(788, '/images/bureauHighCubeEcoDesign-rendufinal.png'),
(792, '/images/3D-Maisoncontainer8.png'),
(793, '/images/bureauHighCubeEcoDesign-rendufinal.png'),
(795, '/images/'),
(802, '/images/bureauHighCubeEcoDesign-rendufinal.png'),
(805, '/images/bureauHighCubeEcoDesign-rendufinal.png'),
(806, '/images/plan3D-maisoncontainer.png');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `CategoryName` varchar(100) DEFAULT NULL,
  `Description` varchar(500) DEFAULT '',
  `Price` int(11) DEFAULT NULL,
  `Individual` tinyint(4) DEFAULT NULL,
  `Photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`Id`, `CategoryName`, `Description`, `Price`, `Individual`, `Photo_id`) VALUES
(139, 'Maison économique', '<p>Isolation int&eacute;rieur 120mm de laine d eroche, VMC simple flux, radiateur &eacute;lectrique, toit plat non accessible...</p>', 1200, 1, 770),
(140, 'Maison confort', '<p>Isolation int&eacute;rieur/ext&eacute;rieur 75+160mm de laine de roche, VMC double flux, PAC air/eau, toit plat accessible ou en pente selon projet...&nbsp;</p>', 1600, 1, 770),
(141, 'Maison écologique', '<p>+Isolation int&eacute;rieur/ext&eacute;rieur 75+160mm de laine de bois, VMC double flux, PAC air/eau, toit plat accessible v&eacute;g&eacute;talis&eacute;, panneaux solaires, r&eacute;cup&eacute;ration eau pluviale...</p>', 1800, 1, 772),
(142, 'Immeuble d’habitation collectif', '', 1300, 0, 767),
(143, 'Bureaux professionnels', '', 1500, 0, 779),
(144, 'Studio de jardin', '', 1200, 0, 768);

-- --------------------------------------------------------

--
-- Structure de la table `profile`
--

CREATE TABLE `profile` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `JobName` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profile`
--

INSERT INTO `profile` (`Id`, `FirstName`, `LastName`, `JobName`, `Description`, `Photo_id`) VALUES
(23, 'Tolgay', 'Yildiz', 'CEO - Fondateur, Directeur du bureau d\'étude', '<p>Tolgay est le fondateur de Highcube</p>', 772),
(24, 'Ali', 'Ozcan', 'COO - Directeur Usine', '<p>Ali est en charge de la transformation et l\'am&eacute;nagement des containers maritimes</p>', 769),
(25, 'Salim', 'Ousseni', 'CTO - Ingénieur Structure', '<p>Salim supervise l\'&eacute;tude structure et m&eacute;tr&eacute;</p>', 768),
(26, 'Soufiane', 'Boulal', 'CSO - Responsable Commercial', '<p>Soufiane pilote le d&eacute;veloppement commercial de Highcube&nbsp;</p>', 768),
(27, 'Christelle', 'Mathias', 'Architecte HMONP', '<p>Christelle nous aide pour les permis de construire et la visite 3D</p>', 767),
(28, 'Bet', 'Owega', 'Bureau d\'étude thermique', '<p>Bet Owega est notre partenaire pour des mat&eacute;riaux innovant et &eacute;cologique</p>', 767);

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `Id` int(11) NOT NULL,
  `Word` varchar(100) DEFAULT '',
  `Photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `slider`
--

INSERT INTO `slider` (`Id`, `Word`, `Photo_id`) VALUES
(478, 'Innovant', NULL),
(502, 'Robuste', NULL),
(516, 'Ecologique', 768),
(522, 'Economique', NULL),
(523, 'Modulable', NULL),
(524, 'Design', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', '$2b$10$g5xIrvzZ3Nlq/6EC9vCwpOv3w4j59yjjOCUihktzmFernAI.5EaFS');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `concept`
--
ALTER TABLE `concept`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AA` (`Photo_id`);

--
-- Index pour la table `divers`
--
ALTER TABLE `divers`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `A` (`Photo_id`);

--
-- Index pour la table `encart`
--
ALTER TABLE `encart`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `foreign key` (`Photo_id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AC` (`Photo_id`);

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
  ADD KEY `AD` (`Photo_id`);

--
-- Index pour la table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AE` (`Photo_id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AF` (`Photo_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `concept`
--
ALTER TABLE `concept`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT pour la table `divers`
--
ALTER TABLE `divers`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `encart`
--
ALTER TABLE `encart`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=807;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT pour la table `profile`
--
ALTER TABLE `profile`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `concept`
--
ALTER TABLE `concept`
  ADD CONSTRAINT `AA` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`);

--
-- Contraintes pour la table `divers`
--
ALTER TABLE `divers`
  ADD CONSTRAINT `A` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`);

--
-- Contraintes pour la table `encart`
--
ALTER TABLE `encart`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`);

--
-- Contraintes pour la table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `AC` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `AD` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`);

--
-- Contraintes pour la table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `AE` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`);

--
-- Contraintes pour la table `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `AF` FOREIGN KEY (`Photo_id`) REFERENCES `photo` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 10 sep. 2023 à 23:03
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cvc`
--

-- --------------------------------------------------------

--
-- Structure de la table `condition`
--

CREATE TABLE `condition` (
  `id_condition` int NOT NULL,
  `id_voiture` int NOT NULL,
  `age` int NOT NULL,
  `duree_permis` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `condition`
--

INSERT INTO `condition` (`id_condition`, `id_voiture`, `age`, `duree_permis`) VALUES
(1, 61, 30, 10),
(2, 62, 28, 8),
(3, 63, 35, 15),
(4, 64, 32, 12),
(5, 65, 27, 7),
(6, 66, 29, 9),
(7, 67, 26, 6),
(8, 68, 31, 11),
(9, 69, 28, 8),
(10, 70, 29, 9);

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `id_location` int NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `km` float NOT NULL,
  `tarif` float NOT NULL,
  `etat` varchar(100) NOT NULL,
  `id_voiture` int NOT NULL,
  `id_utilisateur` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`id_location`, `debut`, `fin`, `km`, `tarif`, `etat`, `id_voiture`, `id_utilisateur`) VALUES
(21, '2023-09-15', '2023-09-20', 500, 300, 'En cours', 61, 24),
(22, '2023-10-01', '2023-10-10', 800, 400, 'Terminée', 62, 25),
(23, '2023-09-25', '2023-10-05', 600, 350, 'En cours', 63, 26),
(24, '2023-09-18', '2023-09-22', 400, 250, 'Terminée', 64, 27),
(25, '2023-10-05', '2023-10-15', 700, 375, 'En cours', 65, 28),
(26, '2023-09-20', '2023-09-25', 550, 320, 'Terminée', 66, 29),
(27, '2023-10-10', '2023-10-20', 900, 420, 'En cours', 67, 30),
(28, '2023-09-25', '2023-10-05', 600, 350, 'En cours', 68, 31),
(29, '2023-10-15', '2023-10-25', 750, 380, 'En cours', 69, 32),
(30, '2023-09-30', '2023-10-10', 700, 360, 'Terminée', 70, 33);

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id_marque` int NOT NULL,
  `nom` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom`, `logo`) VALUES
(41, 'Toyota', 'toyota_logo.png'),
(42, 'Honda', 'honda_logo.png'),
(43, 'Ford', 'ford_logo.png'),
(44, 'Chevrolet', 'chevrolet_logo.png'),
(45, 'Nissan', 'nissan_logo.png'),
(46, 'Hyundai', 'hyundai_logo.png'),
(47, 'Volkswagen', 'volkswagen_logo.png'),
(48, 'BMW', 'bmw_logo.png'),
(49, 'Mercedes-Benz', 'mercedes_logo.png'),
(50, 'Audi', 'audi_logo.png');

-- --------------------------------------------------------

--
-- Structure de la table `medias`
--

CREATE TABLE `medias` (
  `id_medias` int NOT NULL,
  `url` varchar(100) NOT NULL,
  `id_voiture` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `medias`
--

INSERT INTO `medias` (`id_medias`, `url`, `id_voiture`) VALUES
(11, 'media2.jpg', 61),
(12, 'media3.jpg', 62),
(13, 'media4.jpg', 63),
(14, 'media5.jpg', 64),
(15, 'media6.jpg', 65),
(16, 'media7.jpg', 66),
(17, 'media8.jpg', 67),
(18, 'media9.jpg', 68),
(19, 'media10.jpg', 69);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `email`, `mdp`, `telephone`) VALUES
(24, 'John', 'Doe', 'john.doe@example.com', '1cde8f3e6f5a3e31a5d7b135ddbb54af4aa2fc84', '5551112222'),
(25, 'Laura', 'Miller', 'laura.miller@example.com', '1736bf5c2bac4522713b6ba3ab674414dff87c31', '7778889999'),
(26, 'Matthew', 'Davis', 'matthew.davis@example.com', 'a10e7a37dcf45c693a5b7041a948c16b1b9a5afa', '6667778888'),
(27, 'Olivia', 'Wilson', 'olivia.wilson@example.com', 'd1000a28b7c8593415b077058be31ce0d8585ac0', '9998887777'),
(28, 'Sophia', 'Wang', 'sophia.wang@example.com', '5a867b2343d1c63caf1ed7539189c2546a7a5364', '1112223333'),
(29, 'Ethan', 'Brown', 'ethan.brown@example.com', '364bcd22a754947e0cb02444ba19df977b700bbd', '4445556666'),
(30, 'Ava', 'Nguyen', 'ava.nguyen@example.com', '85b859988f674945d32678638dc4dc79f548e414', '7776665555'),
(31, 'Liam', 'Harris', 'liam.harris@example.com', '42326cddd57e976234aea5fbe78f4cc2a779ce34', '8887776666'),
(32, 'Mia', 'Garcia', 'mia.garcia@example.com', 'ccca29dab70708da27c07a1c5c94e2e844427dfd', '6665554444'),
(33, 'William', 'Smith', 'william.smith@example.com', '0ef636d4d76b58cb7c658cd44177be7d91016e0f', '1113335555');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id_ville` int NOT NULL,
  `nom` varchar(100) NOT NULL,
  `pays` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id_ville`, `nom`, `pays`) VALUES
(1, 'New York', 'États-Unis'),
(2, 'Los Angeles', 'États-Unis'),
(3, 'Tokyo', 'Japon'),
(4, 'London', 'Royaume-Uni'),
(5, 'Paris', 'France'),
(6, 'Berlin', 'Allemagne'),
(7, 'Sydney', 'Australie'),
(8, 'Toronto', 'Canada'),
(9, 'Shanghai', 'Chine'),
(10, 'Rio de Janeiro', 'Brésil');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE `voiture` (
  `id_voiture` int NOT NULL,
  `nom` varchar(100) NOT NULL,
  `marque` varchar(100) NOT NULL,
  `nbr_place` int NOT NULL,
  `puissance` int NOT NULL,
  `transmission` varchar(100) NOT NULL,
  `vitesse_max` int NOT NULL,
  `id_marque` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`id_voiture`, `nom`, `marque`, `nbr_place`, `puissance`, `transmission`, `vitesse_max`, `id_marque`) VALUES
(61, 'Camry', 'Toyota', 5, 200, 'Automatique', 210, 41),
(62, 'Civic', 'Honda', 5, 180, 'Automatique', 200, 42),
(63, 'F-150', 'Ford', 6, 250, 'Automatique', 220, 43),
(64, 'Malibu', 'Chevrolet', 5, 190, 'Automatique', 200, 44),
(65, 'Altima', 'Nissan', 5, 182, 'Automatique', 200, 45),
(66, 'Elantra', 'Hyundai', 5, 147, 'Automatique', 190, 46),
(67, 'Jetta', 'Volkswagen', 5, 147, 'Automatique', 190, 47),
(68, '3 Series', 'BMW', 5, 248, 'Automatique', 250, 48),
(69, 'C-Class', 'Mercedes-Benz', 5, 255, 'Automatique', 260, 49),
(70, 'A4', 'Audi', 5, 201, 'Automatique', 220, 50);

-- --------------------------------------------------------

--
-- Structure de la table `voiture_ville`
--

CREATE TABLE `voiture_ville` (
  `id_voiture_ville` int NOT NULL,
  `id_ville` int NOT NULL,
  `id_voiture` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `voiture_ville`
--

INSERT INTO `voiture_ville` (`id_voiture_ville`, `id_ville`, `id_voiture`) VALUES
(1, 8, 69),
(2, 9, 70),
(3, 10, 61),
(4, 1, 62),
(5, 2, 63),
(6, 3, 64),
(7, 4, 65),
(8, 5, 66),
(9, 6, 67),
(10, 7, 68);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `condition`
--
ALTER TABLE `condition`
  ADD PRIMARY KEY (`id_condition`),
  ADD UNIQUE KEY `id_voiture` (`id_voiture`),
  ADD UNIQUE KEY `ID_CONDITION_IND` (`id_condition`),
  ADD UNIQUE KEY `SID_CONDI_VOITU_IND` (`id_voiture`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id_location`),
  ADD UNIQUE KEY `ID_LOCATION_IND` (`id_location`),
  ADD KEY `EQU_LOCAT_VOITU_IND` (`id_voiture`),
  ADD KEY `EQU_LOCAT_UTILI_IND` (`id_utilisateur`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`),
  ADD UNIQUE KEY `ID_MARQUE_IND` (`id_marque`);

--
-- Index pour la table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id_medias`),
  ADD UNIQUE KEY `ID_MEDIAS_IND` (`id_medias`),
  ADD KEY `EQU_MEDIA_VOITU_IND` (`id_voiture`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD UNIQUE KEY `ID_UTILISATEUR_IND` (`id_utilisateur`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_ville`),
  ADD UNIQUE KEY `ID_VILLE_IND` (`id_ville`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`id_voiture`),
  ADD UNIQUE KEY `ID_VOITURE_IND` (`id_voiture`),
  ADD KEY `EQU_VOITU_MARQU_IND` (`id_marque`);

--
-- Index pour la table `voiture_ville`
--
ALTER TABLE `voiture_ville`
  ADD PRIMARY KEY (`id_voiture_ville`),
  ADD UNIQUE KEY `ID_VOITURE_VILLE_IND` (`id_voiture_ville`),
  ADD KEY `EQU_VOITU_VILLE_IND` (`id_ville`),
  ADD KEY `EQU_VOITU_VOITU_IND` (`id_voiture`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `condition`
--
ALTER TABLE `condition`
  MODIFY `id_condition` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `id_location` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `medias`
--
ALTER TABLE `medias`
  MODIFY `id_medias` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id_ville` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `voiture`
--
ALTER TABLE `voiture`
  MODIFY `id_voiture` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `voiture_ville`
--
ALTER TABLE `voiture_ville`
  MODIFY `id_voiture_ville` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `condition`
--
ALTER TABLE `condition`
  ADD CONSTRAINT `condition_ibfk_1` FOREIGN KEY (`id_voiture`) REFERENCES `voiture` (`id_voiture`);

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`id_voiture`) REFERENCES `voiture` (`id_voiture`),
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `medias`
--
ALTER TABLE `medias`
  ADD CONSTRAINT `medias_ibfk_1` FOREIGN KEY (`id_voiture`) REFERENCES `voiture` (`id_voiture`);

--
-- Contraintes pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD CONSTRAINT `voiture_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`);

--
-- Contraintes pour la table `voiture_ville`
--
ALTER TABLE `voiture_ville`
  ADD CONSTRAINT `voiture_ville_ibfk_1` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id_ville`),
  ADD CONSTRAINT `voiture_ville_ibfk_2` FOREIGN KEY (`id_voiture`) REFERENCES `voiture` (`id_voiture`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 07:16 PM
-- Server version: 8.0.40
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofppt`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidatures`
--

CREATE TABLE `candidatures` (
  `CandidatureId` int NOT NULL,
  `CIN` varchar(20) NOT NULL,
  `OffreId` int NOT NULL,
  `DateCandidature` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Type` varchar(40) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `candidatures`
--

INSERT INTO `candidatures` (`CandidatureId`, `CIN`, `OffreId`, `DateCandidature`, `Type`, `created_at`, `updated_at`) VALUES
(70, 'CIN010', 4, '2025-01-19 10:49:59', NULL, '2025-01-19 09:49:59', '2025-01-19 09:49:59'),
(71, 'CIN010', 1, '2025-01-19 16:11:59', NULL, '2025-01-19 15:11:59', '2025-01-19 15:11:59'),
(72, 'CIN010', 3, '2025-01-19 16:12:53', NULL, '2025-01-19 15:12:53', '2025-01-19 15:12:53'),
(73, 'CIN010', 5, '2025-01-19 19:06:58', NULL, '2025-01-19 18:06:58', '2025-01-19 18:06:58'),
(74, 'CIN010', 1, '2025-01-19 19:32:51', NULL, '2025-01-19 18:32:51', '2025-01-19 18:32:51'),
(75, 'CIN010', 47, '2025-01-20 10:15:25', NULL, '2025-01-20 09:15:25', '2025-01-20 09:15:25'),
(76, 'IC143658', 1, '2025-01-20 21:07:57', NULL, '2025-01-20 20:07:57', '2025-01-20 20:07:57'),
(77, 'IC143658', 48, '2025-01-20 21:25:01', NULL, '2025-01-20 20:25:01', '2025-01-20 20:25:01'),
(80, 'BB678901', 1, '2025-01-21 10:53:34', NULL, '2025-01-21 09:53:34', '2025-01-21 09:53:34'),
(81, 'BB678901', 50, '2025-01-21 11:19:09', NULL, '2025-01-21 10:19:09', '2025-01-21 10:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `competences`
--

CREATE TABLE `competences` (
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `filiereid` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `competences`
--

INSERT INTO `competences` (`id`, `name`, `filiereid`, `created_at`, `updated_at`) VALUES
(1, 'Préparer un projet web', 1, '2025-01-18 17:14:12', '2025-01-18 17:14:12'),
(2, 'Adopter l’approche agile', 1, '2025-01-18 17:14:12', '2025-01-18 17:14:12'),
(3, 'Gérer les données', 1, '2025-01-18 17:14:12', '2025-01-18 17:14:12'),
(4, 'Développer en front-end', 1, '2025-01-18 17:14:12', '2025-01-18 17:14:12'),
(5, 'Développer en back-end', 1, '2025-01-18 17:14:12', '2025-01-18 17:14:12'),
(6, 'Créer une application Cloud native', 1, '2025-01-18 17:14:12', '2025-01-18 17:14:12'),
(21, 'Comprendre l\'architecture Cloud', 2, '2025-01-18 17:19:10', '2025-01-18 17:19:10'),
(22, 'Explorer un environnement Cloud propriétaire en ligne public', 2, '2025-01-18 17:19:10', '2025-01-18 17:19:10'),
(23, 'Implémenter un environnement Cloud avec une solution libre', 2, '2025-01-18 17:19:10', '2025-01-18 17:19:10'),
(24, 'Administrer un environnement Cloud propriétaire en ligne public', 2, '2025-01-18 17:19:10', '2025-01-18 17:19:10'),
(25, 'Sécuriser un environnement Cloud propriétaire en ligne public', 2, '2025-01-18 17:19:10', '2025-01-18 17:19:10'),
(26, 'Gouverner les données dans le Cloud', 1, '2025-01-18 17:19:10', '2025-01-18 17:19:10'),
(27, 'Établir une stratégie de maintien d\'un SI dans un Cloud propriétaire en ligne', 2, '2025-01-18 17:19:10', '2025-01-18 17:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `diplomes`
--

CREATE TABLE `diplomes` (
  `DiplomeId` int NOT NULL,
  `NomDiplome` varchar(255) NOT NULL,
  `SecteurID` int DEFAULT NULL,
  `DiplomeFile` varchar(100) DEFAULT NULL,
  `Niveau` varchar(100) DEFAULT NULL,
  `Etablissement` varchar(255) DEFAULT NULL,
  `AnneeDiplome` int DEFAULT NULL,
  `Mention` varchar(100) DEFAULT NULL,
  `CIN` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `diplomes`
--

INSERT INTO `diplomes` (`DiplomeId`, `NomDiplome`, `SecteurID`, `DiplomeFile`, `Niveau`, `Etablissement`, `AnneeDiplome`, `Mention`, `CIN`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor of Computer Science', 1, 'file1.pdf', 'Bachelor', 'University of Beni Mellal', 2024, 'Honors', 'CIN002', '2025-01-14 17:08:31', '2025-01-06 17:09:39'),
(2, 'Master in Graphic Design', 2, 'file2.pdf', 'Master', 'Design School Marrakech', 2024, 'Good', 'CIN003', '2025-01-14 17:08:38', '2025-01-12 17:09:42'),
(3, 'MBA in Business Administration', 3, 'file3.pdf', 'MBA', 'Business University Casablanca', 2024, 'Excellent', 'CIN004', '2025-01-14 17:08:45', '2025-01-12 17:09:46'),
(4, 'Bachelor in Civil Engineering', 4, 'file4.pdf', 'Bachelor', 'Engineering College Rabat', 2024, 'Honors', 'CIN006', '2025-01-21 17:08:49', '2025-01-20 17:09:49'),
(5, 'HR Management Diploma', 5, 'file5.pdf', 'Diploma', 'HR Academy Fes', 2024, 'Good', 'CIN010', '2025-01-15 17:08:52', '2025-01-28 17:09:52'),
(6, 'Senior Technician Degree', 6, 'file6.pdf', 'Degree', 'Tech College Tangier', 2024, 'Excellent', 'CIN010', '2025-01-23 17:08:57', '2025-01-26 17:09:55'),
(7, 'Bachelor in Marketing', 7, 'file7.pdf', 'Bachelor', 'Business School Agadir', 2024, 'Good', 'CIN009', '2025-01-22 17:09:02', '2025-01-28 17:09:59'),
(8, 'IT Support Certification', 8, 'file8.pdf', 'Certification', 'Tech Academy Essaouira', 2024, 'Good', 'CIN008', '2025-01-22 17:09:06', '2025-01-27 17:10:01'),
(9, 'Data Science Master', 9, 'file9.pdf', 'Master', 'Data Institute Meknes', 2024, 'Excellent', 'CIN007', '2025-01-15 17:09:09', '2025-01-19 17:10:04'),
(10, 'Consulting Certificate', 10, 'file10.pdf', 'Certificate', 'Consulting University Oujda', 2024, 'Honors', 'CIN009', '2025-01-22 17:09:12', '2025-01-05 17:10:11'),
(14, 'Technicien Spécialisé Web Full Stack', 1, 'bg.jpeg', 'TS', 'ISTANTIC Béni Mellal', 2019, 'A bien', 'IC143658', '2025-01-20 19:57:11', '2025-01-20 19:57:11'),
(16, 'Technicien Spécialisé en Développement Informatique', 1, '1684188611094_Procedure-de-connexion-au-reseau-campus.pdf', 'TS', 'ISTANTIC', 2020, 'A Bien', 'BB678901', '2025-01-21 09:32:09', '2025-01-21 09:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `entreprises`
--

CREATE TABLE `entreprises` (
  `TypeIdentifiant` varchar(50) NOT NULL,
  `Identifiant` varchar(50) NOT NULL,
  `NbEmployer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `E_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `DescriptionE` text,
  `Type` varchar(50) DEFAULT NULL,
  `Taille` varchar(50) DEFAULT NULL,
  `Created_At` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Ville` varchar(100) DEFAULT NULL,
  `Pays` varchar(100) DEFAULT NULL,
  `Logo` text,
  `SiteInternet` varchar(255) DEFAULT NULL,
  `Adresse` text,
  `ResponsableId` int DEFAULT NULL,
  `Secteur` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `entreprises`
--

INSERT INTO `entreprises` (`TypeIdentifiant`, `Identifiant`, `NbEmployer`, `E_Name`, `Email`, `Password`, `DescriptionE`, `Type`, `Taille`, `Created_At`, `Ville`, `Pays`, `Logo`, `SiteInternet`, `Adresse`, `ResponsableId`, `Secteur`, `updated_at`, `id`) VALUES
('ICE', '001234567890124', '11-50', 'NextTech Solutions', 'nexttech@gmail.com', '$2y$12$ff48nuGu1VTixSOEz8Zn1euYOakXt7Akd7NUBjpvVYOCbIiqfokvu', NULL, NULL, NULL, '2025-01-21 10:01:21', 'Beni Mallal', 'Maroc', 'C:\\fakepath\\companylogo.webp', 'www.nextTech.ma', '15 Avenue Hassan II, Casablanca', 12, 'IT', '2025-01-21 10:01:21', 44),
('ICE', '021497851247925', '51-200', 'tech bdz', 'charikalmoubarika128@gmail.com', '$2y$12$0ILevN3m2UldnMIyfCs1/emU9xSImLdHm3wtvYbfqvMCzDeE6fmPe', NULL, NULL, NULL, '2025-01-18 11:16:18', 'Beni Mellal', 'Canada', 'C:\\fakepath\\maroc_telecomlogo.png', 'https://www.linkedin.com/feed', 'nzala', 1401454, 'Éducation', '2025-01-18 11:16:18', 34),
('ICE', '068745982146325', '11-50', 'IBMDf', 'mustaphaniamane1235@gmail.com', '$2y$12$yM4GOTz.7AjrcvhAj7Yci.pxrMq1VhjJuCXZjoeYBkbqhDzLSJxU.', NULL, NULL, NULL, '2025-01-18 10:57:53', 'Beni Mellal', 'France', 'C:\\fakepath\\candida2.jpg', 'https://www.linkedin.com/feed', 'LABANI', NULL, 'Transport', '2025-01-18 10:57:53', 28),
('ICE', '074582168729547', '51-200', 'AMAZON', 'soukainaniamane1847@gmail.com', '$2y$12$yCWFWt6UlJayi7n26pLkMelvUBIgU6Do9JS8ydT77DaxpZXzYqNXK', NULL, NULL, NULL, '2025-01-18 11:43:18', 'beni mellal', 'Canada', 'C:\\fakepath\\maroc_telecomlogo.png', 'https://www.linkedin.com/feed', 'casa', 745, 'Finance', '2025-01-18 11:43:18', 36),
('ICE', '111872549721357', '500+', 'Maroc Télécom', 'maroc.telecom2@gmail.com', '$2y$12$TTX6Uz43K7YwPJfembtJ7Oj1jx33x17uM1segtpZ8Co.DsmAp0GFS', NULL, NULL, NULL, '2025-01-13 16:53:51', 'Rabat', 'Maroc', 'C:\\fakepath\\maroc_telecomlogo.png', 'https://www.iam.ma/index.aspx', 'Hay Riad - Rabat', NULL, 'Commerce', '2025-01-13 16:53:51', 17),
('Type001', '123456789123456', '50', 'Tech Corp', 'tech@corp.com', 'password123', 'Tech company specializing in software.', 'Private', 'Medium', '2024-12-31 23:00:00', 'Beni Mellal', 'Morocco', NULL, 'http://tech-corp.com', '123 Tech St.', 1, 'IT', NULL, 3),
('ICE', '123456789123457', '51-200', 'ff', 'charikalmoubarika12345@gmail.com', '$2y$12$smABdmwhZcTNZfxL6qsEj.F1wgiqYVgsF9z3/UQTUyr8MaJsKcnOC', NULL, NULL, NULL, '2025-01-21 18:05:29', 'Beni Mellal', 'France', NULL, 'https://www.linkedin.com/feed', 'fff', 1234, 'IT', '2025-01-21 18:05:29', 46),
('ICE', '124578964215785', '11-50', 'STDATA', 'techstdata@gmail.com', '$2y$12$k/h2zmpOpZFNwRUzH22/b.nUesoLydNspy0Vcekk1H9BUNzHDiiDm', NULL, NULL, NULL, '2025-01-20 20:18:01', 'Béni Mellal', 'Maroc', 'C:\\fakepath\\logo512.png', 'https://www.stdata.ma', 'Béni Mellal', 1245, 'IT', '2025-01-20 20:18:01', 43),
('ICE', '125879456812478', '11-50', 'bbb', 'charikalmoubarika20@gmail.com', '$2y$12$oCuPA9k/IhCFlpqyAD0.L.TcEYkA/V/PD3EfaCkX3ufkb5dhGo2wW', NULL, NULL, NULL, '2025-01-18 14:37:49', 'bb', 'France', 'C:\\fakepath\\offtlogo.png', 'https://www.iam.ma/index.aspx', 'nzala', 1258, 'Santé', '2025-01-18 14:37:49', 41),
('ICE', '127482157492587', '11-50', 'BIM', 'charikalmoubarika@gmail.com', '$2y$12$poB9XQRIQXUslK7wFP51eeSvnYjaDeRbUZrS7EgeRzge3oiANQy.K', NULL, NULL, NULL, '2025-01-07 08:02:45', 'Beni Mellal', 'Maroc', 'C:\\fakepath\\NBX_Snapshot_2024-01-07_16-47-24-303.png', 'https://www.linkedin.com/feed', 'nzala', NULL, 'Commerce', '2025-01-07 08:02:45', 1),
('ICE', '146872549721354', '500+', 'Maroc Télécom', 'maroc.telecom@gmail.com', '$2y$12$CUjs7yR0bg368M.GwK4M5..bG/42Jx7OVfqQtbPVtaVkMPPiKMv4u', NULL, NULL, NULL, '2025-01-13 16:47:47', 'Rabat', 'Maroc', 'C:\\fakepath\\maroc_telecomlogo.png', 'https://www.iam.ma/index.aspx', 'Hay Riad - Rabat', NULL, 'Commerce', '2025-01-13 16:47:47', 14),
('ICE', '147852749821547', '11-50', 'bbb', 'charikalmoubarika00@gmail.com', '$2y$12$f/cmnxzrkGdEuYKBU4ytee4/HH1TmBkPmdz.ejKoh7xh/Q2nXpRtK', NULL, NULL, NULL, '2025-01-18 14:36:23', 'bb', 'France', 'C:\\fakepath\\offtlogo.png', 'https://www.iam.ma/index.aspx', 'nzala', 1478, 'Santé', '2025-01-18 14:36:23', 39),
('ICE', '148752368745197', '51-200', 'Panda', 'charikalmoubarika2@gmail.com', '$2y$12$DmZ874tdFPFLRj/..NEJw.LrQdimIq/vNkuqfpF97JPipJoCRYFC.', NULL, NULL, NULL, '2025-01-07 08:26:07', 'Beni Mellal', 'Maroc', 'C:\\fakepath\\NBX_Snapshot_2024-01-07_16-47-25-180.png', 'https://www.linkedin.com/feed', 'nzala', NULL, 'Éducation', '2025-01-07 08:26:07', 2),
('ICE', '228700982156300', '11-50', 'IBMDf', 'mustaphaniamane325@gmail.com', '$2y$12$/e4U6cVKIVyhGZFhlU2aQezsCQSM6MipStV9Zi4IciHvpvXv8j3i2', NULL, NULL, NULL, '2025-01-18 11:10:25', 'Beni Mellal', 'France', 'C:\\fakepath\\candida2.jpg', 'https://www.linkedin.com/feed', 'LABANI', 1478254, 'Transport', '2025-01-18 11:10:25', 32),
('ICE', '228700982156510', '11-50', 'IBMDf', 'mustaphaniamane30125@gmail.com', '$2y$12$EP1EaGcUYK478K2.dCJUxecjdrvCGH9KP5mDqxXccBUb/sPbweIk6', NULL, NULL, NULL, '2025-01-18 11:11:05', 'Beni Mellal', 'France', 'C:\\fakepath\\candida2.jpg', 'https://www.linkedin.com/feed', 'LABANI', 1478254, 'Transport', '2025-01-18 11:11:05', 33),
('ICE', '284582168728547', '51-200', 'AMAZON', 'soukainaniamane14247@gmail.com', '$2y$12$c/acEEbWdWdJWHe4vx7tiu9wJRqCOhbDl9p1xIAvWIdDrSaStyyhW', NULL, NULL, NULL, '2025-01-18 11:44:02', 'beni mellal', 'Canada', 'C:\\fakepath\\maroc_telecomlogo.png', 'https://www.linkedin.com/feed', 'casa', 2845, 'Finance', '2025-01-18 11:44:02', 37),
('ICE', '587272542221355', '500+', 'Maroc Télécom', 'maroc.telecom8@gmail.com', '$2y$12$y9TXyuStmm/eW9cJmnif6OTeo61EKyPuR9zU5XdsJekHokIkiEdpm', NULL, NULL, NULL, '2025-01-13 17:05:01', 'Rabat', 'Maroc', 'C:\\fakepath\\maroc_telecomlogo.png', 'https://www.iam.ma/index.aspx', 'Hay Riad - Rabat', NULL, 'Commerce', '2025-01-13 17:05:01', 26),
('ICE', '587272549721355', '500+', 'Maroc Télécom', 'maroc.telecom7@gmail.com', '$2y$12$qnVmgg04OdANf40uthpWnOtNftPOxKYu9ZBKZdHwk58OPtd1VqnIW', NULL, NULL, NULL, '2025-01-13 17:02:21', 'Rabat', 'Maroc', 'C:\\fakepath\\maroc_telecomlogo.png', 'https://www.iam.ma/index.aspx', 'Hay Riad - Rabat', NULL, 'Commerce', '2025-01-13 17:02:21', 25),
('ICE', '587472549721357', '500+', 'Maroc Télécom', 'maroc.telecom3@gmail.com', '$2y$12$kDAuYBPIY2Gnyp6SqVXN5eoQsiMynxTMGUod9h/mpOyjQgv5UXlE.', NULL, NULL, NULL, '2025-01-13 16:58:45', 'Rabat', 'Maroc', 'C:\\fakepath\\maroc_telecomlogo.png', 'https://www.iam.ma/index.aspx', 'Hay Riad - Rabat', NULL, 'Commerce', '2025-01-13 16:58:45', 21),
('ICE', '748592158739458', '51-200', 'babina', 'mustapha2niamane123@gmail.com', '$2y$12$YK7UozOUxQFr0LBrKXng8e.i0QFAJ2O4Bq46KvikvjyP.KIFIW7Gu', NULL, NULL, NULL, '2025-01-19 10:43:32', 'Beni Mellal', 'Maroc', 'C:\\fakepath\\maroc_telecomlogo.png', 'https://www.linkedin.com/feed', 'beni mellal', 7485, 'Transport', '2025-01-19 10:43:32', 42),
('Type002', 'ENT002', '20', 'Design Studio', 'design@studio.com', 'password456', 'Design and creative services provider.', 'Private', 'Small', '2025-01-01 23:00:00', 'Marrakech', 'Morocco', NULL, 'http://design-studio.com', '456 Design Ave.', 2, 'Design', NULL, 4),
('Type003', 'ENT003', '100', 'Business Group', 'business@group.com', 'password789', 'Business consulting services.', 'Public', 'Large', '2025-01-02 23:00:00', 'Casablanca', 'Morocco', NULL, 'http://business-group.com', '789 Business Rd.', 3, 'Consulting', NULL, 5),
('Type004', 'ENT004', '30', 'Construction Ltd', 'construction@ltd.com', 'password101', 'Construction and infrastructure services.', 'Private', 'Medium', '2025-01-03 23:00:00', 'Rabat', 'Morocco', NULL, 'http://construction-ltd.com', '101 Construction Ln.', 4, 'Construction', NULL, 6),
('Type005', 'ENT005', '10', 'People Corp', 'people@corp.com', 'password202', 'HR and recruitment services.', 'Private', 'Small', '2025-01-04 23:00:00', 'Fes', 'Morocco', NULL, 'http://people-corp.com', '202 People Blvd.', 5, 'HR', NULL, 7),
('Type006', 'ENT006', '60', 'Tech Solutions', 'tech@solutions.com', 'password303', 'Tech solutions and IT services.', 'Private', 'Large', '2025-01-05 23:00:00', 'Tangier', 'Morocco', NULL, 'http://tech-solutions.com', '303 Tech Rd.', 6, 'IT', NULL, 8),
('Type007', 'ENT007', '25', 'Retail Inc.', 'retail@inc.com', 'password404', 'Retail and sales services.', 'Private', 'Medium', '2025-01-06 23:00:00', 'Agadir', 'Morocco', NULL, 'http://retail-inc.com', '404 Retail St.', 7, 'Sales', NULL, 9),
('Type008', 'ENT008', '15', 'Tech Help', 'support@techhelp.com', 'password505', 'Technical support services.', 'Private', 'Small', '2025-01-07 23:00:00', 'Essaouira', 'Morocco', NULL, 'http://tech-help.com', '505 Support Rd.', 8, 'Support', NULL, 10),
('Type009', 'ENT009', '80', 'Data Insights', 'data@insights.com', 'password606', 'Data analysis and consulting services.', 'Private', 'Large', '2025-01-08 23:00:00', 'Meknes', 'Morocco', NULL, 'http://data-insights.com', '606 Data Blvd.', 9, 'Data', NULL, 11),
('Type010', 'ENT010', '40', 'Consultancy Experts', 'consult@experts.com', 'password707', 'Consultancy and strategic services.', 'Private', 'Medium', '2025-01-09 23:00:00', 'Oujda', 'Morocco', NULL, 'http://consultancy-experts.com', '707 Consultancy Ln.', 10, 'Consulting', NULL, 12),
('ICE', 'ICE', '11-50', 'bounia', 'rachid.idrissi@ofppt.com', '$2y$12$s8GTG/l55RiNXaePyMU5Su04SPgsQWX1HHb3aWRQsUzrZkDl5hdPy', NULL, NULL, NULL, '2025-01-06 16:46:49', 'marakech', 'Canada', 'C:\\fakepath\\NBX_Snapshot_2024-01-07_16-47-25-180.png', 'https://www.linkedin.com/feed', 'chamal', NULL, 'Santé', '2025-01-06 16:46:49', 13);

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `ExperienceId` int NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Duree` text NOT NULL,
  `Mission` text,
  `File` varchar(255) DEFAULT NULL,
  `EntrepriseName` varchar(255) NOT NULL,
  `CIN` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`ExperienceId`, `Titre`, `Duree`, `Mission`, `File`, `EntrepriseName`, `CIN`, `created_at`, `updated_at`, `date_debut`, `date_fin`) VALUES
(1, 'Software Developer', '12', 'Developed a web application for e-commerce.', 'experience1.pdf', 'Tech Solutions', 'CIN010', '2025-01-12 16:38:17', '2025-01-12 16:38:17', NULL, NULL),
(2, 'UI/UX Designer', '9', 'Created designs for mobile applications and websites.', 'experience2.pdf', 'Design Studio', 'CIN010', '2025-01-12 16:38:17', '2025-01-12 16:38:17', NULL, NULL),
(3, 'Project Manager', '24', 'Managed a team of developers for software projects.', 'experience3.pdf', 'Business Group', NULL, '2025-01-12 16:38:17', '2025-01-12 16:38:17', NULL, NULL),
(4, 'Civil Engineer', '18', 'Worked on the construction of residential buildings.', 'experience4.pdf', 'Construction Ltd', NULL, '2025-01-12 16:38:17', '2025-01-12 16:38:17', NULL, NULL),
(5, 'HR Assistant', '6', 'Assisted with recruitment and employee management.', 'experience5.pdf', 'People Corp', 'CIN010', '2025-01-12 16:38:17', '2025-01-12 16:38:17', NULL, NULL),
(6, 'Senior Technician', '36', 'Provided technical support and maintenance for systems.', 'experience6.pdf', 'Tech Solutions', 'CIN010', '2025-01-12 16:38:17', '2025-01-12 16:38:17', NULL, NULL),
(7, 'Sales Associate', '8', 'Assisted customers and managed product inventory.', 'experience7.pdf', 'Retail Inc.', NULL, '2025-01-12 16:38:17', '2025-01-12 16:38:17', NULL, NULL),
(8, 'Technical Support Intern', '6', 'Provided support for software issues and user queries.', 'experience8.pdf', 'Tech Help', NULL, '2025-01-12 16:38:17', '2025-01-12 16:38:17', NULL, NULL),
(9, 'Data Analyst', '24', 'Analyzed data to provide insights for business decisions.', 'experience9.pdf', 'Data Insights', NULL, '2025-01-12 16:38:17', '2025-01-12 16:38:17', NULL, NULL),
(10, 'Consultant', '12', 'Provided consultancy services to businesses in various sectors.', 'experience10.pdf', 'Consultancy Experts', NULL, '2025-01-12 16:38:17', '2025-01-12 16:38:17', NULL, NULL),
(11, 'chef de projet', '3', 'bla bla bla', 'google-jamboard.webp', 'BIM', NULL, '2025-01-17 14:56:49', '2025-01-17 14:56:49', NULL, NULL),
(12, 'chef', '1', 'll', 'candida2.jpg', 'ctt', NULL, '2025-01-18 09:43:57', '2025-01-18 09:43:57', NULL, NULL),
(13, '4', '3', 'mustaphanouaman@gmail.com', 'candida2.jpg', '41', NULL, '2025-01-18 09:50:08', '2025-01-18 09:50:08', NULL, NULL),
(14, 'chef de projet  It', '3', 'mustapha123', 'ofppt-v-logo.png', 'IBM', NULL, '2025-01-18 10:19:25', '2025-01-18 10:19:25', NULL, NULL),
(15, 'chef de projet  It', '3', 'mustapha123', 'ofppt-v-logo.png', 'IBM', 'IC148574', '2025-01-18 10:24:46', '2025-01-18 10:24:46', NULL, NULL),
(24, 'Développeur web  full stack', '1 ans', 'Conception et modélisation des sites ou applications web. Écriture du code et programmation. Mise en place et gestion de bases de données.', 'Coursera Marketing_2.pdf', 'STDATA', 'IC143658', '2025-01-20 20:06:58', '2025-01-20 20:06:58', '2020-12-02', '2022-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filieres`
--

CREATE TABLE `filieres` (
  `id` int NOT NULL,
  `name` text,
  `secteur_id` int DEFAULT NULL,
  `levelid` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Presentation` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `filieres`
--

INSERT INTO `filieres` (`id`, `name`, `secteur_id`, `levelid`, `created_at`, `updated_at`, `Presentation`) VALUES
(1, 'Développement Informatique', 1, 5, '2025-01-18 17:08:21', '2025-01-18 17:08:21', 'Le tronc commun en Développement Digital est une étape importante pour acquérir les bases nécessaires à l\'étude, la conception, la construction, le développement, la mise au point, la maintenance et à l’amélioration des logiciels, des applications et des sites web.\nAu cours de cette étape, qui dure une année de formation professionnelle, les stagiaires suivent une formation qui a la vocation de répondre à deux types de compétences :\n- Compétences transversales : Les langues , l\'entrepreneuriat, Compétences comportementales et sociales, Culture et techniques avancées du numérique.\n- Compétences techniques : Acquérir les bases de l\'algorithmique, Programmer en Orienté Objet , Développer des sites web statiques, Programmer en JavaScript , Développer des sites web dynamiques.'),
(2, 'Réseaux et Systèmes Informatiques', 1, 5, '2025-01-18 17:08:21', '2025-01-18 17:08:21', 'Un technicien spécialisé en Développement digital option Full Stack est un professionnel capable de réaliser des tâches à n\'importe quel niveau technique de la pile des différentes couches qui constituent une application informatique ou un site web. Il intervient, généralement pour le compte de Sociétés de Services et d’Ingénierie Informatiques, dans de nombreux domaines applicatifs (industrie, gestion, finances, services…).\nEn amont, il est réceptif aux attentes du client, il étudie le cahier des charges, les capacités de l’environnement technique et les contraintes du système de production du client.\nEn aval, il participe à la mise en exploitation et au support technique de l’application et systèmes.'),
(3, 'Multimédia et Infographie', 1, 4, '2025-01-18 17:08:21', '2025-01-18 17:08:21', ''),
(4, 'Maintenance Informatique', 1, 4, '2025-01-18 17:08:21', '2025-01-18 17:08:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `langues`
--

CREATE TABLE `langues` (
  `LangueId` int NOT NULL,
  `LangueName` varchar(255) NOT NULL,
  `Certificat` longblob,
  `Niveau` int NOT NULL,
  `CIN` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `langues`
--

INSERT INTO `langues` (`LangueId`, `LangueName`, `Certificat`, `Niveau`, `CIN`, `created_at`, `updated_at`) VALUES
(1, 'English', 0x656e676c6973685f636572742e706466, 5, NULL, '2025-01-12 16:39:33', '0000-00-00 00:00:00'),
(2, 'French', 0x6672656e63685f636572742e706466, 4, NULL, '2025-01-12 16:39:33', '0000-00-00 00:00:00'),
(3, 'Spanish', 0x7370616e6973685f636572742e706466, 3, NULL, '2025-01-12 16:39:33', '0000-00-00 00:00:00'),
(4, 'Arabic', 0x6172616269635f636572742e706466, 5, NULL, '2025-01-12 16:39:33', '0000-00-00 00:00:00'),
(5, 'German', 0x6765726d616e5f636572742e706466, 2, NULL, '2025-01-12 16:39:33', '0000-00-00 00:00:00'),
(6, 'Italian', 0x6974616c69616e5f636572742e706466, 3, NULL, '2025-01-12 16:39:33', '0000-00-00 00:00:00'),
(7, 'Chinese', 0x6368696e6573655f636572742e706466, 1, NULL, '2025-01-12 16:39:33', '0000-00-00 00:00:00'),
(8, 'Russian', 0x7275737369616e5f636572742e706466, 4, NULL, '2025-01-12 16:39:33', '0000-00-00 00:00:00'),
(9, 'Portuguese', 0x706f72747567756573655f636572742e706466, 3, NULL, '2025-01-12 16:39:33', '0000-00-00 00:00:00'),
(10, 'Japanese', 0x6a6170616e6573655f636572742e706466, 2, NULL, '2025-01-12 16:39:33', '0000-00-00 00:00:00'),
(13, 'fr', NULL, 2, 'IC148574', '2025-01-17 13:57:16', '2025-01-17 13:57:16'),
(14, 'es', NULL, 3, 'IC148574', '2025-01-17 14:00:40', '2025-01-17 14:00:40'),
(15, 'Arabe', NULL, 2, 'IC148574', '2025-01-17 14:02:16', '2025-01-17 14:02:16'),
(16, 'Français', NULL, 1, 'CIN010', '2025-01-19 18:30:46', '2025-01-19 18:30:46'),
(17, 'Espagnol', 0x6f6666746c6f676f2e706e67, 3, 'CIN010', '2025-01-20 15:09:09', '2025-01-20 15:09:09'),
(18, 'Français', 0x636f6d70616e796c6f676f2e77656270, 3, 'IC143658', '2025-01-20 19:58:14', '2025-01-20 19:58:14'),
(19, 'Arabe', 0x636f6d70616e796c6f676f2e77656270, 5, 'IC143658', '2025-01-20 19:58:24', '2025-01-20 19:58:24'),
(20, 'Arabe', 0x323032345f30325f32325f72656e636f6e7472655f756e69766572736974655f656e7472657072697365735f7465727269746f697265735f32325f666576726965725f323032345f7669676e657474652e77656270, 5, 'BB678901', '2025-01-21 09:32:28', '2025-01-21 09:32:28'),
(21, 'Français', 0x32303531323830392e6a7067, 3, 'BB678901', '2025-01-21 09:32:42', '2025-01-21 09:32:42'),
(22, 'Anglais', 0x322020c3a86d652070617274696520636f75727320524f2072c3a97365617520504552542041746d616e6920457a7a616861722e706466, 4, 'BB678901', '2025-01-21 09:32:58', '2025-01-21 09:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`) VALUES
(1, 'Qualification'),
(2, 'Diplôme de Spécialisation'),
(3, 'Diplôme de Qualification'),
(4, 'Technicien'),
(5, 'Technicien Spécialisé');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_02_122446_create__users__table', 2),
(5, '2025_01_02_123308_create__stgs_table', 3),
(6, '2025_01_08_161242_create_personal_access_tokens_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `offres`
--

CREATE TABLE `offres` (
  `OffreId` int NOT NULL,
  `EntrepriseId` varchar(50) DEFAULT NULL,
  `Post` varchar(255) NOT NULL,
  `NomEntreprise` varchar(255) DEFAULT NULL,
  `SecteurId` int DEFAULT NULL,
  `Niveau` varchar(50) DEFAULT NULL,
  `Description` text,
  `Ville` varchar(100) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Posted_At` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Deadline` date DEFAULT NULL,
  `Annoncement` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `diplomeid` int DEFAULT NULL,
  `Experience` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `offres`
--

INSERT INTO `offres` (`OffreId`, `EntrepriseId`, `Post`, `NomEntreprise`, `SecteurId`, `Niveau`, `Description`, `Ville`, `Type`, `Posted_At`, `Deadline`, `Annoncement`, `created_at`, `updated_at`, `diplomeid`, `Experience`) VALUES
(1, '123456789123456', 'Software Developer', 'Tech Solutions', 1, 'Junior', 'We are hiring a developer.', 'Beni Mellal', 'Full-time', '2024-12-31 23:00:00', '2025-02-01', 'Looking for fresh graduates.', '2025-01-03 17:09:57', NULL, NULL, NULL),
(2, '123456789123456', 'UI/UX Designer', 'Design Studio', 2, 'Senior', 'We need an experienced designer.', 'Marrakech', 'Part-time', '2025-01-01 23:00:00', '2025-03-01', 'Join our creative team.', '2025-01-03 17:09:57', NULL, NULL, NULL),
(3, '123456789123456', 'Project Manager', 'Business Group', 3, 'Manager', 'Seeking a manager for our team.', 'Casablanca', 'Full-time', '2025-01-02 23:00:00', '2025-04-01', 'Leadership position.', '2025-01-03 17:09:57', NULL, NULL, NULL),
(4, NULL, 'Civil Engineer', 'Construction Ltd', 4, 'Intern', 'Looking for civil engineering interns.', 'Rabat', 'Internship', '2025-01-03 23:00:00', '2025-05-01', 'Great learning opportunity.', '2025-01-03 17:09:57', NULL, NULL, NULL),
(5, NULL, 'HR Assistant', 'People Corp', 5, 'Junior', 'We need an HR assistant.', 'Fes', 'Full-time', '2025-01-04 23:00:00', '2025-06-01', 'HR experience preferred.', '2025-01-03 17:09:57', NULL, NULL, NULL),
(6, NULL, 'Senior Technician', 'Tech Solutions', 6, 'Senior', 'Hiring for a senior technician.', 'Tangier', 'Full-time', '2025-01-05 23:00:00', '2025-07-01', 'Hands-on technical skills required.', '2025-01-03 17:09:57', NULL, NULL, NULL),
(7, NULL, 'Sales Associate', 'Retail Inc.', 7, 'Junior', 'Looking for a sales associate.', 'Agadir', 'Part-time', '2025-01-06 23:00:00', '2025-08-01', 'Sales experience a plus.', '2025-01-03 17:09:57', NULL, NULL, NULL),
(8, NULL, 'Technical Support Intern', 'Tech Help', 8, 'Intern', 'We need a support intern.', 'Essaouira', 'Internship', '2025-01-07 23:00:00', '2025-09-01', 'Help our users with technical issues.', '2025-01-03 17:09:57', NULL, NULL, NULL),
(9, NULL, 'Data Analyst', 'Data Insights', 9, 'Senior', 'Seeking a senior data analyst.', 'Meknes', 'Full-time', '2025-01-08 23:00:00', '2025-10-01', 'Analytical skills needed.', '2025-01-03 17:09:57', NULL, NULL, NULL),
(10, NULL, 'Consultant', 'Consultancy Experts', 10, 'Manager', 'Hiring a senior consultant.', 'Oujda', 'Full-time', '2025-01-09 23:00:00', '2025-11-01', 'Experience in consulting required.', '2025-01-03 17:09:57', NULL, NULL, NULL),
(40, NULL, 'Technicien  électronique', 'Tech Corp', 5, 'Technicien', 'Installer, maintenir et réparer des systèmes électriques (câblage, appareils, équipements électriques).\nDiagnostiquer et résoudre les pannes électriques.\nLire et interpréter des plans, des schémas électriques et des diagrammes.\nEffectuer des inspections pour garantir la conformité des installations aux normes en vigueur.\nInstaller et configurer des systèmes automatisés et de contrôle.\nEffectuer les tests nécessaires pour s’assurer du bon fonctionnement des systèmes après installation ou réparation.\nRéaliser des travaux préventifs pour éviter les dysfonctionnements.\nGarantir la sécurité sur site et respecter les consignes de sécurité.\nCollaborer avec d\'autres professionnels pour mener à bien les projets électriques.', 'Beni Mellal', 'Stage', '2025-01-11 21:14:18', '2024-02-02', NULL, '2025-01-11 20:14:18', '2025-01-11 20:14:18', 1, '4'),
(41, NULL, 'Technicien  électronique d', 'Tech Corp', 7, 'Technicien', 'Installer, maintenir et réparer des systèmes électriques (câblage, appareils, équipements électriques).\nDiagnostiquer et résoudre les pannes électriques.\nLire et interpréter des plans, des schémas électriques et des diagrammes.\nEffectuer des inspections pour garantir la conformité des installations aux normes en vigueur.\nInstaller et configurer des systèmes automatisés et de contrôle.\nEffectuer les tests nécessaires pour s’assurer du bon fonctionnement des systèmes après installation ou réparation.\nRéaliser des travaux préventifs pour éviter les dysfonctionnements.\nGarantir la sécurité sur site et respecter les consignes de sécurité.\nCollaborer avec d\'autres professionnels pour mener à bien les projets électriques.', 'Rabat', 'CDD', '2025-01-11 21:15:01', '2024-02-02', NULL, '2025-01-11 20:15:01', '2025-01-11 20:15:01', 2, '2'),
(42, NULL, 'Technicien  électronique d', 'Tech Corp', 7, 'Technicien', 'Installer, maintenir et réparer des systèmes électriques (câblage, appareils, équipements électriques).\nDiagnostiquer et résoudre les pannes électriques.\nLire et interpréter des plans, des schémas électriques et des diagrammes.\nEffectuer des inspections pour garantir la conformité des installations aux normes en vigueur.\nInstaller et configurer des systèmes automatisés et de contrôle.\nEffectuer les tests nécessaires pour s’assurer du bon fonctionnement des systèmes après installation ou réparation.\nRéaliser des travaux préventifs pour éviter les dysfonctionnements.\nGarantir la sécurité sur site et respecter les consignes de sécurité.\nCollaborer avec d\'autres professionnels pour mener à bien les projets électriques.', 'Rabat', 'CDD', '2025-01-11 21:18:33', '2024-02-02', NULL, '2025-01-11 20:18:33', '2025-01-11 20:18:33', 2, '2'),
(43, NULL, 'développement', 'Tech Corp', 1, 'Technicien Specialisé', 'Installer, maintenir et réparer des systèmes électriques (câblage, appareils, équipements électriques).\nDiagnostiquer et résoudre les pannes électriques.\nLire et interpréter des plans, des schémas électriques et des diagrammes.\nEffectuer des inspections pour garantir la conformité des installations aux normes en vigueur.\nInstaller et configurer des systèmes automatisés et de contrôle.\nEffectuer les tests nécessaires pour s’assurer du bon fonctionnement des systèmes après installation ou réparation.\nRéaliser des travaux préventifs pour éviter les dysfonctionnements.\nGarantir la sécurité sur site et respecter les consignes de sécurité.\nCollaborer avec d\'autres professionnels pour mener à bien les projets électriques.', 'Beni Mellal', 'CDI', '2025-01-11 21:24:18', '2025-12-20', 'desktop-wallpaper-firefox-24-services-career.jpg', '2025-01-11 20:24:18', '2025-01-11 20:24:18', 1, '5'),
(44, NULL, 'développement', 'Tech Corp', 1, 'Technicien Specialisé', 'Installer, maintenir et réparer des systèmes électriques (câblage, appareils, équipements électriques).\nDiagnostiquer et résoudre les pannes électriques.\nLire et interpréter des plans, des schémas électriques et des diagrammes.\nEffectuer des inspections pour garantir la conformité des installations aux normes en vigueur.\nInstaller et configurer des systèmes automatisés et de contrôle.\nEffectuer les tests nécessaires pour s’assurer du bon fonctionnement des systèmes après installation ou réparation.\nRéaliser des travaux préventifs pour éviter les dysfonctionnements.\nGarantir la sécurité sur site et respecter les consignes de sécurité.\nCollaborer avec d\'autres professionnels pour mener à bien les projets électriques.', 'Beni Mellal', 'CDI', '2025-01-11 21:25:29', '2025-12-20', 'desktop-wallpaper-firefox-24-services-career.jpg', '2025-01-11 20:25:29', '2025-01-11 20:25:29', 1, '5'),
(45, NULL, 'développement  F', 'Tech Corp', 6, 'Technicien Specialisé', 'Installer, maintenir et réparer des systèmes électriques (câblage, appareils, équipements électriques).\nDiagnostiquer et résoudre les pannes électriques.\nLire et interpréter des plans, des schémas électriques et des diagrammes.\nEffectuer des inspections pour garantir la conformité des installations aux normes en vigueur.\nInstaller et configurer des systèmes automatisés et de contrôle.\nEffectuer les tests nécessaires pour s’assurer du bon fonctionnement des systèmes après installation ou réparation.\nRéaliser des travaux préventifs pour éviter les dysfonctionnements.\nGarantir la sécurité sur site et respecter les consignes de sécurité.\nCollaborer avec d\'autres professionnels pour mener à bien les projets électriques.', 'Beni Mellal', 'CDI', '2025-01-11 21:26:02', '2025-12-20', 'desktop-wallpaper-firefox-24-services-career.jpg', '2025-01-11 20:26:02', '2025-01-11 20:26:02', 1, '5'),
(46, NULL, 'développement  F', 'Tech Corp', 6, 'Technicien Specialisé', 'Installer, maintenir et réparer des systèmes électriques (câblage, appareils, équipements électriques).\nDiagnostiquer et résoudre les pannes électriques.\nLire et interpréter des plans, des schémas électriques et des diagrammes.\nEffectuer des inspections pour garantir la conformité des installations aux normes en vigueur.\nInstaller et configurer des systèmes automatisés et de contrôle.\nEffectuer les tests nécessaires pour s’assurer du bon fonctionnement des systèmes après installation ou réparation.\nRéaliser des travaux préventifs pour éviter les dysfonctionnements.\nGarantir la sécurité sur site et respecter les consignes de sécurité.\nCollaborer avec d\'autres professionnels pour mener à bien les projets électriques.', 'Beni Mellal', 'CDI', '2025-01-11 21:27:18', '2025-12-20', 'desktop-wallpaper-firefox-24-services-career.jpg', '2025-01-11 20:27:18', '2025-01-11 20:27:18', 1, '5'),
(47, NULL, 'sbagh', 'Tech Corp', 2, 'Technicien Specialisé', 'bina wa7d issbegh lina wa7d dar', 'Beni Mellal', 'Tempspariel', '2025-01-12 17:45:36', '2025-06-02', 'companylogo.webp', '2025-01-12 16:45:36', '2025-01-12 16:45:36', 1, '6'),
(48, '124578964215785', 'Développeur  web full stuck', 'STDATA', 1, 'Technicien Specialisé', 'Conception et modélisation des sites ou applications web. Écriture du code et programmation. Mise en place et gestion de bases de données.', 'Beni Mellal', 'CDD', '2025-01-20 21:24:05', '2025-04-22', 'robots.txt', '2025-01-20 20:24:05', '2025-01-20 20:24:05', 1, '3'),
(49, '123456789123456', 'Technicien  électronique', 'Tech Corp', 5, 'Technicien Specialisé', 'sscsc', 'tanger', 'CDD', '2025-01-20 23:19:56', '2001-02-22', 'maroc_telecomlogo.png', '2025-01-20 22:19:56', '2025-01-20 22:19:56', 1, '3'),
(50, '001234567890124', 'Développeur Web Full Stack', 'NextTech Solutions', 1, 'Technicien Specialisé', 'Nous recherchons un développeur Web Full Stack passionné pour rejoindre notre équipe. Le candidat idéal participera à la conception, au développement et à la maintenance de solutions web innovantes.', 'Beni Mellal', 'CDI', '2025-01-21 11:17:07', '2025-04-01', '2  ème partie cours RO réseau PERT Atmani Ezzahar.pdf', '2025-01-21 10:17:07', '2025-01-21 10:17:07', 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `ofpptdiplomes`
--

CREATE TABLE `ofpptdiplomes` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `secteurid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ofpptdiplomes`
--

INSERT INTO `ofpptdiplomes` (`id`, `name`, `secteurid`) VALUES
(1, 'digital', NULL),
(2, 'mobile', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Stagiaire', 10, 'main', '9d00903bde9b468932974d4d5d55c706fc018ada9f16475d513beca7967dbca2', '[\"*\"]', NULL, NULL, '2025-01-08 15:22:59', '2025-01-08 15:22:59'),
(2, 'App\\Models\\Stagiaire', 10, 'main', 'b8f80474305aceeb4eb5b4db1e214b28369a54f99b67845fc14b3ddca9e7e3cd', '[\"*\"]', NULL, NULL, '2025-01-08 15:23:15', '2025-01-08 15:23:15'),
(3, 'App\\Models\\Stagiaire', 10, 'main', '3ef7bc73f284ed93df9460e9e1cff6e2f0db330d95193785d88d6f5e44302927', '[\"*\"]', '2025-01-08 15:44:47', NULL, '2025-01-08 15:32:49', '2025-01-08 15:44:47'),
(4, 'App\\Models\\Stagiaire', 10, 'main', 'c2b88273ec9f72925b0ae25e7f5e6923772a3642f1360067106eafa5c21193ab', '[\"*\"]', NULL, NULL, '2025-01-08 15:44:59', '2025-01-08 15:44:59'),
(5, 'App\\Models\\Stagiaire', 10, 'main', '1618ea8503a907593e63e186f67d31ad2733f7a9606a42331595bbdd965de947', '[\"*\"]', NULL, NULL, '2025-01-08 15:45:18', '2025-01-08 15:45:18'),
(6, 'App\\Models\\Stagiaire', 10, 'main', 'e4a92fdb7a2a9660c4c6e5bd5dc6d8badee8c8b1ef58deef037ad235ceaf10b7', '[\"*\"]', NULL, NULL, '2025-01-08 15:46:30', '2025-01-08 15:46:30'),
(7, 'App\\Models\\Stagiaire', 10, 'main', '05f3d4580d9f05d4ab518e4e95caeab736f50988f9f74ebd779c9b098111d362', '[\"*\"]', NULL, NULL, '2025-01-08 15:47:47', '2025-01-08 15:47:47'),
(8, 'App\\Models\\Stagiaire', 10, 'main', '5b8aec7cea1bf652de3e455746e41f197f112d32b6ceac19f752fad3e74c7b2a', '[\"*\"]', '2025-01-08 15:50:04', NULL, '2025-01-08 15:48:48', '2025-01-08 15:50:04'),
(9, 'App\\Models\\Stagiaire', 10, 'main', '8003c2d916d08eb71845d33b6ed76824f4ef1125dfa30bb7fc4eb065f0302257', '[\"*\"]', NULL, NULL, '2025-01-08 15:51:09', '2025-01-08 15:51:09'),
(10, 'App\\Models\\Stagiaire', 10, 'main', 'e2eedc89c8b04bf1e19e5f8daa23d213e8530537fded7901947a8f2e211cd388', '[\"*\"]', NULL, NULL, '2025-01-08 16:01:31', '2025-01-08 16:01:31'),
(11, 'App\\Models\\Stagiaire', 10, 'main', 'e6b0feff57208d3e58488be657cf70aef58fe379de3db2ce90159ede19646c85', '[\"*\"]', NULL, NULL, '2025-01-08 16:33:58', '2025-01-08 16:33:58'),
(12, 'App\\Models\\Stagiaire', 10, 'main', '61dab85a97571e7cb3b26a31df493c5e1f2817da253a50533bd55638e64459d5', '[\"*\"]', NULL, NULL, '2025-01-08 16:33:59', '2025-01-08 16:33:59'),
(13, 'App\\Models\\Stagiaire', 10, 'main', '19199bbe54c20e22786bfcaeba5a9b791ba70f49067d9a4894460a039f98a2d0', '[\"*\"]', NULL, NULL, '2025-01-08 16:39:02', '2025-01-08 16:39:02'),
(14, 'App\\Models\\Stagiaire', 10, 'main', '432fef1dba04b9a50e81dc9541c1a27e255a0d6e1b7d40f15bf0b5c00f5c2f72', '[\"*\"]', NULL, NULL, '2025-01-08 16:41:02', '2025-01-08 16:41:02'),
(15, 'App\\Models\\Stagiaire', 10, 'main', 'b149e0857b1362d4b812088b704dd5e141b06b0fec681783ef5d61b4b0322671', '[\"*\"]', NULL, NULL, '2025-01-08 16:45:39', '2025-01-08 16:45:39'),
(16, 'App\\Models\\Stagiaire', 10, 'main', '15f32668a16e8dadd343e1e7dfb3b8d77b5358d55daeabed69d25522b9f25f20', '[\"*\"]', NULL, NULL, '2025-01-08 17:14:44', '2025-01-08 17:14:44'),
(17, 'App\\Models\\Entreprise', 3, 'main', 'b0726af6d900a0fb40d090742ce917a537b267b03929214b9a45476fae940ff6', '[\"*\"]', NULL, NULL, '2025-01-08 17:26:59', '2025-01-08 17:26:59'),
(18, 'App\\Models\\Entreprise', 3, 'main', '0780e413b6ddaf900392fd0f11bd60159e8c94191edbfc259184f0d8bec5e228', '[\"*\"]', NULL, NULL, '2025-01-08 17:45:29', '2025-01-08 17:45:29'),
(19, 'App\\Models\\Entreprise', 3, 'main', '7d6167faf95223c7bc28667bc6ef0c936f66c9852d652375e21a9351fde95a42', '[\"*\"]', NULL, NULL, '2025-01-08 17:46:51', '2025-01-08 17:46:51'),
(20, 'App\\Models\\Entreprise', 3, 'main', '772c49f451a67dd230ac1fc11eac91337cccf8036b7ebb0711a61c970ac140e7', '[\"*\"]', NULL, NULL, '2025-01-08 18:56:08', '2025-01-08 18:56:08'),
(21, 'App\\Models\\Entreprise', 3, 'main', '52a1a3965c561df9b72818ca7fd8f61a74ce33d9c5bb701d75f6185842c4e059', '[\"*\"]', NULL, NULL, '2025-01-09 08:37:16', '2025-01-09 08:37:16'),
(22, 'App\\Models\\Stagiaire', 10, 'main', '22e2cd4f89d5a2ed8c4d54411d3dff0b8cca9afe4eb98a16af85272dc9f4f8e5', '[\"*\"]', NULL, NULL, '2025-01-09 08:37:59', '2025-01-09 08:37:59'),
(23, 'App\\Models\\Stagiaire', 10, 'main', 'd8c6782165da5d7438406675e5fbb5c377ccc9701c64d1f19fddf024865c9c08', '[\"*\"]', '2025-01-09 08:53:16', NULL, '2025-01-09 08:40:59', '2025-01-09 08:53:16'),
(24, 'App\\Models\\Stagiaire', 10, 'main', '030a1e9aad0a9a2f49a4021bc79bcc2e8d93b4a93075995808f4132d710f4a0d', '[\"*\"]', '2025-01-09 08:57:15', NULL, '2025-01-09 08:53:24', '2025-01-09 08:57:15'),
(25, 'App\\Models\\Stagiaire', 10, 'main', 'd0d9517b924c6b920d24ab5ec3a5120c276916f698630656081f36f064b23b17', '[\"*\"]', '2025-01-09 09:00:42', NULL, '2025-01-09 08:57:23', '2025-01-09 09:00:42'),
(26, 'App\\Models\\Stagiaire', 10, 'main', '9f898d315234b4821be9360d4baedd3a47932c26a471ec7dd74dba47ade0f632', '[\"*\"]', '2025-01-09 09:03:34', NULL, '2025-01-09 09:00:58', '2025-01-09 09:03:34'),
(27, 'App\\Models\\Stagiaire', 10, 'main', '827bf133f9700a242fd4aa9eb4e292e194476b4f8870c0be3af5b6825e1621f9', '[\"*\"]', NULL, NULL, '2025-01-09 09:04:45', '2025-01-09 09:04:45'),
(28, 'App\\Models\\Stagiaire', 10, 'main', 'e2da9a900d8255dbb6590bb6982545b694f076a0dc9075bace72c95e30374935', '[\"*\"]', '2025-01-09 09:39:31', NULL, '2025-01-09 09:39:00', '2025-01-09 09:39:31'),
(29, 'App\\Models\\Stagiaire', 10, 'main', '8616eae7f13a8bdb09df322a0822ac1275edbec438ada53802fcce378964fc63', '[\"*\"]', NULL, NULL, '2025-01-09 09:39:40', '2025-01-09 09:39:40'),
(30, 'App\\Models\\Stagiaire', 10, 'main', 'ce96a22267f55da5dba4d94347233138f57803b61a3869ba957fdc155cc1e447', '[\"*\"]', '2025-01-09 10:26:48', NULL, '2025-01-09 09:40:30', '2025-01-09 10:26:48'),
(31, 'App\\Models\\Stagiaire', 10, 'main', '50389ed82e1ad465fbb7a1523d37d3ab4514b6ae5e996ae64084c81de64f7e2a', '[\"*\"]', NULL, NULL, '2025-01-09 10:29:45', '2025-01-09 10:29:45'),
(32, 'App\\Models\\Stagiaire', 10, 'main', '8e14962211056d42ba7a6dae49b4e267ff7519c1b0fa269106179dd161ee7fdd', '[\"*\"]', NULL, NULL, '2025-01-09 10:32:02', '2025-01-09 10:32:02'),
(33, 'App\\Models\\Stagiaire', 10, 'main', '9760509dd51bc6c5e469df14ba13bef5c31180b33764ca720ce4c9051b9e980e', '[\"*\"]', NULL, NULL, '2025-01-11 08:34:13', '2025-01-11 08:34:13'),
(34, 'App\\Models\\Stagiaire', 10, 'main', 'df533e190e4cdd04df3594d7152766cf588ed068337ce306cc707c71eabbbe4a', '[\"*\"]', NULL, NULL, '2025-01-11 08:48:24', '2025-01-11 08:48:24'),
(35, 'App\\Models\\Entreprise', 3, 'main', '059b65be287dd2b877162e4fa05e9593b9dd8cd7b06a81a516076a796049f027', '[\"*\"]', NULL, NULL, '2025-01-11 13:18:26', '2025-01-11 13:18:26'),
(36, 'App\\Models\\Stagiaire', 10, 'main', 'ded9dbebe5f0b6cd866c67ab0ba287979c92b9665ecce0c881168ea28db312d4', '[\"*\"]', NULL, NULL, '2025-01-11 13:23:17', '2025-01-11 13:23:17'),
(37, 'App\\Models\\Entreprise', 3, 'main', '83a8065a464efe5abbe0365bf21641a8751e1ddef6b25d60cf28e3e1da1831e8', '[\"*\"]', NULL, NULL, '2025-01-11 18:40:22', '2025-01-11 18:40:22'),
(38, 'App\\Models\\Stagiaire', 10, 'main', '6a8087bb5c68b1d1411b24327cb4c1a099ae111b758d15ed12219590ee8c63d3', '[\"*\"]', NULL, NULL, '2025-01-11 18:40:30', '2025-01-11 18:40:30'),
(39, 'App\\Models\\Entreprise', 3, 'main', 'f187fecce85c87ffc941a091ebd87a35043cd6bb6ffd29bffa40d81e0f6466d5', '[\"*\"]', NULL, NULL, '2025-01-11 18:40:49', '2025-01-11 18:40:49'),
(40, 'App\\Models\\Entreprise', 3, 'main', '376624d518a111ded2cb019fa7d7732566b52ba9a252d4d4cefb2eee39d0bf3d', '[\"*\"]', NULL, NULL, '2025-01-11 18:42:13', '2025-01-11 18:42:13'),
(41, 'App\\Models\\Entreprise', 3, 'main', 'd572d11e9c1337c89f462ce2bb7fa30b47021830de9780fafa14ecb78814301d', '[\"*\"]', NULL, NULL, '2025-01-11 19:10:16', '2025-01-11 19:10:16'),
(42, 'App\\Models\\Entreprise', 3, 'main', 'b9b6887b8b6c4d6265f5aa32125c10684020ca3de25e5f3f944a7bc371b1a66a', '[\"*\"]', NULL, NULL, '2025-01-11 19:56:33', '2025-01-11 19:56:33'),
(43, 'App\\Models\\Stagiaire', 10, 'main', '850d123f4aa17c55f6e70f11dfbdc302d2c8dcb414797d4ce959f15b9a212015', '[\"*\"]', NULL, NULL, '2025-01-11 20:27:50', '2025-01-11 20:27:50'),
(44, 'App\\Models\\Stagiaire', 10, 'main', '21c3c7871188a5912565a13e43ffaf11f11389eeeb93946ce5c62ad7075169d4', '[\"*\"]', NULL, NULL, '2025-01-12 14:47:27', '2025-01-12 14:47:27'),
(45, 'App\\Models\\Stagiaire', 10, 'main', '01a8b7b218779a3f7f813a982e209d1244ad0580af18621edc8887c0efdaa411', '[\"*\"]', NULL, NULL, '2025-01-12 14:57:36', '2025-01-12 14:57:36'),
(46, 'App\\Models\\Stagiaire', 10, 'main', 'dac330aa56df24c6f7889de1e0fa2106def6aedd38e3bf0a0a7494ee877968db', '[\"*\"]', '2025-01-12 15:20:07', NULL, '2025-01-12 15:16:04', '2025-01-12 15:20:07'),
(47, 'App\\Models\\Stagiaire', 10, 'main', '3cbef844eabfff2d972d4855cf22a8c56964830f4f62b61fea71ba9ebb0e72cf', '[\"*\"]', '2025-01-12 15:40:48', NULL, '2025-01-12 15:26:18', '2025-01-12 15:40:48'),
(48, 'App\\Models\\Stagiaire', 10, 'main', 'a19d25986c453bb9461fd34b23af033e069853aed3474fe17ef77db28e958424', '[\"*\"]', NULL, NULL, '2025-01-12 16:12:27', '2025-01-12 16:12:27'),
(49, 'App\\Models\\Stagiaire', 10, 'main', 'ed3bc2561ce175058e5dc9a37a1266db8038537b3e978163ec5a073620daa3b5', '[\"*\"]', NULL, NULL, '2025-01-12 16:14:57', '2025-01-12 16:14:57'),
(50, 'App\\Models\\Stagiaire', 10, 'main', 'fb8cf97040025cf75e7589253fdda9fd370f7baf0e6c830ea17c45cc1b90c5bc', '[\"*\"]', NULL, NULL, '2025-01-12 16:39:09', '2025-01-12 16:39:09'),
(51, 'App\\Models\\Stagiaire', 10, 'main', '1b1ff8fef0eeda29517f6982ff5832a9b220046b96021b720e8720a7e51b033e', '[\"*\"]', NULL, NULL, '2025-01-12 16:42:10', '2025-01-12 16:42:10'),
(52, 'App\\Models\\Entreprise', 3, 'main', '34168f259bbc5a643d26de4048438ab00a6155ca8a9014421377492ff6700224', '[\"*\"]', NULL, NULL, '2025-01-12 16:44:20', '2025-01-12 16:44:20'),
(53, 'App\\Models\\Entreprise', 3, 'main', '566f3d7de893b0f744567fcd9a23580374b9dbc9b216f33e4088cdbb43c83257', '[\"*\"]', NULL, NULL, '2025-01-12 17:36:36', '2025-01-12 17:36:36'),
(54, 'App\\Models\\Stagiaire', 10, 'main', '2a31fb311ff2645a44faac938de06922543e2954c49acfc078eaa04cf3cc2cb4', '[\"*\"]', '2025-01-13 15:25:29', NULL, '2025-01-13 15:25:02', '2025-01-13 15:25:29'),
(55, 'App\\Models\\Stagiaire', 10, 'main', '8287fe4adcd23d35bb913d3f89cf46be1590968557bf23bf8d5c11ab15f3d91f', '[\"*\"]', NULL, NULL, '2025-01-13 15:27:30', '2025-01-13 15:27:30'),
(56, 'App\\Models\\Entreprise', 3, 'main', 'eb58573b69b9c9a5692363ba31ec8606b9f321a840911282416d20d945d30d58', '[\"*\"]', NULL, NULL, '2025-01-13 15:28:39', '2025-01-13 15:28:39'),
(57, 'App\\Models\\Stagiaire', 10, 'main', 'f892f7fa0e9b5e7d4b1e77a8a20229530d03872d094c6939f818d90f574e2028', '[\"*\"]', NULL, NULL, '2025-01-13 15:34:02', '2025-01-13 15:34:02'),
(58, 'App\\Models\\Entreprise', 3, 'main', 'cad64521dcde87ec0ff2df21ece62a23b44553896745897270795f8c3bc126cc', '[\"*\"]', NULL, NULL, '2025-01-13 15:34:11', '2025-01-13 15:34:11'),
(59, 'App\\Models\\Stagiaire', 10, 'main', 'c01345ee3873b2ac4e69903f269b694dd80a68dbce5b1ac59643f24b3f798371', '[\"*\"]', NULL, NULL, '2025-01-13 17:23:15', '2025-01-13 17:23:15'),
(60, 'App\\Models\\Entreprise', 3, 'main', 'dd6e24ab4d9b8db1bd842fd151baedc4640ad6d8b8a37da394587fb64c5a17d0', '[\"*\"]', NULL, NULL, '2025-01-13 17:48:52', '2025-01-13 17:48:52'),
(61, 'App\\Models\\Stagiaire', 10, 'main', '1b177756b26eb42ac0a5e8309c2ff9c1d2a246bab9485c0632d1b828931a67a7', '[\"*\"]', NULL, NULL, '2025-01-13 18:27:44', '2025-01-13 18:27:44'),
(62, 'App\\Models\\Stagiaire', 10, 'main', 'f264bb7a020deb585f1f1dcab312353e9dc0b5b5922a5157e7fc760119ae7123', '[\"*\"]', NULL, NULL, '2025-01-13 18:30:41', '2025-01-13 18:30:41'),
(63, 'App\\Models\\Entreprise', 3, 'main', 'fe2d79aa786f0191996f4788f38046874d252594cbaf4b671d7c9ac0a9763fb0', '[\"*\"]', NULL, NULL, '2025-01-13 18:32:57', '2025-01-13 18:32:57'),
(64, 'App\\Models\\Entreprise', 3, 'main', '4933346366d504cb1801e35ee05027d82bb2360f0f73a5e598b331e6f45de7cc', '[\"*\"]', NULL, NULL, '2025-01-13 18:49:13', '2025-01-13 18:49:13'),
(65, 'App\\Models\\Stagiaire', 10, 'main', 'fdc19ba39dd6678955664b67d7182077fed626103f4ef8b8b8cfb3f6f214dcad', '[\"*\"]', NULL, NULL, '2025-01-13 19:00:23', '2025-01-13 19:00:23'),
(66, 'App\\Models\\Entreprise', 3, 'main', '9cbb7b13e61a602191d209dce0a9b6433526e672bbf3117881368ded003bed02', '[\"*\"]', NULL, NULL, '2025-01-13 19:02:47', '2025-01-13 19:02:47'),
(67, 'App\\Models\\Stagiaire', 10, 'main', 'f2993e3f297281ec5870c7c82a2b62d8b3fc4b86892683565e9dae3ea72ffd91', '[\"*\"]', NULL, NULL, '2025-01-13 19:12:44', '2025-01-13 19:12:44'),
(68, 'App\\Models\\Stagiaire', 10, 'main', '3127c58d03cfef0e20eeebe0fe2edcd8ea2d6f2527e78f260f2aad1c9525f5b0', '[\"*\"]', NULL, NULL, '2025-01-15 15:27:09', '2025-01-15 15:27:09'),
(69, 'App\\Models\\Stagiaire', 10, 'main', 'ad08ac409515dd9c479812e1c122d3cc8097e7de2b0b0286025c77b3609c0f9d', '[\"*\"]', NULL, NULL, '2025-01-15 15:27:20', '2025-01-15 15:27:20'),
(70, 'App\\Models\\Stagiaire', 10, 'main', '27ec92feb5562b47ef2aa82e801232dc70ae4541387b8fcbf1385ec7e6483210', '[\"*\"]', NULL, NULL, '2025-01-15 16:03:03', '2025-01-15 16:03:03'),
(71, 'App\\Models\\Stagiaire', 10, 'main', '2fabd67d7a9264f3a4bb7012006cdfaa2e2a75cc2241fcb41d264661a34c383d', '[\"*\"]', NULL, NULL, '2025-01-15 16:12:43', '2025-01-15 16:12:43'),
(72, 'App\\Models\\Stagiaire', 10, 'main', '4ffe610d1450da3d4e2128b93b659c8c01a9322d17cf93549582b49875a36b3f', '[\"*\"]', NULL, NULL, '2025-01-15 16:14:42', '2025-01-15 16:14:42'),
(73, 'App\\Models\\Stagiaire', 10, 'main', '6b7e8966a7e97d9b24a41b233ab3885964590e3fd0ac0e23b69010a84abe8c2a', '[\"*\"]', NULL, NULL, '2025-01-15 17:35:41', '2025-01-15 17:35:41'),
(74, 'App\\Models\\Entreprise', 3, 'main', 'fb277ff05a5bf8b9c120bf57a5c4907bc28908bb7133670dbb0b33e60209fb73', '[\"*\"]', NULL, NULL, '2025-01-15 18:40:05', '2025-01-15 18:40:05'),
(75, 'App\\Models\\Entreprise', 3, 'main', '5a4854e8a1819afe75deb94db2a13f1c8e040bd790cfacbba793d68a560d4711', '[\"*\"]', NULL, NULL, '2025-01-15 18:43:43', '2025-01-15 18:43:43'),
(76, 'App\\Models\\Stagiaire', 10, 'main', 'd8180612849b9b79f3750a35cbfd29eeec632706722b9e82a38e61dfb128c7c3', '[\"*\"]', NULL, NULL, '2025-01-17 13:05:55', '2025-01-17 13:05:55'),
(77, 'App\\Models\\Stagiaire', 13, 'main', '52695519cb8cfb77547446598c6f71faa261f4e45072a9adfb8f153d37425ba3', '[\"*\"]', '2025-01-17 14:00:40', NULL, '2025-01-17 13:56:49', '2025-01-17 14:00:40'),
(78, 'App\\Models\\Stagiaire', 13, 'main', '2c880f9305c95e1ebe1a07c2d104364d0f56ec38f91eebb36f59863c3bbb69cf', '[\"*\"]', '2025-01-17 14:34:08', NULL, '2025-01-17 14:01:47', '2025-01-17 14:34:08'),
(79, 'App\\Models\\Stagiaire', 13, 'main', '99024c1ff5329c7937e5031bb25e5bb56d0e255499b7973b1da5e53422b7bd3b', '[\"*\"]', '2025-01-17 14:56:49', NULL, '2025-01-17 14:34:32', '2025-01-17 14:56:49'),
(80, 'App\\Models\\Stagiaire', 13, 'main', 'e6ea8ecd8b4eb85703284a6d9fcd40efc1b4d666d1596a7288b6cf538bd03d36', '[\"*\"]', '2025-01-18 09:50:08', NULL, '2025-01-18 09:42:58', '2025-01-18 09:50:08'),
(81, 'App\\Models\\Stagiaire', 13, 'main', '79ecf231db8674b545f297ab1b61294a23b814692bc5253290587cfc3a8b6213', '[\"*\"]', '2025-01-18 10:24:46', NULL, '2025-01-18 10:08:16', '2025-01-18 10:24:46'),
(82, 'App\\Models\\Entreprise', 3, 'main', '5f4397bf9a6f6838c736d7dae815da5ae3c4e1f0330deb212975bd85fc238f12', '[\"*\"]', NULL, NULL, '2025-01-18 10:29:44', '2025-01-18 10:29:44'),
(83, 'App\\Models\\Entreprise', 3, 'main', '9f51cd3adc7cf76e53c5d41fa7364950c87d5c36f88468dd9647e35fba6252da', '[\"*\"]', NULL, NULL, '2025-01-18 11:56:55', '2025-01-18 11:56:55'),
(84, 'App\\Models\\Entreprise', 3, 'main', '6f0acafcaad543c8112448a9ffb0bbb900340740b6044ca4146c00914af4c9b1', '[\"*\"]', NULL, NULL, '2025-01-18 14:33:38', '2025-01-18 14:33:38'),
(85, 'App\\Models\\Stagiaire', 10, 'main', '30fe03cf18509cb4800f3a5d932347262103e355f0038917bf7907bf3b19a741', '[\"*\"]', NULL, NULL, '2025-01-18 14:43:35', '2025-01-18 14:43:35'),
(86, 'App\\Models\\Entreprise', 3, 'main', '4081391ecf4b62516e33cf4a9a542abca428c5888a83e44ca09c9e5fd08a3f38', '[\"*\"]', NULL, NULL, '2025-01-18 14:44:20', '2025-01-18 14:44:20'),
(87, 'App\\Models\\Entreprise', 3, 'main', '037e805c3d9824c16d09b6463556d366bb77d0f7a146e1d61af6854a120b7bfb', '[\"*\"]', NULL, NULL, '2025-01-18 15:15:00', '2025-01-18 15:15:00'),
(88, 'App\\Models\\Entreprise', 3, 'main', 'e8f31253da2ae8893e01e2244299fb84dfe51adea02b67113cebb27dd04a9d57', '[\"*\"]', NULL, NULL, '2025-01-18 15:18:31', '2025-01-18 15:18:31'),
(89, 'App\\Models\\Entreprise', 3, 'main', 'a5af9b02981376dea7efe9562ad117aaf59e77bd96a068b12d299431a6e6c993', '[\"*\"]', NULL, NULL, '2025-01-18 15:28:20', '2025-01-18 15:28:20'),
(90, 'App\\Models\\Entreprise', 3, 'main', '620a2fef5a33c7b2f2db4c6f8ae4baaa1b2050a5035b2c2c45dbdbd7fdcab3fe', '[\"*\"]', NULL, NULL, '2025-01-18 15:32:44', '2025-01-18 15:32:44'),
(91, 'App\\Models\\Stagiaire', 10, 'main', 'a48335b07514f5822b6a16d2cfeb843a971d4edee52a6b5e4994f9d209e684ff', '[\"*\"]', '2025-01-18 18:36:02', NULL, '2025-01-18 18:23:09', '2025-01-18 18:36:02'),
(92, 'App\\Models\\Stagiaire', 10, 'main', 'cb1c6bd8f073a21979bb777789b03b926e16447e569652620ec35785983789ee', '[\"*\"]', NULL, NULL, '2025-01-18 18:38:37', '2025-01-18 18:38:37'),
(93, 'App\\Models\\Entreprise', 3, 'main', 'ab7d6695ab26d475f7c1f342d55fa6049e7108191dd97b4184a5143abebd8189', '[\"*\"]', NULL, NULL, '2025-01-18 18:41:33', '2025-01-18 18:41:33'),
(94, 'App\\Models\\Stagiaire', 10, 'main', '844bb9284414f0af6e2c62fee5068af058dcb5470d5b5ebf430ff1b5ab5b5bdc', '[\"*\"]', NULL, NULL, '2025-01-19 08:16:17', '2025-01-19 08:16:17'),
(95, 'App\\Models\\Stagiaire', 10, 'main', 'ce01a6510e7be6a7c25f011bdcea55acd40adc765c4087d69be1e478fee627e1', '[\"*\"]', NULL, NULL, '2025-01-19 08:17:16', '2025-01-19 08:17:16'),
(96, 'App\\Models\\Stagiaire', 10, 'main', 'aca22a22850ded32bbe888de415b24d41fd97360d3759ae40c68266710a9429a', '[\"*\"]', NULL, NULL, '2025-01-19 08:26:48', '2025-01-19 08:26:48'),
(97, 'App\\Models\\Entreprise', 3, 'main', 'a11dbe3b0dccc48d89b33836541c5f814d5ae244728587e136a016321c6cf82f', '[\"*\"]', NULL, NULL, '2025-01-19 09:08:50', '2025-01-19 09:08:50'),
(98, 'App\\Models\\Stagiaire', 10, 'main', '5ea0d73ffc08b06fd5843a669fb06cba77dd8f5299f0a5aa196e3ece0f9c2bf5', '[\"*\"]', NULL, NULL, '2025-01-19 09:11:22', '2025-01-19 09:11:22'),
(99, 'App\\Models\\Stagiaire', 10, 'main', '7d85cef0e342d3f42a893199ab13d2fef985e8198fb64a099fd3e75728dc31a6', '[\"*\"]', NULL, NULL, '2025-01-19 09:33:44', '2025-01-19 09:33:44'),
(100, 'App\\Models\\Stagiaire', 10, 'main', '1f3b710ad286ae2512de1b33cd2a8663031be671e167cc5f2a10da4e676f7f37', '[\"*\"]', NULL, NULL, '2025-01-19 09:37:36', '2025-01-19 09:37:36'),
(101, 'App\\Models\\Stagiaire', 10, 'main', '6822da97a88d84f3f1fbaafaaea256c7bfc65c0c266f3d359749e9a0ad8dd08b', '[\"*\"]', NULL, NULL, '2025-01-19 09:47:52', '2025-01-19 09:47:52'),
(102, 'App\\Models\\Stagiaire', 10, 'main', '3c7e033765d9d2c75420c4ed533c915f502f0635e2055835db7d1ec10eb14c4c', '[\"*\"]', NULL, NULL, '2025-01-19 09:49:06', '2025-01-19 09:49:06'),
(103, 'App\\Models\\Stagiaire', 10, 'main', '8633d84b3538bdf1718934002429942b9831d6d544ceed903774c0c5dd428e8e', '[\"*\"]', NULL, NULL, '2025-01-19 10:24:44', '2025-01-19 10:24:44'),
(104, 'App\\Models\\Entreprise', 3, 'main', 'c867f415d7beb07eeef982bdd032256e71070338c7d295a0ac9aa84c2461d52a', '[\"*\"]', NULL, NULL, '2025-01-19 10:25:31', '2025-01-19 10:25:31'),
(105, 'App\\Models\\Entreprise', 3, 'main', '440ff27fec746b5bf9980b37ee294c457b10533f24d35a3e596878606b89ad7e', '[\"*\"]', NULL, NULL, '2025-01-19 15:06:58', '2025-01-19 15:06:58'),
(106, 'App\\Models\\Stagiaire', 10, 'main', 'f815fa685d2c6e82590ed2c1453ddad55b3f36ed37cd122407e027732f9be165', '[\"*\"]', NULL, NULL, '2025-01-19 15:08:25', '2025-01-19 15:08:25'),
(107, 'App\\Models\\Stagiaire', 10, 'main', '675a2ff09712a5671a18358d13733f7ec930815756545c020fd7efa261a47387', '[\"*\"]', NULL, NULL, '2025-01-19 15:11:43', '2025-01-19 15:11:43'),
(108, 'App\\Models\\Entreprise', 3, 'main', '65e41e15e41a6c480400aef27c293b0a083576b62c682a74b20f08a34dc04efd', '[\"*\"]', NULL, NULL, '2025-01-19 15:14:34', '2025-01-19 15:14:34'),
(109, 'App\\Models\\Stagiaire', 10, 'main', '99973ebe5e48e78dd0209fbea96b12c6911445e16567d839b713f7b62709350b', '[\"*\"]', '2025-01-19 16:34:58', NULL, '2025-01-19 16:22:40', '2025-01-19 16:34:58'),
(110, 'App\\Models\\Entreprise', 3, 'main', '356476ca4bf75e526e4545e1ca79fa2d89925d6f3c6c74cf08d87a5a98b2dd07', '[\"*\"]', NULL, NULL, '2025-01-19 16:42:24', '2025-01-19 16:42:24'),
(111, 'App\\Models\\Stagiaire', 10, 'main', 'b61e4f297b6af1490faa910b793468cd0b033d853087083eae7ca19a20d00c94', '[\"*\"]', NULL, NULL, '2025-01-19 17:14:23', '2025-01-19 17:14:23'),
(112, 'App\\Models\\Entreprise', 3, 'main', 'a0a7528fe7af671fa5af916b3bc8ed0c61239d9c2742cca26d721b462bbde685', '[\"*\"]', NULL, NULL, '2025-01-19 17:14:33', '2025-01-19 17:14:33'),
(113, 'App\\Models\\Stagiaire', 10, 'main', 'de8982bafc8e05026a6820d3b867bb6a53fb714b1f6b01067dce2c62bd49bd7c', '[\"*\"]', NULL, NULL, '2025-01-19 18:05:13', '2025-01-19 18:05:13'),
(114, 'App\\Models\\Entreprise', 3, 'main', '1fca51ecad37d1ea00287c120d8b3ea2b86d99b4232d0419b1fa7d9fe78c7e8c', '[\"*\"]', NULL, NULL, '2025-01-19 18:12:33', '2025-01-19 18:12:33'),
(115, 'App\\Models\\Stagiaire', 10, 'main', '8f476bec29752d6207a8e89022416a6a754dac33adbef05f1eb6ac1ab62ba74d', '[\"*\"]', NULL, NULL, '2025-01-19 18:15:42', '2025-01-19 18:15:42'),
(116, 'App\\Models\\Entreprise', 3, 'main', 'c944e190a345fe6610dc98c4860391f81841701afaf6fc67216a84752f5325d4', '[\"*\"]', NULL, NULL, '2025-01-19 18:16:41', '2025-01-19 18:16:41'),
(117, 'App\\Models\\Entreprise', 3, 'main', 'ac624a164344547a028610f667e4647946ca45a7a6ee350c2d84c77a1f99b188', '[\"*\"]', NULL, NULL, '2025-01-19 18:20:40', '2025-01-19 18:20:40'),
(118, 'App\\Models\\Stagiaire', 10, 'main', '1c9001f63297ff2cfd360abd135759176f97fabbe83e78108be9b478a0521fd2', '[\"*\"]', '2025-01-19 18:30:46', NULL, '2025-01-19 18:29:21', '2025-01-19 18:30:46'),
(119, 'App\\Models\\Stagiaire', 10, 'main', '309344e6af507373dec2d424ffd4139cac647ddddb3c97f6f9ab2995e60fd611', '[\"*\"]', NULL, NULL, '2025-01-19 18:33:14', '2025-01-19 18:33:14'),
(120, 'App\\Models\\Entreprise', 3, 'main', 'f99a26811a950961c7246ef27c63162dc2c7131c9809065fe7fd148dd6702795', '[\"*\"]', NULL, NULL, '2025-01-19 18:36:10', '2025-01-19 18:36:10'),
(121, 'App\\Models\\Stagiaire', 10, 'main', '28788f1f6d6e2673ee90505144cfbd4cb6ee107946272b31c6603d4dd23440cd', '[\"*\"]', NULL, NULL, '2025-01-19 18:48:04', '2025-01-19 18:48:04'),
(122, 'App\\Models\\Stagiaire', 10, 'main', 'f2e193910208009ff1615d086a8b7da6c8d2e0c16bdd7cf5bef13cc540c74cec', '[\"*\"]', NULL, NULL, '2025-01-19 18:48:04', '2025-01-19 18:48:04'),
(123, 'App\\Models\\Entreprise', 3, 'main', '439fa899ece3aa2d2753b261874b7bb0c815ff818f4361d913e7a0aada5402c9', '[\"*\"]', NULL, NULL, '2025-01-19 18:48:49', '2025-01-19 18:48:49'),
(124, 'App\\Models\\Entreprise', 3, 'main', 'e6a57b8da024a97c65e2b18685ddf81ecd681ee83f42b43667f59f3e3fde8ce3', '[\"*\"]', NULL, NULL, '2025-01-19 19:08:12', '2025-01-19 19:08:12'),
(125, 'App\\Models\\Entreprise', 3, 'main', 'f4223797ba0f5b4e5d29228ce88b6f5dcf6dd69ff219f7156affe5ca31fb9960', '[\"*\"]', NULL, NULL, '2025-01-19 19:08:34', '2025-01-19 19:08:34'),
(126, 'App\\Models\\Stagiaire', 10, 'main', '948604086ea44b9b0088c50356faa5628c1709621d56969348af55a9242fbcf6', '[\"*\"]', NULL, NULL, '2025-01-19 19:09:23', '2025-01-19 19:09:23'),
(127, 'App\\Models\\Stagiaire', 10, 'main', 'a48333a9e27c561d99f926a5152bc2cb363fe07be24bdbfcf2f3f013535ecfe3', '[\"*\"]', NULL, NULL, '2025-01-19 19:15:10', '2025-01-19 19:15:10'),
(128, 'App\\Models\\Stagiaire', 21, 'main', '1a94c4080d3420ce909df1d0a323d8a7d2301347185a432c3dbfdfe8fb20ff7f', '[\"*\"]', NULL, NULL, '2025-01-20 08:29:15', '2025-01-20 08:29:15'),
(129, 'App\\Models\\Stagiaire', 10, 'main', '165a9be0eacf8a1160a6b27dcba55ab7c00a55e29095e9fdeed6a59aa15e4e04', '[\"*\"]', NULL, NULL, '2025-01-20 08:32:46', '2025-01-20 08:32:46'),
(130, 'App\\Models\\Stagiaire', 10, 'main', 'efa6f2eb7c18ddcffab7e65cf3e1b44b12732a377db230bd0ff50d5754c43d8a', '[\"*\"]', NULL, NULL, '2025-01-20 08:46:28', '2025-01-20 08:46:28'),
(131, 'App\\Models\\Stagiaire', 10, 'main', '20772e4f642b5bd2564537b4ee14de6229e81f656448dc0f74183243bb59fc92', '[\"*\"]', NULL, NULL, '2025-01-20 08:49:17', '2025-01-20 08:49:17'),
(132, 'App\\Models\\Entreprise', 3, 'main', 'd276666ced5e46eae60e0d22510e679cd59042cad89f38737a3b0629267a8cc8', '[\"*\"]', NULL, NULL, '2025-01-20 09:26:01', '2025-01-20 09:26:01'),
(133, 'App\\Models\\Stagiaire', 10, 'main', '3fd6237659b12f3f6c0ce0b045a9b8886cf0f5e801ed6fadf8a8603ef234eb68', '[\"*\"]', '2025-01-20 10:20:54', NULL, '2025-01-20 09:43:23', '2025-01-20 10:20:54'),
(134, 'App\\Models\\Stagiaire', 10, 'main', 'e325cd95cdb5008554130392d2c122c8cd04eac69841325ad317bb7f621b085b', '[\"*\"]', '2025-01-20 10:30:07', NULL, '2025-01-20 10:21:58', '2025-01-20 10:30:07'),
(135, 'App\\Models\\Stagiaire', 10, 'main', '5e3657a63644f8a926e6534fe4a7f5e752e4cc31ed1ca99429952c2e34038572', '[\"*\"]', NULL, NULL, '2025-01-20 11:52:33', '2025-01-20 11:52:33'),
(136, 'App\\Models\\Entreprise', 3, 'main', 'ef12d542fc12a007f9e8612e0aaa014771b2940c744eb137fb2190747010bc62', '[\"*\"]', NULL, NULL, '2025-01-20 11:52:56', '2025-01-20 11:52:56'),
(137, 'App\\Models\\Stagiaire', 10, 'main', 'a92b4fd7e7a92501d706d8716815e62ab79dc8cee49aa211e08a4380763be880', '[\"*\"]', NULL, NULL, '2025-01-20 12:05:05', '2025-01-20 12:05:05'),
(138, 'App\\Models\\Stagiaire', 10, 'main', '133e39726d5cf5fda2bdbcf96d2407f9ac293741c949378b4ef62448d94bb755', '[\"*\"]', '2025-01-20 13:04:13', NULL, '2025-01-20 12:48:07', '2025-01-20 13:04:13'),
(139, 'App\\Models\\Stagiaire', 10, 'main', 'b842e9be20c796a2d8490c0242ac19a8119ea5dad1c6bf7670799a01e8cd9f69', '[\"*\"]', '2025-01-20 13:28:33', NULL, '2025-01-20 13:15:31', '2025-01-20 13:28:33'),
(140, 'App\\Models\\Stagiaire', 10, 'main', 'cdd48f930be35e2b43ef61ae2f750d869ebc6a2cd70d3a242de64c50d4e6fd57', '[\"*\"]', '2025-01-20 13:29:05', NULL, '2025-01-20 13:28:41', '2025-01-20 13:29:05'),
(141, 'App\\Models\\Stagiaire', 10, 'main', '5b073220c65cd60570809b929f76f4567926acc6a86b8b9bcbbb3c28e8c1d78c', '[\"*\"]', NULL, NULL, '2025-01-20 13:36:48', '2025-01-20 13:36:48'),
(142, 'App\\Models\\Stagiaire', 10, 'main', 'acf06722e690f945fc8e40b2ac240ca5776f0f3a9d9c3bcb33df8d419b639263', '[\"*\"]', NULL, NULL, '2025-01-20 13:37:41', '2025-01-20 13:37:41'),
(143, 'App\\Models\\Stagiaire', 10, 'main', '833cacfdf7ff44a9e51599f567a59e496ba16fd4a2e33c9aa72c55a906eee760', '[\"*\"]', '2025-01-20 13:38:10', NULL, '2025-01-20 13:37:59', '2025-01-20 13:38:10'),
(144, 'App\\Models\\Stagiaire', 10, 'main', '397c9d85848c5c1c49c9352ed3249989df326e66f95ea0e212cdd724ef3577c6', '[\"*\"]', NULL, NULL, '2025-01-20 13:39:21', '2025-01-20 13:39:21'),
(145, 'App\\Models\\Stagiaire', 10, 'main', '668aee2eda013af8b8bc4fd72405283815484434dd79f9af9946c2373c191984', '[\"*\"]', NULL, NULL, '2025-01-20 14:42:50', '2025-01-20 14:42:50'),
(146, 'App\\Models\\Stagiaire', 10, 'main', 'b046c8bf2d360214beb32d1c761840adee11a64e951e1b6a1cb60a4bd262e3a0', '[\"*\"]', '2025-01-20 15:09:09', NULL, '2025-01-20 14:51:05', '2025-01-20 15:09:09'),
(147, 'App\\Models\\Entreprise', 3, 'main', '7d4586d7fe6ef41c04474c0e064d9d559b4e8217e5ac77fa1c223b1a44c5de94', '[\"*\"]', NULL, NULL, '2025-01-20 15:24:46', '2025-01-20 15:24:46'),
(148, 'App\\Models\\Stagiaire', 10, 'main', '98d0a07fe93b29d0f069e0c845c15cc6e293983c4c9582a0913d795cef1521a2', '[\"*\"]', NULL, NULL, '2025-01-20 15:28:35', '2025-01-20 15:28:35'),
(149, 'App\\Models\\Stagiaire', 10, 'main', '8eaf01cc384370b5236e2d0ada7f2fb6c21f93f4e1cf280a6f59749141958b49', '[\"*\"]', NULL, NULL, '2025-01-20 15:32:34', '2025-01-20 15:32:34'),
(150, 'App\\Models\\Stagiaire', 10, 'main', '7fb64e0ef95a0b61bb3dedddf0653dfdcd9a6d300ef1574b18590645983850d1', '[\"*\"]', '2025-01-20 15:47:32', NULL, '2025-01-20 15:35:12', '2025-01-20 15:47:32'),
(151, 'App\\Models\\Stagiaire', 10, 'main', 'f350c94d57fba12dbb16a65bbc2e860429a611b641f9b0a604ac5432833c87fb', '[\"*\"]', NULL, NULL, '2025-01-20 15:50:29', '2025-01-20 15:50:29'),
(152, 'App\\Models\\Stagiaire', 10, 'main', 'a6d0f6ace68006e7143892b4e444ea816408e26e4da9d705f0f44c3dff64696c', '[\"*\"]', NULL, NULL, '2025-01-20 15:50:55', '2025-01-20 15:50:55'),
(153, 'App\\Models\\Entreprise', 3, 'main', 'e9d6276e66bba7340e5d6caea7e7f5dc2cd406050fa2eb422c62c99ce664192d', '[\"*\"]', NULL, NULL, '2025-01-20 15:51:48', '2025-01-20 15:51:48'),
(154, 'App\\Models\\Entreprise', 3, 'main', 'c9c6f8c3c2ecb934de0e477d4ec45a86d5e6f432cac8d5050183395f574c222a', '[\"*\"]', NULL, NULL, '2025-01-20 16:55:56', '2025-01-20 16:55:56'),
(155, 'App\\Models\\Stagiaire', 10, 'main', '0a409cb449de069420062df2500f4d6891afee3fc9f2a7992b656cd6134002fc', '[\"*\"]', NULL, NULL, '2025-01-20 17:49:02', '2025-01-20 17:49:02'),
(156, 'App\\Models\\Entreprise', 3, 'main', '29f158240454c5e102b0350b80efd15dc1fc3d7a73ab24d4b82debd0a8067f4c', '[\"*\"]', NULL, NULL, '2025-01-20 17:49:22', '2025-01-20 17:49:22'),
(157, 'App\\Models\\Entreprise', 3, 'main', '5d4838468c3509844f54f380c1715773e8556874229231e121c17721d50764fd', '[\"*\"]', NULL, NULL, '2025-01-20 18:03:34', '2025-01-20 18:03:34'),
(158, 'App\\Models\\Entreprise', 3, 'main', 'ff000fb117f3df08efef1e9d09f31065bab169a835f14f5c3cf8e621d8be43ca', '[\"*\"]', NULL, NULL, '2025-01-20 18:05:43', '2025-01-20 18:05:43'),
(159, 'App\\Models\\Entreprise', 3, 'main', '684fcacfad3d85ca4040afda0d86e5d4d6686466675038d2dd192af942c9a20a', '[\"*\"]', NULL, NULL, '2025-01-20 18:12:29', '2025-01-20 18:12:29'),
(160, 'App\\Models\\Entreprise', 3, 'main', 'ebecf1694ea4b00c01c75e5bbe5810d61c8463e477d43c6a66756e26c5a368e6', '[\"*\"]', NULL, NULL, '2025-01-20 18:15:23', '2025-01-20 18:15:23'),
(161, 'App\\Models\\Entreprise', 3, 'main', 'b57e42c84de5b2256a716524c8b2b6f4d7a17da1990768a71e3a0fa98a4c05fb', '[\"*\"]', NULL, NULL, '2025-01-20 18:24:15', '2025-01-20 18:24:15'),
(162, 'App\\Models\\Entreprise', 3, 'main', 'b60415495940ef13ec2dc1a9c47644130811178bafa99c4ed51a4e6950a6ab3f', '[\"*\"]', NULL, NULL, '2025-01-20 18:49:57', '2025-01-20 18:49:57'),
(163, 'App\\Models\\Entreprise', 3, 'main', 'f05edff0ba5bd61e7fec77738df8a68b577212e7f7fde0d7b341de2b49553900', '[\"*\"]', NULL, NULL, '2025-01-20 18:52:59', '2025-01-20 18:52:59'),
(164, 'App\\Models\\Entreprise', 3, 'main', '069080e4190abc6a9ab2da7ab5a6c9ee51a0dea10c27ed75e7a445c418469a4a', '[\"*\"]', NULL, NULL, '2025-01-20 19:01:07', '2025-01-20 19:01:07'),
(165, 'App\\Models\\Entreprise', 3, 'main', 'ba004d365b4784344fbb303c46b0ea878160dd273b7446494982dfc92ea07c00', '[\"*\"]', NULL, NULL, '2025-01-20 19:02:38', '2025-01-20 19:02:38'),
(166, 'App\\Models\\Entreprise', 3, 'main', 'cd6e676cedb40f9b35b3a9dca17ec9d9f1c4b28f4037991a2f166a595c6cdb3f', '[\"*\"]', NULL, NULL, '2025-01-20 19:07:10', '2025-01-20 19:07:10'),
(167, 'App\\Models\\Entreprise', 3, 'main', '8f338a5f196710bd98a2de6912b1e242a07618fdf30108170ebe8ee4998717b7', '[\"*\"]', NULL, NULL, '2025-01-20 19:07:41', '2025-01-20 19:07:41'),
(168, 'App\\Models\\Entreprise', 3, 'main', 'c4dd1459fd800e1d756621ab54c217ed3e501f80f71651f5cd502009d6069786', '[\"*\"]', NULL, NULL, '2025-01-20 19:08:19', '2025-01-20 19:08:19'),
(169, 'App\\Models\\Entreprise', 3, 'main', '00a54c3aa6c2e0a22ec5c83840048c63a92fd7bff8b395cc7e6aa5511e95831d', '[\"*\"]', NULL, NULL, '2025-01-20 19:08:47', '2025-01-20 19:08:47'),
(170, 'App\\Models\\Entreprise', 3, 'main', '8a877d8495feb716746bf0be774fd34e49a15cfaa4d0fcf016404c99c8eb6bb3', '[\"*\"]', NULL, NULL, '2025-01-20 19:09:37', '2025-01-20 19:09:37'),
(171, 'App\\Models\\Entreprise', 3, 'main', '124576b33a18c13123f142ac6407814b654f568039375aaf540b99715e438234', '[\"*\"]', NULL, NULL, '2025-01-20 19:11:30', '2025-01-20 19:11:30'),
(172, 'App\\Models\\Stagiaire', 10, 'main', '3f91a95deafca5d5a921543c9d4038783386f0023e1ecb4f4df271e12f17289b', '[\"*\"]', '2025-01-20 19:24:51', NULL, '2025-01-20 19:24:16', '2025-01-20 19:24:51'),
(173, 'App\\Models\\Entreprise', 3, 'main', 'b6a23dc8c30011606a366a8cc5941e6f01716fdaeae06a5581cfb30bd39e50c4', '[\"*\"]', NULL, NULL, '2025-01-20 19:28:36', '2025-01-20 19:28:36'),
(174, 'App\\Models\\Stagiaire', 23, 'main', '14c9ee8f0c6c80d9a484cd1197385ec768bf7ed1e5741d527335d859c48886af', '[\"*\"]', '2025-01-20 19:59:57', NULL, '2025-01-20 19:50:33', '2025-01-20 19:59:57'),
(175, 'App\\Models\\Stagiaire', 23, 'main', '0a1f7d161ea5aa1a861b6ea75db0abd79ec192c1c6b621520c29dec055db20c3', '[\"*\"]', NULL, NULL, '2025-01-20 20:00:18', '2025-01-20 20:00:18'),
(176, 'App\\Models\\Stagiaire', 23, 'main', 'b4ac7f9de84d58dc588491ed21c7bab42c93ab05696024dea4668c7077de6539', '[\"*\"]', '2025-01-20 20:06:58', NULL, '2025-01-20 20:00:24', '2025-01-20 20:06:58'),
(177, 'App\\Models\\Entreprise', 43, 'main', '692b4eb3b3d226b071b8e49fab3235c56b104662310b0676f1f72a3d18bddf64', '[\"*\"]', NULL, NULL, '2025-01-20 20:21:17', '2025-01-20 20:21:17'),
(178, 'App\\Models\\Entreprise', 43, 'main', 'a04311f8c5b532ccbe74bf823b7eef9292f7f4b3de6367121ca5ce60117de309', '[\"*\"]', NULL, NULL, '2025-01-20 20:21:35', '2025-01-20 20:21:35'),
(179, 'App\\Models\\Stagiaire', 23, 'main', '129bc1ffab9f357235ebdf506369c660b45024a7aab52122a8ec90db3164ea9a', '[\"*\"]', NULL, NULL, '2025-01-20 20:24:39', '2025-01-20 20:24:39'),
(180, 'App\\Models\\Entreprise', 43, 'main', '18e9cc0ca1a8ed3603470534c6fb943553425b59ab3b2affab76cb5546276059', '[\"*\"]', NULL, NULL, '2025-01-20 20:25:25', '2025-01-20 20:25:25'),
(181, 'App\\Models\\Entreprise', 3, 'main', '7d2c341173226eab8b19d5dff2d346f03bc41d023a33aeb951f76f5e7dc582a4', '[\"*\"]', NULL, NULL, '2025-01-20 22:13:56', '2025-01-20 22:13:56'),
(182, 'App\\Models\\Entreprise', 3, 'main', '9e8c9781895f630dada2b506b990a7be12261b5e7ef8ab3482a8bf2397050e87', '[\"*\"]', NULL, NULL, '2025-01-20 22:19:22', '2025-01-20 22:19:22'),
(183, 'App\\Models\\Entreprise', 3, 'main', '16c89f78da01180912242abfbdcac97b95aaa865a0d7d39f98f4cbfee6988652', '[\"*\"]', NULL, NULL, '2025-01-21 08:28:06', '2025-01-21 08:28:06'),
(184, 'App\\Models\\Entreprise', 3, 'main', 'c8a15df42af4d7873623a4872e9ba8ae92905411a40f8bd3bf25fd4d026ee737', '[\"*\"]', NULL, NULL, '2025-01-21 08:46:45', '2025-01-21 08:46:45'),
(185, 'App\\Models\\Entreprise', 3, 'main', '1e01df1a3b64f304e1dfa522bdc9c237467b82e3e550baa607d5280acd9bffd9', '[\"*\"]', NULL, NULL, '2025-01-21 08:49:17', '2025-01-21 08:49:17'),
(186, 'App\\Models\\Stagiaire', 24, 'main', '5ceadb5268a99d0758474da9cab7ea45a37d4236eb2042cc7fca17a6b289c920', '[\"*\"]', '2025-01-21 09:08:52', NULL, '2025-01-21 09:06:08', '2025-01-21 09:08:52'),
(187, 'App\\Models\\Stagiaire', 24, 'main', '361a1838d5b0855decacaa3e5d98d6d6f65152977fa93cfcf29349172192b25c', '[\"*\"]', '2025-01-21 09:16:44', NULL, '2025-01-21 09:14:02', '2025-01-21 09:16:44'),
(188, 'App\\Models\\Stagiaire', 24, 'main', '2d9a60d7a65df1b28db6cd7388b2792e2a141cf7649e38cd8d52806ee6e77396', '[\"*\"]', '2025-01-21 09:28:55', NULL, '2025-01-21 09:23:30', '2025-01-21 09:28:55'),
(189, 'App\\Models\\Stagiaire', 24, 'main', '60d7c1186b179a58217030d7201a1a4be4e5ae39235d2f5e16e0d0ddffe22e58', '[\"*\"]', '2025-01-21 09:33:37', NULL, '2025-01-21 09:29:35', '2025-01-21 09:33:37'),
(190, 'App\\Models\\Stagiaire', 10, 'main', '767bd8f2a710d163df6194d3b736bf0ba647085c07ab3e3933f561dfaee03c97', '[\"*\"]', NULL, NULL, '2025-01-21 09:40:35', '2025-01-21 09:40:35'),
(191, 'App\\Models\\Stagiaire', 24, 'main', 'dd25188727a2d74dcf537ce70c51b3484aaa5fd49f526c978354187181c7c53c', '[\"*\"]', NULL, NULL, '2025-01-21 09:52:13', '2025-01-21 09:52:13'),
(192, 'App\\Models\\Entreprise', 44, 'main', '08be0d96f0df7e818929af4db1da7cb6f95ad2beabbd61bb47d66a8e0d02dc7d', '[\"*\"]', NULL, NULL, '2025-01-21 10:06:22', '2025-01-21 10:06:22'),
(193, 'App\\Models\\Entreprise', 44, 'main', 'b3035f8e0f3c774dc0382a268371502835de3fe423422a971814f99f2582d685', '[\"*\"]', NULL, NULL, '2025-01-21 10:08:25', '2025-01-21 10:08:25'),
(194, 'App\\Models\\Stagiaire', 24, 'main', 'a8a2e3a0a8e4812c0a028fc1de76f98b39bad3b5fa0318c64fa8555fbbb3ffb2', '[\"*\"]', NULL, NULL, '2025-01-21 10:18:40', '2025-01-21 10:18:40'),
(195, 'App\\Models\\Entreprise', 44, 'main', '0fe5ad5bf9bb57fb3b810d0b7f6578522507c8d92a42ebb61ae515c7b2178dc8', '[\"*\"]', NULL, NULL, '2025-01-21 10:19:32', '2025-01-21 10:19:32'),
(196, 'App\\Models\\Entreprise', 44, 'main', '3fd6bf5e7fe807c6bcd880b69f55b376ad612379808dedce9a41074fdfe5ab5b', '[\"*\"]', NULL, NULL, '2025-01-21 17:27:50', '2025-01-21 17:27:50'),
(197, 'App\\Models\\Entreprise', 44, 'main', 'd1369903f9591c3322f809816fd213f28cbed25b258a86205f0c9b0de4aadf0e', '[\"*\"]', NULL, NULL, '2025-01-21 17:31:51', '2025-01-21 17:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `responsables`
--

CREATE TABLE `responsables` (
  `ResponsableId` int NOT NULL,
  `ResponsableName` varchar(255) NOT NULL,
  `ResponsableCivilite` enum('Mr','Mrs','Ms','Dr') NOT NULL,
  `ResponsableFonction` varchar(255) DEFAULT NULL,
  `ResponsableMobile` varchar(20) DEFAULT NULL,
  `ResponsableFixe` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ResponsableLinkedIn` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `EntrepriseId` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `responsables`
--

INSERT INTO `responsables` (`ResponsableId`, `ResponsableName`, `ResponsableCivilite`, `ResponsableFonction`, `ResponsableMobile`, `ResponsableFixe`, `ResponsableLinkedIn`, `created_at`, `updated_at`, `EntrepriseId`) VALUES
(1, 'Sanaa Sipou', 'Dr', 'HR Manager', '123456789', '0987654321', 'https://www.linkedin.com/sanaa', '2025-01-06 18:23:13', '0000-00-00 00:00:00', '123456789123456'),
(2, 'Abdelmajid Salih', 'Mr', 'CEO', '2233445566', '6677889900', 'https://www.linkedin.com/abdelmajid', '2025-01-06 18:23:13', '0000-00-00 00:00:00', NULL),
(3, 'Ali Bennis', 'Mrs', 'CTO', '3344556677', '7788990011', 'https://www.linkedin.com/ali', '2025-01-06 18:23:13', '0000-00-00 00:00:00', NULL),
(4, 'Mouna Karami', 'Mr', 'Director', '4455667788', '8899001122', 'https://www.linkedin.com/mouna', '2025-01-06 18:23:13', '0000-00-00 00:00:00', NULL),
(5, 'Ahmed Zaki', 'Mrs', 'Manager', '5566778899', '9900112233', 'https://www.linkedin.com/ahmed', '2025-01-06 18:23:13', '0000-00-00 00:00:00', NULL),
(6, 'Khadija Lamrani', 'Mrs', 'Marketing Manager', '6677889900', '1122334455', 'https://www.linkedin.com/khadija', '2025-01-06 18:23:13', '0000-00-00 00:00:00', NULL),
(7, 'Yassir Elhaj', 'Ms', 'Sales Manager', '7788990011', '2233445566', 'https://www.linkedin.com/yassir', '2025-01-06 18:23:13', '0000-00-00 00:00:00', NULL),
(8, 'Sara Imane', 'Mrs', 'Operations Manager', '8899001122', '3344556677', 'https://www.linkedin.com/sara', '2025-01-06 18:23:13', '0000-00-00 00:00:00', NULL),
(9, 'Mohammed Lahlou', 'Mrs', 'R&D Manager', '9900112233', '4455667788', 'https://www.linkedin.com/mohammed', '2025-01-06 18:23:13', '0000-00-00 00:00:00', NULL),
(10, 'Laila Houssaini', 'Mr', 'Financial Manager', '1122334455', '5566778899', 'https://www.linkedin.com/laila', '2025-01-06 18:23:13', '0000-00-00 00:00:00', NULL),
(11, 'mustapha niamane', 'Mrs', 'coachCarriere', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-06 17:31:23', '2025-01-06 17:31:23', NULL),
(12, 'Soukina NIAMANE', 'Mrs', 'directeurRH', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-06 17:34:18', '2025-01-06 17:34:18', NULL),
(19, 'Aya NIAMANE', 'Mrs', 'consultantRH', '0682143130', '0241873547', 'https://www.linkedin.com/feed', '2025-01-07 08:24:48', '2025-01-07 08:24:48', NULL),
(20, 'Aya NIAMANE', 'Mrs', 'consultantRH', '0682143130', '0241873547', 'https://www.linkedin.com/feed', '2025-01-07 08:25:09', '2025-01-07 08:25:09', NULL),
(21, 'Aya NIAMANE', 'Mrs', 'consultantRH', '0682143130', '0241873547', 'https://www.linkedin.com/feed', '2025-01-07 08:26:08', '2025-01-07 08:26:08', NULL),
(22, 'Karim Bensaid', 'Mr', 'consultantRH', '0682143130', '0687213621', 'https://www.linkedin.com/feed', '2025-01-13 17:05:01', '2025-01-21 11:11:44', '001234567890124'),
(23, 'Soufia Slimani', 'Mrs', 'consultantRH', '0682143130', '0687213621', 'https://www.linkedin.com/feed', '2025-01-13 17:07:43', '2025-01-13 17:07:43', NULL),
(24, 'MUSTAPHA NIAMANE', 'Mr', 'responsableFormation', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-18 10:57:41', '2025-01-18 10:57:41', NULL),
(25, 'MUSTAPHA NIAMANE', 'Mr', 'responsableFormation', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-18 10:57:53', '2025-01-18 10:57:53', NULL),
(26, 'MUSTAPHA NIAMANE', 'Mr', 'responsableFormation', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-18 11:00:48', '2025-01-18 11:00:48', NULL),
(27, 'MUSTAPHA NIAMANE', 'Mr', 'responsableFormation', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-18 11:01:37', '2025-01-18 11:01:37', NULL),
(278, 'bbb', 'Mr', 'responsableCommunication', '0682143130', '0682143130', 'https://www.iam.ma/index.aspx', '2025-01-18 14:36:52', '2025-01-18 14:36:52', '027852749821547'),
(284, 'MUSTAPHA NIAMANE', 'Mr', 'chargeRecrutement', '0682143130', '0682143130', 'gggg', '2025-01-21 17:51:14', '2025-01-21 17:51:14', '028451347525865'),
(745, 'Salima sahi', 'Mr', 'consultantRH', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-18 11:43:17', '2025-01-18 11:43:17', NULL),
(1234, 'MUSTAPHA NIAMANE', 'Mr', 'responsableRH', '0682143130', '0578947896', 'rrrr', '2025-01-21 18:00:34', '2025-01-21 18:00:34', '123456789123456'),
(1245, 'Mohamed CHAFIK', 'Mr', 'responsableRH', '0682143120', '0578451620', 'https://www.linkedin.com/in/mohamed-chafik', '2025-01-20 20:18:01', '2025-01-20 20:18:01', '124578964215785'),
(1258, 'bbb', 'Mr', 'responsableCommunication', '0682143130', '0682143130', 'https://www.iam.ma/index.aspx', '2025-01-18 14:37:49', '2025-01-18 14:37:49', '125879456812478'),
(1472, 'MUSTAPHA NIAMANE', 'Mr', 'consultantRH', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-19 15:05:52', '2025-01-19 15:05:52', '147258749821753'),
(1478, 'bbb', 'Mr', 'responsableCommunication', '0682143130', '0682143130', 'https://www.iam.ma/index.aspx', '2025-01-18 14:36:10', '2025-01-18 14:36:10', '147852749821547'),
(2845, 'Salima sahi', 'Mr', 'consultantRH', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-18 11:44:01', '2025-01-18 11:44:01', NULL),
(4712, 'MUSTAPHA NIAMANE', 'Mr', 'chargeRecrutement', '0682143130', '0682143130', 'ggg', '2025-01-21 17:45:53', '2025-01-21 17:45:53', '471258749512475'),
(7485, 'MUSTAPHA NIAMANE', 'Mr', 'directeurRH', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-19 10:43:31', '2025-01-19 10:43:31', '748592158739458'),
(1401454, 'mouha db', 'Mr', 'consultantRH', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-18 11:16:18', '2025-01-18 11:16:18', NULL),
(1478254, 'MUSTAPHA NIAMANE', 'Mr', 'responsableFormation', '0682143130', '0682143130', 'https://www.linkedin.com/feed', '2025-01-18 11:03:34', '2025-01-18 11:03:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `secteur`
--

CREATE TABLE `secteur` (
  `SecteurID` int NOT NULL,
  `SecteurName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `secteur`
--

INSERT INTO `secteur` (`SecteurID`, `SecteurName`) VALUES
(1, 'IT'),
(2, 'Design'),
(3, 'Business'),
(4, 'Construction'),
(5, 'HR'),
(6, 'Engineering'),
(7, 'Sales'),
(8, 'Support'),
(9, 'Data'),
(10, 'Consulting');

-- --------------------------------------------------------

--
-- Table structure for table `secteurs`
--

CREATE TABLE `secteurs` (
  `id` int NOT NULL,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `secteurs`
--

INSERT INTO `secteurs` (`id`, `name`) VALUES
(1, 'Digital et Intelligence Artificielle '),
(2, 'Industrie'),
(3, 'Bâtiment et Travaux Publics (BTP)'),
(4, 'Hôtellerie, Tourisme et Restauration'),
(5, 'Commerce et Gestion'),
(6, 'Transport et Logistique'),
(7, 'Agroalimentaire et Agriculture'),
(8, 'Textile et Habillement'),
(9, 'Artisanat et Métiers d\'Art'),
(10, 'Santé et Action Sociale'),
(11, 'Audiovisuel et Médias'),
(12, 'Énergies Renouvelables et Environnement');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jamwc1PTJlNYeMkrUpBPnktcoqa5yZLxCj3O0uR6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVzlWb21XOFRFNXRzTEl1Z2VwYTBlQnpXY3Y2YXp2Mm9HbGtTYXVQYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZGRzdGciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YToyOntpOjA7czoxMDoiX29sZF9pbnB1dCI7aToxO3M6NjoiZXJyb3JzIjt9czozOiJuZXciO2E6MDp7fX1zOjEwOiJfb2xkX2lucHV0IjthOjA6e31zOjY6ImVycm9ycyI7TzozMToiSWxsdW1pbmF0ZVxTdXBwb3J0XFZpZXdFcnJvckJhZyI6MTp7czo3OiIAKgBiYWdzIjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XE1lc3NhZ2VCYWciOjI6e3M6MTE6IgAqAG1lc3NhZ2VzIjthOjU6e3M6Mzoibm9tIjthOjE6e2k6MDtzOjI2OiJUaGUgbm9tIGZpZWxkIGlzIHJlcXVpcmVkLiI7fXM6NToiZW1haWwiO2E6MTp7aTowO3M6Mjg6IlRoZSBlbWFpbCBmaWVsZCBpcyByZXF1aXJlZC4iO31zOjM6InRlbCI7YToxOntpOjA7czoyNjoiVGhlIHRlbCBmaWVsZCBpcyByZXF1aXJlZC4iO31zOjM6InBzdyI7YToxOntpOjA7czoyNjoiVGhlIHBzdyBmaWVsZCBpcyByZXF1aXJlZC4iO31zOjM6ImNpbiI7YToxOntpOjA7czoyNjoiVGhlIGNpbiBmaWVsZCBpcyByZXF1aXJlZC4iO319czo5OiIAKgBmb3JtYXQiO3M6ODoiOm1lc3NhZ2UiO319fX0=', 1735762205),
('kKPuOMy3NmGfGpVo2QG9AsTpQC7NjqCBQ5rzENFO', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidktDbHlYellEcHkzcExrUlRwbGxjZTRENEpPSXNXb1gzMGczbnU0biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1735818703),
('ME97AQMovXl5KlmXWlvujh5SpuUqDoVn0pR1vPgQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmNrbldaaFljNlN5VUlKMlBPZzBSb0VRYVQ0VHZ1M211ekpjMU9wOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736703697);

-- --------------------------------------------------------

--
-- Table structure for table `stagiaires`
--

CREATE TABLE `stagiaires` (
  `CIN` varchar(20) NOT NULL,
  `StagiaireName` varchar(255) NOT NULL,
  `Ville` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Adresse` text,
  `CV` text,
  `Profile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Phone` varchar(20) DEFAULT NULL,
  `OFPPTMail` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `ExperienceId` int DEFAULT NULL,
  `DiplomeId` int DEFAULT NULL,
  `LangueId` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Photo` text,
  `id` int NOT NULL,
  `MotivationLetter` text,
  `Competences` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stagiaires`
--

INSERT INTO `stagiaires` (`CIN`, `StagiaireName`, `Ville`, `Adresse`, `CV`, `Profile`, `Phone`, `OFPPTMail`, `Password`, `ExperienceId`, `DiplomeId`, `LangueId`, `created_at`, `updated_at`, `Photo`, `id`, `MotivationLetter`, `Competences`) VALUES
('BB678901', 'Youssef Benkacem', 'Casablanca', '45 Avenue Mohammed V', 'licence_informatique_0.pdf', 'passionnée par les technologies modernes et la création de solutions innovantes. Elle aime apprendre de nouvelles compétences et explorer des projets qui impactent positivement son environnement.', '0682146720', 'YoussefBENKACEM@ofppt-edu.ma', '$2y$12$1eI51QI519/nay4Fk.gP.uo2sUHAj5KMiD7tHbCwrRJb5MDuDScaG', NULL, NULL, NULL, '2025-01-21 09:03:16', '2025-01-21 09:33:18', 'candida3.webp', 24, 'licence_informatique_0.pdf', NULL),
('CIN001', 'John Doe', 'Beni Mellal', '123 Street', 'cv1.pdf', 'Profile1', '1234567890', 'john.doe@ofppt.com', 'password123', 1, 1, 1, '2025-01-03 15:30:23', '2025-01-03 15:31:10', 'candida3.webp', 1, NULL, NULL),
('CIN002', 'Jane Smith', 'Marrakech', '456 Avenue', 'cv2.pdf', 'Profile2', '0987654321', 'jane.smith@ofppt.com', 'password456', 2, 2, 2, '2025-01-03 15:30:23', '2025-01-03 15:31:10', 'candida3.webp', 2, NULL, NULL),
('CIN003', 'Ahmed Ali', 'Casablanca', '789 Boulevard', 'cv3.pdf', 'Profile3', '1122334455', 'ahmed.ali@ofppt.com', 'password789', 3, 3, 3, '2025-01-03 15:30:23', '2025-01-03 15:31:10', 'candida3.webp', 3, NULL, NULL),
('CIN004', 'Laila Ben', 'Rabat', '101 Road', 'cv4.pdf', 'Profile4', '6677889900', 'laila.ben@ofppt.com', 'password101', 4, 4, 4, '2025-01-03 15:30:23', '2025-01-03 15:31:10', 'candida3.webp', 4, NULL, NULL),
('CIN005', 'Mohammed Zaki', 'Fes', '202 Circle', 'cv5.pdf', 'Profile5', '5566778899', 'mohammed.zaki@ofppt.com', 'password202', 5, 5, 5, '2025-01-03 15:30:23', '2025-01-03 15:31:10', 'candida3.webp', 5, NULL, NULL),
('CIN006', 'Sara Imane', 'Tangier', '303 Lane', 'cv6.pdf', 'Profile6', '3344556677', 'sara.imane@ofppt.com', 'password303', 6, 6, 6, '2025-01-03 15:30:23', '2025-01-03 15:31:10', 'candida3.webp', 6, NULL, NULL),
('CIN007', 'Yassine Fati', 'Agadir', '404 Street', 'cv7.pdf', 'Profile7', '2233445566', 'yassine.fati@ofppt.com', 'password404', 7, 7, 7, '2025-01-03 15:30:23', '2025-01-03 15:31:10', 'candida3.webp', 7, NULL, NULL),
('CIN008', 'Mouna Ayoub', 'Essaouira', '505 Avenue', 'cv8.pdf', 'Profile8', '4455667788', 'mouna.ayoub@ofppt.com', 'password505', 8, 8, 8, '2025-01-03 15:30:23', '2025-01-03 15:31:10', 'candida3.webp', 8, NULL, NULL),
('CIN009', 'Omar Khalid', 'Meknes', '606 Road', 'cv9.pdf', 'Profile9', '5566778899', 'omar.khalid@ofppt.com', 'password606', 9, 9, 9, '2025-01-03 15:30:23', '2025-01-03 15:31:10', 'candida3.webp', 9, NULL, NULL),
('CIN010', 'Rachid Idrissi', 'Oujda', '707 Lane12', 'Coursera Marketing.pdf', 'Passionné par l\'économie et les nouvelles\ntechnologies, je suis à la recherche d\'une filière qui\nfusionne ces deux domaines afin d\'approfondir mes\nconnaissances et de contribuer de manière innovante\nà créer de la valeur ajoutée au sein de ma\ncommunauté. Je suis convaincu que la synergie de ces\ndeux disciplines constitue la clé pour comprendre et\nrésoudre rapidement des problèmes complexes.', '6677889902', 'rachid.idrissi@ofppt-edu.ma', '$2y$12$vfBRNmuwlN78cnbSw6D2JOMnvFLEXRdw/.GJSM.Wu3BMnnB2gDYwO', 10, 10, 10, '2025-01-03 15:30:23', '2025-01-20 13:38:10', 'candida3.webp', 10, 'Coursera Marketing.pdf', '[\"zdzd\", \"zdzdz\", \"zdzdzzdzd\"]'),
('IC124857', 'Sipou Sanaa', 'Beni Mellal', 'oulad hemdan 23-m', NULL, NULL, '0682143130', 'mustaphanouaman1223@gmail.com', '$2y$12$oed79Oj/leeti8wrvkivGuiqbkJPyWe8pVXVa8/qe3JRMHcoXJPD6', NULL, NULL, NULL, '2025-01-03 14:45:59', '2025-01-03 14:45:59', 'candida1.jpg', 11, NULL, NULL),
('IC143658', 'Mustapha NIAMANE', 'Béni Mellal', 'Oulad Hemdane', 'Coursera Marketing_3.pdf', 'Passionné par les nouvelles technologies et spécialisé en développement\nweb, je suis à la recherche d’opportunités pour approfondir mes compé-\ntences et apporter une contribution significative à des projets innovants.\nGrâce à ma formation en gestion, je suis également capable de comprendre\nles enjeux économiques et stratégiques des entreprises, ce qui me permet\nde proposer des solutions technologiques alignées avec les objectifs commerciaux. Mon objectif est d’utiliser cette combinaison de compétences\npour générer des résultats tangibles et apporter de la valeur ajoutée', '0682143160', '200178415@ofppt-edu.ma', '$2y$12$jAfetKo53nLSKw2ZYX8bi./PqhM4bgvvT4/w05o21x4Qmm/9hUpce', NULL, NULL, NULL, '2025-01-20 19:50:15', '2025-01-20 19:58:49', 'candida3.webp', 23, 'Convocation d\'entretien d\'accompagnement.pdf', NULL),
('ic143967', 'NIAMANE Mustapha', 'Beni Mellal', 'oulad hemdan 23-m', NULL, NULL, '0682143130', 'soukainaniamane147@gmail.com', '$2y$12$pXil.wshOUM5bJz1NNtw0ugmCSimVOBYtfuWNUrLZ6PYxtGW4qEzK', NULL, NULL, NULL, '2025-01-13 17:22:56', '2025-01-13 17:22:56', 'candida2.jpg', 12, NULL, NULL),
('IC148574', 'Mustapha NIAMANE', 'Beni Mellal', 'takadoum beni mellal', NULL, 'Passionné par l\'économie et les nouvelles\ntechnologies, je suis à la recherche d\'une filière qui\nfusionne ces deux domaines afin d\'approfondir mes\nconnaissances et de contribuer de manière innovante\nà créer de la valeur ajoutée au sein de ma\ncommunauté. Je suis convaincu que la synergie de ces\ndeux disciplines constitue la clé pour comprendre et\nrésoudre rapidement des problèmes complexes.', '0682143130', 'mustaphaniamane123@gmail.com', '$2y$12$XG.t3NB62VeSW.z7DGNyHOrzFgq3ovQhvjrxPqQWoZ8jHOoU3/rNe', NULL, NULL, NULL, '2025-01-17 13:40:43', '2025-01-17 14:34:09', 'candida3.webp', 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stgs`
--

CREATE TABLE `stgs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stg_competences`
--

CREATE TABLE `stg_competences` (
  `id` int NOT NULL,
  `name` text,
  `CIN` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stg_competences`
--

INSERT INTO `stg_competences` (`id`, `name`, `CIN`, `created_at`, `updated_at`) VALUES
(1, 'JAVA', 'CIN010', '2025-01-20 16:35:00', '2025-01-20 16:35:00'),
(3, 'Python', 'CIN010', '2025-01-20 15:45:49', '2025-01-20 15:45:49'),
(4, 'Javascript', 'CIN010', '2025-01-20 15:47:29', '2025-01-20 15:47:29'),
(7, 'C++', 'CIN010', '2025-01-20 19:24:51', '2025-01-20 19:24:51'),
(8, 'JAVA', 'IC143658', '2025-01-20 19:59:04', '2025-01-20 19:59:04'),
(9, 'Python', 'IC143658', '2025-01-20 19:59:13', '2025-01-20 19:59:13'),
(10, 'SQL', 'IC143658', '2025-01-20 19:59:21', '2025-01-20 19:59:21'),
(11, 'C++', 'IC143658', '2025-01-20 19:59:31', '2025-01-20 19:59:31'),
(12, 'css', 'BB678901', '2025-01-21 09:16:44', '2025-01-21 09:16:44'),
(13, 'C++', 'BB678901', '2025-01-21 09:33:28', '2025-01-21 09:33:28'),
(14, 'JAVA', 'BB678901', '2025-01-21 09:33:37', '2025-01-21 09:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_users_`
--

CREATE TABLE `_users_` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `candidatures`
--
ALTER TABLE `candidatures`
  ADD PRIMARY KEY (`CandidatureId`),
  ADD KEY `CIN` (`CIN`),
  ADD KEY `OffreId` (`OffreId`);

--
-- Indexes for table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filiereid` (`filiereid`);

--
-- Indexes for table `diplomes`
--
ALTER TABLE `diplomes`
  ADD PRIMARY KEY (`DiplomeId`),
  ADD KEY `fk_diplomes` (`CIN`),
  ADD KEY `fk_secteur_id` (`SecteurID`);

--
-- Indexes for table `entreprises`
--
ALTER TABLE `entreprises`
  ADD PRIMARY KEY (`Identifiant`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `ResponsableId` (`ResponsableId`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`ExperienceId`),
  ADD KEY `fk_experiences_cin` (`CIN`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filieres`
--
ALTER TABLE `filieres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `secteur_id` (`secteur_id`),
  ADD KEY `levelid` (`levelid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `langues`
--
ALTER TABLE `langues`
  ADD PRIMARY KEY (`LangueId`),
  ADD KEY `fk_langues_cin` (`CIN`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offres`
--
ALTER TABLE `offres`
  ADD PRIMARY KEY (`OffreId`),
  ADD KEY `EntrepriseId` (`EntrepriseId`),
  ADD KEY `SecteurId` (`SecteurId`),
  ADD KEY `fk_ofpptdiplomes_id` (`diplomeid`);

--
-- Indexes for table `ofpptdiplomes`
--
ALTER TABLE `ofpptdiplomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `secteurid` (`secteurid`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `responsables`
--
ALTER TABLE `responsables`
  ADD PRIMARY KEY (`ResponsableId`);

--
-- Indexes for table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`SecteurID`);

--
-- Indexes for table `secteurs`
--
ALTER TABLE `secteurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD PRIMARY KEY (`CIN`),
  ADD UNIQUE KEY `OFPPTMail` (`OFPPTMail`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `ExperienceId` (`ExperienceId`),
  ADD KEY `DiplomeId` (`DiplomeId`),
  ADD KEY `LangueId` (`LangueId`);

--
-- Indexes for table `stgs`
--
ALTER TABLE `stgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stg_competences`
--
ALTER TABLE `stg_competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CIN` (`CIN`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `_users_`
--
ALTER TABLE `_users_`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidatures`
--
ALTER TABLE `candidatures`
  MODIFY `CandidatureId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `diplomes`
--
ALTER TABLE `diplomes`
  MODIFY `DiplomeId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `entreprises`
--
ALTER TABLE `entreprises`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `ExperienceId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `langues`
--
ALTER TABLE `langues`
  MODIFY `LangueId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `offres`
--
ALTER TABLE `offres`
  MODIFY `OffreId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ofpptdiplomes`
--
ALTER TABLE `ofpptdiplomes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `responsables`
--
ALTER TABLE `responsables`
  MODIFY `ResponsableId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1478255;

--
-- AUTO_INCREMENT for table `secteur`
--
ALTER TABLE `secteur`
  MODIFY `SecteurID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stagiaires`
--
ALTER TABLE `stagiaires`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `stgs`
--
ALTER TABLE `stgs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stg_competences`
--
ALTER TABLE `stg_competences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_users_`
--
ALTER TABLE `_users_`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidatures`
--
ALTER TABLE `candidatures`
  ADD CONSTRAINT `candidatures_ibfk_1` FOREIGN KEY (`CIN`) REFERENCES `stagiaires` (`CIN`),
  ADD CONSTRAINT `candidatures_ibfk_2` FOREIGN KEY (`OffreId`) REFERENCES `offres` (`OffreId`);

--
-- Constraints for table `competences`
--
ALTER TABLE `competences`
  ADD CONSTRAINT `competences_ibfk_1` FOREIGN KEY (`filiereid`) REFERENCES `filieres` (`id`);

--
-- Constraints for table `diplomes`
--
ALTER TABLE `diplomes`
  ADD CONSTRAINT `diplomes_ibfk_1` FOREIGN KEY (`SecteurID`) REFERENCES `secteur` (`SecteurID`),
  ADD CONSTRAINT `fk_diplomes` FOREIGN KEY (`CIN`) REFERENCES `stagiaires` (`CIN`),
  ADD CONSTRAINT `fk_secteur_id` FOREIGN KEY (`SecteurID`) REFERENCES `secteurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entreprises`
--
ALTER TABLE `entreprises`
  ADD CONSTRAINT `entreprises_ibfk_1` FOREIGN KEY (`ResponsableId`) REFERENCES `responsables` (`ResponsableId`);

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `fk_experiences_cin` FOREIGN KEY (`CIN`) REFERENCES `stagiaires` (`CIN`);

--
-- Constraints for table `filieres`
--
ALTER TABLE `filieres`
  ADD CONSTRAINT `filieres_ibfk_1` FOREIGN KEY (`secteur_id`) REFERENCES `secteurs` (`id`),
  ADD CONSTRAINT `filieres_ibfk_2` FOREIGN KEY (`levelid`) REFERENCES `levels` (`id`);

--
-- Constraints for table `langues`
--
ALTER TABLE `langues`
  ADD CONSTRAINT `fk_langues_cin` FOREIGN KEY (`CIN`) REFERENCES `stagiaires` (`CIN`);

--
-- Constraints for table `offres`
--
ALTER TABLE `offres`
  ADD CONSTRAINT `fk_ofpptdiplomes_id` FOREIGN KEY (`diplomeid`) REFERENCES `ofpptdiplomes` (`id`),
  ADD CONSTRAINT `offres_ibfk_1` FOREIGN KEY (`EntrepriseId`) REFERENCES `entreprises` (`Identifiant`),
  ADD CONSTRAINT `offres_ibfk_2` FOREIGN KEY (`SecteurId`) REFERENCES `secteur` (`SecteurID`);

--
-- Constraints for table `ofpptdiplomes`
--
ALTER TABLE `ofpptdiplomes`
  ADD CONSTRAINT `ofpptdiplomes_ibfk_1` FOREIGN KEY (`secteurid`) REFERENCES `secteurs` (`id`);

--
-- Constraints for table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD CONSTRAINT `stagiaires_ibfk_1` FOREIGN KEY (`ExperienceId`) REFERENCES `experiences` (`ExperienceId`),
  ADD CONSTRAINT `stagiaires_ibfk_2` FOREIGN KEY (`DiplomeId`) REFERENCES `diplomes` (`DiplomeId`),
  ADD CONSTRAINT `stagiaires_ibfk_3` FOREIGN KEY (`LangueId`) REFERENCES `langues` (`LangueId`);

--
-- Constraints for table `stg_competences`
--
ALTER TABLE `stg_competences`
  ADD CONSTRAINT `stg_competences_ibfk_1` FOREIGN KEY (`CIN`) REFERENCES `stagiaires` (`CIN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

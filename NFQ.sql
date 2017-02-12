-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2017 at 09:56 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NFQ`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `pavadinimas` varchar(87) CHARACTER SET utf8 DEFAULT NULL,
  `autorius` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `leidimo_metai` int(4) DEFAULT NULL,
  `zanras` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`pavadinimas`, `autorius`, `leidimo_metai`, `zanras`, `id`) VALUES
('Molecular Breeding and Nutritional Aspects of Buckwheat', 'Academic Press', 2016, 'eBook - Agricultural, Biological, and Food Sciences 2017', 1),
('American Trypanosomiasis Chagas Disease (Second Edition)', 'Elsevier', 2017, 'eBook - Biochemistry, Genetics and Molecular Biology 2017', 2),
('Advanced and Emerging Polybenzoxazine Science and Technology', 'Elsevier', 2017, 'eBook - Chemical Engineering 2017', 3),
('Solar Energy Desalination Technology', 'Elsevier', 2017, 'eBook - Chemical Engineering 2017', 4),
('Deep Learning for Medical Image Analysis', 'Academic Press', 2017, 'eBook - Computer Science 2017', 5),
('Integrating Emergency Management and Disaster Behavioral Health', 'Butterworth-Heinemann', 2017, 'eBook - Earth and Planetary Sciences 2017', 6),
('Shale Gas', 'Elsevier', 2017, 'eBook - Earth and Planetary Sciences 2017', 7),
('Rheology (Third Edition)', 'ChemTec Publishing', 2017, 'eBook - Engineering 2017', 8),
('Environmental Management', 'Butterworth-Heinemann', 2017, 'eBook - Environmental Science 2017', 9),
('The China Business Model', 'Chandos Publishing', 2017, 'eBook - Finance 2017', 10),
('Forensic Investigations', 'Academic Press', 2017, 'eBook - Forensics and Security 2017', 11),
('The Manager''s Handbook for Corporate Security (Second Edition)', 'Butterworth-Heinemann', 2017, 'eBook - Forensics and Security 2017', 12),
('Sports Travel Security', 'Butterworth-Heinemann', 2017, 'eBook - Forensics and Security 2017', 13),
('Riemannian Submersions, Riemannian Maps in Hermitian Geometry, and their Applications', 'Academic Press', 2017, 'eBook - Mathematics 2017', 14),
('The Partition Method for a Power Series Expansion', 'Academic Press', 2017, 'eBook - Mathematics 2017', 15),
('Sleep and Neurologic Disease', 'Academic Press', 2017, 'eBook - Neuroscience 2017', 16),
('Applied Underwater Acoustics', 'Elsevier', 2017, 'eBook - Physics and Astronomy 2017', 17),
('Presenting an Effective and Dynamic Technical Paper', 'Academic Press', 2016, 'eBook - Biochemistry, Genetics and Molecular Biology 2017', 18),
('Discovery and Development of Antidiabetic Agents from Natural Products', 'Elsevier', 2017, 'eBook - Chemistry 2017', 19),
('Practical Petroleum Geochemistry for Exploration and Production', 'Elsevier', 2017, 'eBook - Earth and Planetary Sciences 2017', 20),
('Social Network Analysis of Disaster Response, Recovery, and Adaptation', 'Butterworth-Heinemann', 2017, 'eBook - Earth and Planetary Sciences 2017', 21),
('Introduction to Volcanic Seismology (Third Edition)', 'Elsevier', 2017, 'eBook - Earth and Planetary Sciences 2017', 22),
('Advances in Semiconductor Nanostructures', 'Elsevier', 2017, 'eBook - Physics and Astronomy 2017', 23),
('Genetics and Evolution of Infectious Diseases (Second Edition)', 'Elsevier', 2017, 'eBook - Biochemistry, Genetics and Molecular Biology 2017', 24),
('Materials Under Extreme Conditions', 'Elsevier', 2017, 'eBook - Chemical Engineering 2017', 25),
('Securing the Internet of Things', 'Syngress', 2017, 'eBook - Computer Science 2017', 26),
('Geomorphology and Volcanology of Costa Rica', 'Elsevier', 2017, 'eBook - Earth and Planetary Sciences 2017', 27),
('Fundamentals and Applications of Supercritical Carbon Dioxide (sCO₂) Based Power Cycles', 'Woodhead Publishing', 2017, 'eBook - Energy 2017', 28),
('Human Recognition in Unconstrained Environments', 'Academic Press', 2017, 'eBook - Engineering 2017', 29),
('Leadership and Management of Machining', 'Hanser', 2018, 'eBook - Engineering 2017', 30),
('Methods in Stream Ecology, Volume 1 (Third Edition)', 'Academic Press', 2017, 'eBook - Environmental Science 2017', 31),
('Nanofiber Composites for Biomedical Applications', 'Woodhead Publishing', 2017, 'eBook - Materials Science 2017', 32),
('Biomechanics of Tendons and Ligaments', 'Woodhead Publishing', 2017, 'eBook - Materials Science 2017', 33),
('Developments in Surface Contamination and Cleaning: Methods for Surface Cleaning', 'William Andrew Publishing', 2017, 'eBook - Materials Science 2017', 34),
('Nanotechnology and Functional Materials for Engineers', 'Elsevier', 2017, 'eBook - Materials Science 2017', 35),
('Uncertainties in GPS Positioning', 'Academic Press', 2017, 'eBook - Mathematics 2017', 36),
('New Approaches of Protein Function Prediction from Protein Interaction Networks', 'Academic Press', 2017, 'eBook - Mathematics 2017', 37),
('Innovative Neuromodulation', 'Academic Press', 2017, 'eBook - Neuroscience 2017', 38),
('Medicinal Spices and Vegetables from Africa', 'Academic Press', 2017, 'eBook - Pharmacology, Toxicology and Pharmaceutical Science 2017', 39),
('Serum Pharmacochemistry of Traditional Chinese Medicine', 'Academic Press', 2017, 'eBook - Pharmacology, Toxicology and Pharmaceutical Science 2017', 40),
('Scholarly Communication at the Crossroads in China', 'Chandos Publishing', 2017, 'eBook - Social Sciences 2017', 41),
('Neuropsychiatric Disorders and Epigenetics', 'Academic Press', 2017, 'eBook - Biochemistry, Genetics and Molecular Biology 2017', 42),
('Green Construction Project Management and Cost Oversight', 'Architectural Press', 2010, 'eBook - Engineering 2017', 43),
('{Progress in Heterocyclic Chemistry, Volume 28}', 'Elsevier', 2016, 'eBook - Chemistry 2017', 44),
('High-Throughput Formulation Development of Biopharmaceuticals', 'Woodhead Publishing', 2015, 'eBook - Biochemistry, Genetics and Molecular Biology 2017', 45),
('Cereal Grains (Second Edition)', 'Woodhead Publishing', 2017, 'eBook - Agricultural, Biological, and Food Sciences 2017', 46),
('The Teeth of Non-Mammalian Vertebrates', 'Academic Press', 2017, 'eBook - Agricultural, Biological, and Food Sciences 2017', 47),
('Insect Pests of Millets', 'Academic Press', 2017, 'eBook - Agricultural, Biological, and Food Sciences 2017', 48),
('The Coconut', 'Academic Press', 2017, 'eBook - Agricultural, Biological, and Food Sciences 2017', 49),
('Congenital and Acquired Bone Marrow Failure', 'Elsevier', 2017, 'eBook - Biomedical Science and Medicine 2017', 50),
('Cushing''s Disease', 'Academic Press', 2017, 'eBook - Biomedical Science and Medicine 2017', 51),
('E-Health Two-Sided Markets', 'Academic Press', 2017, 'eBook - Biomedical Science and Medicine 2017', 52),
('Solid Fuels and Heavy Hydrocarbon Liquids (Second Edition)', 'Elsevier', 2017, 'eBook - Chemical Engineering 2017', 53),
('Process Plant Layout (Second Edition)', 'Butterworth-Heinemann', 2017, 'eBook - Chemical Engineering 2017', 54),
('Life-Cycle Assessment of Biorefineries', 'Elsevier', 2017, 'eBook - Chemical Engineering 2017', 55),
('Modern Synthesis Processes and Reactivity of Fluorinated Compounds', 'Elsevier', 2017, 'eBook - Chemistry 2017', 56),
('FTTx Networks', 'Morgan Kaufmann', 2016, 'eBook - Computer Science 2017', 57),
('Advances in GPU Research and Practice', 'Morgan Kaufmann', 2017, 'eBook - Computer Science 2017', 58),
('Network Storage', 'Morgan Kaufmann', 2017, 'eBook - Computer Science 2017', 59),
('Software Defined Networks (Second Edition)', 'Morgan Kaufmann', 2017, 'eBook - Computer Science 2017', 60),
('Federal Cloud Computing (Second Edition)', 'Syngress', 2017, 'eBook - Computer Science 2017', 61),
('Clean Energy for Sustainable Development', 'Academic Press', 2017, 'eBook - Energy 2017', 62),
('Energy Positive Neighborhoods and Smart Energy Districts', 'Academic Press', 2017, 'eBook - Energy 2017', 63),
('Cost-Effective Energy Efficient Building Retrofitting', 'Woodhead Publishing', 2017, 'eBook - Engineering 2017', 64),
('Computing and Visualization for Intravascular Imaging and Computer-Assisted Stenting', 'Academic Press', 2017, 'eBook - Engineering 2017', 65),
('The Wine Value Chain in China', 'Chandos Publishing', 2017, 'eBook - Finance 2017', 66);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

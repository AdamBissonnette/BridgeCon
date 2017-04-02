-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 01, 2017 at 04:36 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE `award` (
  `award_id` int(11) NOT NULL,
  `award_title` varchar(100) NOT NULL,
  `award_genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`award_id`, `award_title`, `award_genre_id`) VALUES
(1, 'AC 01 Best Canadian Aircraft', 1),
(2, 'AC 02 Best Allied Aircraft WW2', 1),
(3, 'AC 03 Best Axis Aircraft WW2', 1),
(4, 'AC 04 Best Pre-WW2 Aircraft', 1),
(5, 'AC 05 Best Civilian / Commercial Aircraft', 1),
(6, 'AC 06 Best Military Prop Aircraft', 1),
(7, 'AC 07 Best Military Jet Aircraft', 1),
(8, 'AC 08 Best Aircraft w/ Specialized Paint Scheme', 1),
(9, 'AC 09 Best Helicopter / Rotary Wing Aircraft', 1),
(10, 'AC 10 Best Overall Aircraft', 1),
(11, 'AT 01 Best Customized Car', 2),
(12, 'AT 02 Best Retro-Stock', 2),
(13, 'AT 03 Best Pre-1935 Vehicle', 2),
(14, 'AT 04 Best Light Truck 2-Axle', 2),
(15, 'AT 05 Best Heavy Truck 3-Axle Or More', 2),
(16, 'AT 06 Best Stock Car', 2),
(17, 'AT 07 Best Drag Car', 2),
(18, 'AT 08 Best Competition Vehicle', 2),
(19, 'AT 09 Best Factory Stock', 2),
(20, 'AT 10 Best Rat Rod', 2),
(21, 'AT 11 Best Motorcycle', 2),
(22, 'AT 12 Best Overall Automotive', 2),
(23, 'AR 01 Best Military Support Vehicle', 3),
(24, 'AR 02 Best Pre 1945 Allied Military Vehicle', 3),
(25, 'AR 03 Best Pre 1945 Axis Military Vehicle', 3),
(26, 'AR 04 Best Post 1945 Military Vehicle', 3),
(27, 'AR 05 Best Canadian Armour', 3),
(28, 'AR 06 Best Overall Armour', 3),
(29, 'AR 07 Best Armour Conversion / Multimedia', 3),
(30, 'SK 01 Best Automotive Finish', 4),
(31, 'SK 02 Best Aircraft Finish', 4),
(32, 'SK 03 Best Armour Finish', 4),
(33, 'SK 04 Best Finish - Junior', 4),
(34, 'SK 05 Best Scratch Build / Major Conversion', 4),
(35, 'WC 01 Submarines', 5),
(36, 'WC 02 Surface Vessels', 5),
(37, 'WC 03 Sail / Oar Powered', 5),
(38, 'SF 01 Real Rocket / Spacecraft', 11),
(39, 'SF 02 Fictitious Rockets / Spacecraft', 11),
(40, 'SF 03 Gundams / Robots / Fighting Suits', 11),
(41, 'SF 04 Wargame', 11),
(42, 'OT 01 Best Diorama / Vignette', 6),
(43, 'OT 02 Best Agriculture Equipment', 6),
(44, 'OT 03 Best Construction-Related Entry', 6),
(45, 'OT 04 Most Imaginative Entry', 6),
(46, 'FI 01 Most Lifelike', 7),
(47, 'FI 02 Fantasy / Sci-Fi', 7),
(48, 'FI 03 Busts', 7),
(49, 'FI 04 Creatures / Anime / Cartoon', 7),
(50, 'MO 01 Extra Mile Award', 8),
(51, 'MO 02 Most Outstanding Junior - Under 12 Yrs', 8),
(52, 'MO 03 Most Outstanding Junior - 13-17 Yrs', 8),
(53, 'MO 04 Most Outstanding General Level Entry', 8),
(54, 'MO 05 Most Outstanding Advanced Level Entry', 8),
(55, 'MO 06 Best Of Show', 8),
(56, 'MO 07 People\'s Choice', 8),
(57, 'JR 01 Best Junior Aircraft Modeler - Under 12 Yrs', 9),
(58, 'JR 02 Best Junior Aircraft Modeler - 13-17 Yrs', 9),
(59, 'JR 03 Best Junior Armour Modeler - Under 12 Yrs', 9),
(60, 'JR 04 Best Junior Armour Modeler - 13-17 Yrs', 9),
(61, 'JR 05 Best Junior Military Vehicle Modeler - Under 12 Yrs', 9),
(62, 'JR 06 Best Junior Military Vehicle Modeler - 13-17 Yrs', 9),
(63, 'JR 07 Best Junior Civilian Automobile Modeler - Under 12 Yrs', 9),
(64, 'JR 08 Best Junior Civilian Automobile Modeler - 13-17 Yrs', 9),
(65, 'JR 09 Best Junior Figure - Under 12 Yrs', 9),
(66, 'JR 10 Best Junior Figure - 13-17 Yrs', 9),
(67, 'JR 11 Best Junior Ship - Under 12 Yrs', 9),
(68, 'JR 12 Best Junior Ship - 13-17 Yrs', 9),
(69, 'JR 13 Best Junior Creature - Under 12 Yrs', 9),
(70, 'JR 14 Best Junior Creature - 13-17 Yrs', 9),
(71, 'MI 01 Collections / Group Builds', 10);

-- --------------------------------------------------------

--
-- Table structure for table `award_event`
--

CREATE TABLE `award_event` (
  `award_event_id` int(11) NOT NULL,
  `award_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `award_sponsor_id` int(11) NOT NULL,
  `exhibit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `award_genre`
--

CREATE TABLE `award_genre` (
  `award_genre_id` int(11) NOT NULL,
  `award_genre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award_genre`
--

INSERT INTO `award_genre` (`award_genre_id`, `award_genre`) VALUES
(1, 'Aircraft'),
(2, 'Automotive'),
(3, 'Armour'),
(4, 'Skills'),
(5, 'Watercraft / Ship'),
(6, 'Other'),
(7, 'Figure'),
(8, 'Most Outstanding'),
(9, 'Junior'),
(10, 'Miscellaneous'),
(11, 'Space / Science Fiction / Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `award_sponsor`
--

CREATE TABLE `award_sponsor` (
  `award_sponsor_id` int(11) NOT NULL,
  `award_sponsor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award_sponsor`
--

INSERT INTO `award_sponsor` (`award_sponsor_id`, `award_sponsor`) VALUES
(1, 'Science of Makeup Saskatchewan'),
(2, 'Russ Isenger'),
(3, 'Cam Tetrault'),
(4, 'Jose & Bob Aaberg'),
(5, 'Wayne & Maureen Wilson'),
(6, 'McGill\'s Industrial Service'),
(7, 'Dave Deback'),
(8, 'Regina Scale Modelers'),
(9, 'Raymond Muskowec'),
(10, 'Josh Underhill'),
(11, 'Auto Clearing'),
(12, 'Wes Braid'),
(13, 'Mike Reid'),
(14, 'Jubilee Ford'),
(15, 'Dave Hill'),
(16, 'Hritzuk Holdings Ltd.'),
(17, 'Bob Henderson'),
(18, 'Logan Eden'),
(19, 'Allan Luciuk'),
(20, 'TimberStone Distribution Ltd.'),
(21, 'Saskatoon Water Sports'),
(22, 'Dave Newhouse'),
(23, 'Greg Burke'),
(24, 'Dragon\'s Den'),
(25, 'Shane Armstrong'),
(26, 'Susan & Wayne Halabura'),
(27, 'Unique Collision Centre'),
(28, 'Prarie Pet Mobile Vetrinary'),
(29, 'Barbara Klassen'),
(30, 'Express Hobbies Saskatoon'),
(31, 'WEFF Holdings'),
(32, 'Pure Drinking Water'),
(33, 'J & P Hobbies');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class`) VALUES
(1, 'Junior'),
(2, 'General'),
(3, 'Advanced');

-- --------------------------------------------------------

--
-- Table structure for table `contestant`
--

CREATE TABLE `contestant` (
  `contestant_id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `city` varchar(35) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `postal_code` char(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `contestant_disqualified` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contestant`
--

INSERT INTO `contestant` (`contestant_id`, `first_name`, `last_name`, `address`, `city`, `province_id`, `postal_code`, `country_id`, `phone_number`, `email`, `contestant_disqualified`) VALUES
(1, 'Ray', 'Schmidt', 'PO Box 225', 'Prud\'homme', 2, 'S0K 3K0', 2, '(306) 654-9113', 'h.ray.schmidt@gmail.com', 'No'),
(2, 'Kayne', 'Schmidt', 'PO Box 225', 'Prud\'homme', 2, 'S0K 3K0', 2, '(306) 654-9113', '', 'No'),
(3, 'Wolf', 'Schmidt', 'PO Box 225', 'Prud\'homme', 2, 'S0K 3K0', 2, '(306) 654-9113', '', 'No'),
(4, 'Don', 'Dokken', '123 Main Street', 'Saskatoon', 2, 'S7L 7A4', 2, '', '', 'No'),
(5, 'Sheryl', 'Schmidt', '49 Helena Street', 'Prud\'homme', 2, 'S0K 3K0', 2, '', '', 'No'),
(6, 'Cam', 'Tetrault', '', '', 1, '', 1, '', '', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `contestant_event`
--

CREATE TABLE `contestant_event` (
  `contestant_event_id` int(11) NOT NULL,
  `contestant_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `contestant_number` int(11) NOT NULL,
  `contestant_age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contestant_event`
--

INSERT INTO `contestant_event` (`contestant_event_id`, `contestant_id`, `event_id`, `contestant_number`, `contestant_age`) VALUES
(1, 1, 1, 1000, 0),
(2, 2, 1, 1002, 13),
(3, 3, 1, 1004, 14),
(4, 4, 1, 1009, 0),
(5, 4, 1, 1009, 0),
(6, 5, 1, 1010, 0),
(7, 6, 1, 1015, 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, ''),
(2, 'Canada'),
(3, 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `detail_level`
--

CREATE TABLE `detail_level` (
  `detail_level_id` int(11) NOT NULL,
  `detail_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_level`
--

INSERT INTO `detail_level` (`detail_level_id`, `detail_level`) VALUES
(1, 'Stock'),
(2, 'Detailed'),
(3, 'Scratchbuilt');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(45) NOT NULL,
  `event_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_name`, `event_year`) VALUES
(1, 'BridgeCon 17', 2017);

-- --------------------------------------------------------

--
-- Table structure for table `exhibit`
--

CREATE TABLE `exhibit` (
  `exhibit_id` int(11) NOT NULL,
  `exhibit_number` int(11) NOT NULL,
  `exhibit_title` varchar(50) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `detail_level_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `contestant_event_id` int(11) NOT NULL,
  `exhibit_disqualified` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exhibit`
--

INSERT INTO `exhibit` (`exhibit_id`, `exhibit_number`, `exhibit_title`, `scale_id`, `manufacturer_id`, `detail_level_id`, `class_id`, `contestant_event_id`, `exhibit_disqualified`) VALUES
(1, 100, 'Lamborghini Gallardo', 1, 8, 1, 2, 1, 'No'),
(3, 101, '2016 Chevy Camaro', 1, 1, 1, 2, 2, 'No'),
(4, 105, 'Old School Van', 1, 1, 1, 2, 4, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `judge`
--

CREATE TABLE `judge` (
  `judge_id` int(11) NOT NULL,
  `judge_number` int(11) NOT NULL,
  `contestant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `judge`
--

INSERT INTO `judge` (`judge_id`, `judge_number`, `contestant_id`) VALUES
(1, 1, 6),
(2, 2, 2),
(3, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `manufacturer_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `manufacturer_name`) VALUES
(1, 'Revell'),
(2, 'Eduard'),
(3, 'Hasegawa'),
(4, 'Airfix'),
(5, 'Fujimi'),
(6, 'Aoshima'),
(7, 'Italeri'),
(8, 'Tamiya'),
(9, 'Monogram'),
(10, 'Dragon'),
(11, 'Trumpeter'),
(12, 'Bandai'),
(13, 'Academy'),
(14, 'AMT/Ertl'),
(15, 'Revell-Monogram'),
(16, 'Moebius');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` int(11) NOT NULL,
  `province_abbr` char(3) NOT NULL,
  `province_name` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `province_abbr`, `province_name`) VALUES
(1, '', ''),
(2, 'SK', 'Saskatchewan'),
(3, 'AB', 'Alberta'),
(4, 'MB', 'Manitoba'),
(5, 'BC', 'British Columbia');

-- --------------------------------------------------------

--
-- Table structure for table `scale`
--

CREATE TABLE `scale` (
  `scale_id` int(11) NOT NULL,
  `scale` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scale`
--

INSERT INTO `scale` (`scale_id`, `scale`) VALUES
(1, '1/25'),
(2, '1/24'),
(3, '1/48'),
(4, '1/72'),
(5, '1/35'),
(6, '1/12'),
(7, '1/20'),
(8, '1/8'),
(9, '1/16'),
(10, '1/100'),
(11, '1/32'),
(12, 'unknown'),
(13, '1/144'),
(14, '1/350');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `score_id` int(11) NOT NULL,
  `exhibit_id` int(11) NOT NULL,
  `construction_score` int(11) NOT NULL,
  `finish_score` int(11) NOT NULL,
  `accuracy_score` int(11) NOT NULL,
  `intangible_score` int(11) NOT NULL,
  `total_score` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`score_id`, `exhibit_id`, `construction_score`, `finish_score`, `accuracy_score`, `intangible_score`, `total_score`, `judge_id`) VALUES
(1, 1, 4, 4, 0, 1, 9, 1),
(2, 1, 3, 5, 0, 0, 8, 1),
(3, 1, 2, 3, 0, 0, 5, 1),
(4, 1, 5, 5, 1, 1, 12, 1),
(5, 1, 0, 0, 0, 0, 0, 1),
(7, 3, 4, 5, 1, 0, 10, 2),
(8, 4, 5, 5, 0, 1, 11, 3),
(9, 4, 3, 4, 0, 0, 7, 2),
(10, 4, 3, 3, 0, 0, 6, 3),
(11, 3, 2, 2, 1, 1, 6, 3),
(12, 3, 2, 2, 1, 1, 6, 3),
(13, 3, 2, 2, 1, 1, 6, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`award_id`),
  ADD KEY `award_genre_id` (`award_genre_id`);

--
-- Indexes for table `award_event`
--
ALTER TABLE `award_event`
  ADD PRIMARY KEY (`award_event_id`),
  ADD KEY `award_id` (`award_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `award_sponsor_id` (`award_sponsor_id`),
  ADD KEY `exhibit_id` (`exhibit_id`);

--
-- Indexes for table `award_genre`
--
ALTER TABLE `award_genre`
  ADD PRIMARY KEY (`award_genre_id`);

--
-- Indexes for table `award_sponsor`
--
ALTER TABLE `award_sponsor`
  ADD PRIMARY KEY (`award_sponsor_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `contestant`
--
ALTER TABLE `contestant`
  ADD PRIMARY KEY (`contestant_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `contestant_event`
--
ALTER TABLE `contestant_event`
  ADD PRIMARY KEY (`contestant_event_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `contestant_id` (`contestant_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `detail_level`
--
ALTER TABLE `detail_level`
  ADD PRIMARY KEY (`detail_level_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `exhibit`
--
ALTER TABLE `exhibit`
  ADD PRIMARY KEY (`exhibit_id`),
  ADD KEY `scale_id` (`scale_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `detail_level_id` (`detail_level_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `contestant_event_id` (`contestant_event_id`);

--
-- Indexes for table `judge`
--
ALTER TABLE `judge`
  ADD PRIMARY KEY (`judge_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `scale`
--
ALTER TABLE `scale`
  ADD PRIMARY KEY (`scale_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`score_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `award`
--
ALTER TABLE `award`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `award_event`
--
ALTER TABLE `award_event`
  MODIFY `award_event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `award_genre`
--
ALTER TABLE `award_genre`
  MODIFY `award_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `award_sponsor`
--
ALTER TABLE `award_sponsor`
  MODIFY `award_sponsor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contestant`
--
ALTER TABLE `contestant`
  MODIFY `contestant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `contestant_event`
--
ALTER TABLE `contestant_event`
  MODIFY `contestant_event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `detail_level`
--
ALTER TABLE `detail_level`
  MODIFY `detail_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exhibit`
--
ALTER TABLE `exhibit`
  MODIFY `exhibit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `judge`
--
ALTER TABLE `judge`
  MODIFY `judge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `scale`
--
ALTER TABLE `scale`
  MODIFY `scale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `award`
--
ALTER TABLE `award`
  ADD CONSTRAINT `award_ibfk_1` FOREIGN KEY (`award_genre_id`) REFERENCES `award_genre` (`award_genre_id`);

--
-- Constraints for table `award_event`
--
ALTER TABLE `award_event`
  ADD CONSTRAINT `award_event_ibfk_1` FOREIGN KEY (`award_id`) REFERENCES `award` (`award_id`),
  ADD CONSTRAINT `award_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  ADD CONSTRAINT `award_event_ibfk_3` FOREIGN KEY (`award_sponsor_id`) REFERENCES `award_sponsor` (`award_sponsor_id`),
  ADD CONSTRAINT `award_event_ibfk_4` FOREIGN KEY (`exhibit_id`) REFERENCES `exhibit` (`exhibit_id`);

--
-- Constraints for table `contestant`
--
ALTER TABLE `contestant`
  ADD CONSTRAINT `contestant_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `contestant_ibfk_2` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`);

--
-- Constraints for table `contestant_event`
--
ALTER TABLE `contestant_event`
  ADD CONSTRAINT `contestant_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  ADD CONSTRAINT `contestant_event_ibfk_3` FOREIGN KEY (`contestant_id`) REFERENCES `contestant` (`contestant_id`);

--
-- Constraints for table `exhibit`
--
ALTER TABLE `exhibit`
  ADD CONSTRAINT `exhibit_ibfk_1` FOREIGN KEY (`scale_id`) REFERENCES `scale` (`scale_id`),
  ADD CONSTRAINT `exhibit_ibfk_2` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`),
  ADD CONSTRAINT `exhibit_ibfk_3` FOREIGN KEY (`detail_level_id`) REFERENCES `detail_level` (`detail_level_id`),
  ADD CONSTRAINT `exhibit_ibfk_4` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `exhibit_ibfk_5` FOREIGN KEY (`contestant_event_id`) REFERENCES `contestant_event` (`contestant_event_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

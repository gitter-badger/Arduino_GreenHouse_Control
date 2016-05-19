-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2016 at 04:22 PM
-- Server version: 5.5.44-0+deb8u1
-- PHP Version: 5.6.20-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tempLog`
--

CREATE TABLE IF NOT EXISTS `tempLog` (
`ID` int(10) NOT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `temperature` int(11) NOT NULL,
  `humidity` int(11) NOT NULL,
  `luminosity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=331392 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tempLog`
--

INSERT INTO `tempLog` (`ID`, `timeStamp`, `temperature`, `humidity`, `luminosity`) VALUES
(331372, '2016-05-19 16:21:49', 21, 46, 25),
(331373, '2016-05-19 16:21:53', 21, 46, 26),
(331374, '2016-05-19 16:21:56', 21, 46, 26),
(331375, '2016-05-19 16:21:59', 21, 46, 26),
(331376, '2016-05-19 16:22:02', 21, 46, 27),
(331377, '2016-05-19 16:22:05', 21, 46, 24),
(331378, '2016-05-19 16:22:08', 21, 46, 26),
(331379, '2016-05-19 16:22:11', 21, 46, 26),
(331380, '2016-05-19 16:22:14', 21, 46, 26),
(331381, '2016-05-19 16:22:17', 21, 46, 26),
(331382, '2016-05-19 16:22:20', 21, 46, 26),
(331383, '2016-05-19 16:22:23', 21, 46, 24),
(331384, '2016-05-19 16:22:26', 21, 46, 26),
(331385, '2016-05-19 16:22:29', 21, 46, 26),
(331386, '2016-05-19 16:22:32', 21, 46, 26),
(331387, '2016-05-19 16:22:36', 21, 46, 24),
(331388, '2016-05-19 16:22:39', 21, 46, 25),
(331389, '2016-05-19 16:22:42', 21, 46, 26),
(331390, '2016-05-19 16:22:45', 21, 46, 25),
(331391, '2016-05-19 16:22:48', 21, 46, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tempLog`
--
ALTER TABLE `tempLog`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tempLog`
--
ALTER TABLE `tempLog`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=331392;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 10:16 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `mini_car`
--

CREATE TABLE `mini_car` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Desc` text DEFAULT NULL,
  `ImageUrl` varchar(100) DEFAULT NULL,
  `cardesc` varchar(255) NOT NULL,
  `carprice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mini_car`
--

INSERT INTO `mini_car` (`ID`, `Name`, `Desc`, `ImageUrl`, `cardesc`, `carprice`) VALUES
(1, 'Mini Cooper 5 DOOR Cooper D\n', '1', 'images/MINI_3.png', 'The Mini Cooper 5 DOOR has 1 Diesel Engine on offer. The Diesel engine is 1496 cc . It is available with Automatic transmission.Depending upon the variant and fuel type the Cooper 5 DOOR has a mileage of 20.7 kmpl & Ground clearance of Cooper 5 DOOR is 14', 'LIVING A FIVE DOOR LIFE? THE MINI 5 DOOR. STARTING FROM $24,790.'),
(2, 'Mini Cooper 3 DOOR', '2', 'images/MINI_5.png', 'Faster, feistier and more fun than ever, the iconic MINI 3-door hatch embodies the essence of high speeds, thrilling low centre-of-gravity handling and exhilarating go-kart feeling. Smart, charismatic with impeccable manners, it\'s like your perfect evenin', 'THE ORIGINAL, REMASTERED. THE MINI 3 DOOR. STARTING FROM $23,490.'),
(3, 'MINI Convertible ', '3', 'images/convertible_mini.png', 'The Mini Clubman has 1 Petrol Engine on offer. The Petrol engine is 1998 cc . ... Depending upon the variant and fuel type the Clubman has a mileage of 13.79 kmpl . The Clubman is a 5 seater 4 cylinder car and has length of 4253mm, width of 1800mm and a w', 'OPEN UP. THE MINI CONVERTIBLE. STARTING FROM $30,090.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mini_car`
--
ALTER TABLE `mini_car`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mini_car`
--
ALTER TABLE `mini_car`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

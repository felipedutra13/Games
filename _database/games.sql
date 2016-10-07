-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Set-2016 às 16:37
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `games`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE `games` (
  `name` varchar(50) NOT NULL,
  `plattform` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `games`
--

INSERT INTO `games` (`name`, `plattform`, `genre`, `status`, `image`) VALUES
('10000000', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/10000000_ios.jpg'),
('Age of Mythology', 'PC', 'Strategy', 'Completed', 'http://howlongtobeat.com/gameimages/225px-Age_of_Mythology_Liner.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

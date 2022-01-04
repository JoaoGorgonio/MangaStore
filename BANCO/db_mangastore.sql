-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Nov-2021 às 07:05
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_mangastore`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto`
--

CREATE TABLE `tb_produto` (
  `cd_produto` int(5) NOT NULL,
  `nm_produto` varchar(80) NOT NULL,
  `qt_volume` int(3) NOT NULL,
  `img_produto` varchar(50) NOT NULL,
  `vl_produto` decimal(5,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_produto`
--

INSERT INTO `tb_produto` (`cd_produto`, `nm_produto`, `qt_volume`, `img_produto`, `vl_produto`) VALUES
(1, 'Ansatsu Kyoushitsu', 1, 'ansatsu-kyoushitsu1', '12'),
(2, 'Bakuman', 1, 'bakuman1', '12'),
(3, 'Bleach', 16, 'bleach16', '12'),
(4, 'Boku no Hero Academia', 25, 'boku-hero25', '12'),
(5, 'Death Note', 6, 'death-note6', '15'),
(6, 'Kimetsu no Yaiba', 10, 'demon-slayer10', '15'),
(7, 'Diamond no Ace', 25, 'diamond-ace25', '20'),
(8, 'Dragon Ball Z', 8, 'dragon-ballz8', '12'),
(9, 'Dr. Stone', 15, 'dr-stone15', '15'),
(10, 'Haikyuu', 1, 'haikyuu1', '12'),
(11, 'Hunter x Hunter', 2, 'hunter-hunter2', '15'),
(12, 'Jujutsu Kaisen', 1, 'jujutsu-kaisen1', '12'),
(13, 'Naruto', 42, 'naruto42', '12'),
(14, 'One Piece', 89, 'one-piece89', '12'),
(15, 'Shokugeki no Souma', 1, 'shokugeki-souma1', '15'),
(16, 'Slam Dunk', 20, 'slam-dunk20', '20'),
(17, 'Spirit Circle', 6, 'spirit-circle6', '30'),
(18, 'Sousei no Onmyouji', 21, 'twin-exorcists21', '30'),
(19, 'Vagabond', 9, 'vagabond9', '30'),
(20, 'Vinland Saga', 3, 'vinland-saga3', '50');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

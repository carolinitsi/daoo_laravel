-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Nov-2022 às 01:25
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_tcc_daoo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `id_de` varchar(200) DEFAULT NULL,
  `id_para` varchar(200) DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `data_mensagem` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `chat`
--

INSERT INTO `chat` (`id_de`, `id_para`, `mensagem`, `data_mensagem`, `id`) VALUES
('16', '7', 'Primeira mensagem', '0000-00-00', 1),
('1', '18', 'Terceira mensagem atraves do chat', '0000-00-00', 8),
('1', '18', 'Terceira mensagem atraves do chat', '0000-00-00', 9),
('1', '18', 'Terceira mensagem atraves do chat', '0000-00-00', 10),
('1', '18', 'Terceira mensagem atraves do chat', '0000-00-00', 11),
('1', '18', 'Terceira mensagem atraves do chat', '0000-00-00', 12),
('1', '16', 'Oie', '0000-00-00', 13),
('1', '16', 'Oie', '0000-00-00', 14),
('16', '1', 'Oi', '0000-00-00', 15),
('1', '16', 'Oie', '0000-00-00', 16),
('1', '16', 'Oie', '0000-00-00', 17),
('16', '1', 'Oi', '0000-00-00', 18),
('16', '1', 'Oi', '0000-00-00', 19),
('16', '1', 'Mesagem teste', '0000-00-00', 20),
('16', '1', 'Mesagem teste', '0000-00-00', 21),
('16', '1', 'mensagem teste 2', '0000-00-00', 22),
('16', '1', 'mensagem teste 2', '0000-00-00', 23),
('16', '1', 'mensagem teste 3', '0000-00-00', 24),
('16', '1', 'mensagem teste 4', '0000-00-00', 25),
('16', '1', 'mensagem teste 4', '0000-00-00', 26),
('1', '16', 'mensagem teste 5', '0000-00-00', 27),
('1', '16', 'mensagem teste 5', '0000-00-00', 28),
('1', '16', 'mensagem teste 5', '0000-00-00', 29),
('1', '16', 'mensagem teste 5', '0000-00-00', 30),
('1', '16', 'Oie', '0000-00-00', 31),
('1', '16', 'Oie', '0000-00-00', 32),
('1', '16', 'Oie', '0000-00-00', 33),
('16', '1', 'Oie teste final', '0000-00-00', 34),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 35),
('16', '1', 'Oie teste final', '0000-00-00', 36),
('16', '1', 'Oie teste final', '0000-00-00', 37),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 38),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 39),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 40),
('16', '16', 'Oie teste final', '0000-00-00', 41),
('16', '1', 'Oie teste final', '0000-00-00', 42),
('16', '1', 'Oie teste final', '0000-00-00', 43),
('16', '1', 'Oie teste final', '0000-00-00', 44),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 45),
('1', '16', 'Segunda mensagem atraves do chaaaaaaaaaaaat', '0000-00-00', 46),
('16', '1', 'testeeee', '0000-00-00', 47),
('1', '16', 'testeeee 2', '0000-00-00', 48),
('16', '1', 'testeeee', '0000-00-00', 49),
('16', '1', 'teste 3', '0000-00-00', 50),
('16', '1', 'teste 3', '0000-00-00', 51),
('1', '16', 'testeeee 2', '0000-00-00', 52),
('16', '1', 'teste 3', '0000-00-00', 53),
('16', '1', 'teste 3', '0000-00-00', 54),
('16', '1', 'teste 4', '0000-00-00', 55),
('1', '16', 'testeeee 2', '0000-00-00', 56),
('1', '16', 'teste 5', '0000-00-00', 57),
('16', '1', 'Oie teste final', '0000-00-00', 58),
('1', '16', 'teste 6', '0000-00-00', 59),
('1', '16', 'teste 6', '0000-00-00', 60),
('1', '16', 'teste 6', '0000-00-00', 61),
('1', '16', 'teste 6', '0000-00-00', 62),
('1', '16', 'teste 6', '0000-00-00', 63),
('1', '16', 'teste 6', '0000-00-00', 64),
('1', '16', 'teste 6', '0000-00-00', 65),
('1', '16', 'teste 6', '0000-00-00', 66),
('1', '16', 'teste 6', '0000-00-00', 67),
('1', '16', 'teste 6', '0000-00-00', 68),
('1', '16', 'teste 6', '0000-00-00', 69),
('1', '16', 'teste 6', '0000-00-00', 70),
('1', '16', 'teste 6', '0000-00-00', 71),
('1', '16', 'teste 6', '0000-00-00', 72),
('1', '16', 'teste 6', '0000-00-00', 73),
('1', '16', 'teste 6', '0000-00-00', 74),
('1', '16', 'teste 6', '0000-00-00', 75),
('1', '16', 'teste 6', '0000-00-00', 76),
('1', '16', 'teste 6', '0000-00-00', 77),
('1', '16', 'teste 6', '0000-00-00', 78),
('1', '16', 'teste 6', '0000-00-00', 79),
('1', '16', 'teste 6', '0000-00-00', 80),
('1', '16', 'teste 6', '0000-00-00', 81),
('1', '16', 'teste 6', '0000-00-00', 82),
('1', '16', 'teste 6', '0000-00-00', 83),
('1', '16', 'teste 6', '0000-00-00', 84),
('1', '16', 'teste 6', '0000-00-00', 85),
('1', '16', 'teste 6', '0000-00-00', 86),
('1', '16', 'teste 6', '0000-00-00', 87),
('1', '16', 'teste 6', '0000-00-00', 88),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 89),
('16', '1', 'Oie teste final', '0000-00-00', 90),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 91),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 92),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 93),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 94),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 95),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 96),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 97),
('16', '1', 'teste 3', '0000-00-00', 98),
('16', '1', 'mensagem teste 4', '0000-00-00', 99),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 100),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 101),
('1', '16', 'Segunda mensagem atraves do chat', '0000-00-00', 102),
('16', '1', 'mensagem teste 4', '0000-00-00', 103),
('16', '1', 'mensagem teste 4', '0000-00-00', 104),
('16', '1', 'mensagem teste 4', '0000-00-00', 105),
('16', '1', 'mensagem teste 4', '0000-00-00', 106),
('16', '1', 'mensagem teste 4', '0000-00-00', 107),
('16', '1', 'mensagem teste 4', '0000-00-00', 108),
('16', '1', 'mensagem teste 4', '0000-00-00', 109),
('16', '1', 'mensagem teste 4', '0000-00-00', 110),
('1', '16', 'este 5', '0000-00-00', 111),
('1', '16', 'este 5', '0000-00-00', 112),
('1', '16', 'este 5', '0000-00-00', 113),
('1', '16', 'este 5', '0000-00-00', 114),
('1', '16', 'este 5', '0000-00-00', 115),
('1', '16', 'este 5', '0000-00-00', 116),
('1', '16', 'este 5', '0000-00-00', 117),
('1', '16', 'este 5', '0000-00-00', 118),
('1', '16', 'este 5', '0000-00-00', 119),
('1', '16', 'este 5', '0000-00-00', 120),
('1', '16', 'este 5', '0000-00-00', 121),
('1', '16', 'este 5', '0000-00-00', 122),
('1', '16', 'este 5', '0000-00-00', 123),
('1', '16', 'este 5', '0000-00-00', 124),
('1', '16', 'este 5', '0000-00-00', 125),
('1', '16', 'este 5', '0000-00-00', 126),
('1', '16', 'este 5', '0000-00-00', 127),
('1', '16', 'este 5', '0000-00-00', 128),
('1', '16', 'este 5', '0000-00-00', 129),
('1', '16', 'este 5', '0000-00-00', 130),
('1', '16', 'este 5', '0000-00-00', 131),
('1', '16', 'este 5', '0000-00-00', 132),
('16', '1', 'mensagem teste 4', '0000-00-00', 133),
('1', '16', 'mensagem teste 5', '0000-00-00', 134),
('1', '18', 'Oi', '0000-00-00', 135),
('1', '16', 'Oi', '0000-00-00', 136),
('1', '16', 'Oi', '0000-00-00', 137),
('1', '16', 'Oi', '0000-00-00', 138),
('1', '16', 'Oi', '0000-00-00', 139),
('1', '16', 'Oi', '0000-00-00', 140),
('1', '16', 'Oi', '0000-00-00', 141),
('1', '16', 'Oi', '0000-00-00', 142),
('1', '16', 'Oi', '0000-00-00', 143),
('1', '16', 'Oi', '0000-00-00', 144),
('1', '16', 'Oi', '0000-00-00', 145),
('1', '16', 'Oi', '0000-00-00', 146),
('1', '16', 'Oi', '0000-00-00', 147),
('1', '16', 'Oi', '0000-00-00', 148),
('1', '16', 'Oi', '0000-00-00', 149),
('1', '16', 'Oi', '0000-00-00', 150),
('1', '16', 'Oi', '0000-00-00', 151),
('1', '16', 'Oi', '0000-00-00', 152),
('1', '16', 'Oi', '0000-00-00', 153),
('1', '16', 'Oi', '0000-00-00', 154),
('1', '16', 'Oi', '0000-00-00', 155),
('1', '16', 'Oi', '0000-00-00', 156),
('1', '16', 'Oi', '0000-00-00', 157),
('1', '18', 'mensagem teste 3', '0000-00-00', 158),
('1', '18', 'mensagem teste 2', '0000-00-00', 159),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 160),
('16', '1', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 161),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 162),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 163),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 164),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 165),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 166),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 167),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 168),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 169),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 170),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 171),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 172),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 173),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 174),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 175),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 176),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 177),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 178),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 179),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 180),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 181),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 182),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 183),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 184),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 185),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 186),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 187),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 188),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 189),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 190),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 191),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 192),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 193),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 194),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 195),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 196),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 197),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 198),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 199),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 200),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 201),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 202),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 203),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 204),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 205),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 206),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 207),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 208),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 209),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 210),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 211),
('1', '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 212),
('16', '1', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 213),
('1', '17', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00', 214),
('1', '3', 'oi', '0000-00-00', 215),
('1', '3', 'oi', '0000-00-00', 216),
('1', '3', 'oi', '0000-00-00', 217),
('1', '3', 'oi', '0000-00-00', 218),
('1', '3', 'oi', '0000-00-00', 219),
('1', '3', 'oi', '0000-00-00', 220),
('1', '3', 'oi', '0000-00-00', 221),
('1', '3', 'oi', '0000-00-00', 222),
('1', '18', 'Quarta mensagem atraves do chat', '0000-00-00', 223),
('16', '1', 'Oi', '0000-00-00', 224),
('5', '3', 'Oie', '0000-00-00', 225),
('1', '16', 'oi', '0000-00-00', 226),
('1', '6', 'oiiii', '0000-00-00', 227),
('1', '6', 'tudo bem?', '0000-00-00', 228),
('1', '16', 'Oie', '0000-00-00', 229),
(NULL, '16', 'Abóbora', '0000-00-00', 230),
('1', '16', 'Abóbora', '0000-00-00', 231);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(5) UNSIGNED NOT NULL,
  `comentario` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `created_at`, `updated_at`) VALUES
(1, 'Que massa!!', NULL, '2022-11-29 03:00:55'),
(2, 'Css3 é muito legal mesmo!', NULL, NULL),
(3, 'Html é uma lingaguem de estilização!', NULL, NULL),
(4, 'Php é mó legal', NULL, NULL),
(5, 'ux é ruin', NULL, NULL),
(7, 'meu comentario no meu post.', NULL, NULL),
(8, 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos', NULL, '2022-11-29 03:02:21'),
(9, 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos', '2022-11-29 02:59:22', '2022-11-29 02:59:56'),
(11, 'meu comentario no meu post.', NULL, NULL),
(12, 'Bacana seu post!', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `likes`
--

CREATE TABLE `likes` (
  `id_like` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `likes`
--

INSERT INTO `likes` (`id_like`, `id_post`, `id_user`) VALUES
(1, 27, 3),
(2, 27, 0),
(3, 26, 0),
(4, 25, 0),
(5, 24, 0),
(6, 23, 0),
(7, 22, 0),
(8, 21, 0),
(9, 27, 0),
(10, 25, 0),
(11, 26, 0),
(12, 24, 0),
(13, 23, 0),
(14, 20, 0),
(15, 22, 0),
(16, 23, 0),
(17, 24, 0),
(18, 25, 0),
(19, 26, 0),
(20, 27, 0),
(21, 27, 1),
(22, 26, 1),
(23, 25, 1),
(24, 29, 1),
(25, 18, 1),
(26, 24, 1),
(27, 23, 1),
(28, 11, 1),
(29, 15, 1),
(30, 16, 1),
(31, 17, 1),
(32, 11, 3),
(33, 15, 3),
(34, 16, 3),
(35, 17, 3),
(36, 18, 3),
(37, 20, 3),
(38, 21, 3),
(39, 22, 3),
(40, 24, 3),
(41, 26, 3),
(42, 29, 3),
(43, 25, 3),
(44, 23, 3),
(45, 30, 5),
(46, 31, 17),
(47, 31, 5),
(48, 29, 5),
(49, 31, 1),
(50, 48, 1),
(51, 49, 1),
(52, 47, 1),
(53, 53, 1),
(54, 52, 1),
(55, 20, 1),
(56, 31, 19),
(57, 30, 19),
(58, 29, 19),
(59, 55, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(5) UNSIGNED NOT NULL,
  `assunto` varchar(255) NOT NULL,
  `post` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `assunto`, `post`, `updated_at`, `created_at`) VALUES
(18, 'Estilizando LI - parte 2', '  A política de execução não é um sistema de segurança que restringe as ações do usuário. Por exemplo, os usuários podem ignorar facilmente uma política digitando o conteúdo do script na linha de comando quando não puderem executar um script. Em vez disso, a política de execução ajuda os usuários a definir regras básicas e impede que eles as violem involuntariamente.  ', NULL, NULL),
(19, 'Google optmize', NULL, '2022-11-29 02:19:56', '2022-11-29 02:19:56'),
(20, 'Estilizando LI - parte 3', 'O elemento HTML (ou a Lista dos Itens de um elemento HTML) é usado para representar um item que faz parte de uma lista. Este item deve estar contido em um elemento pai: uma lista ordenada, uma lista desordenada (), ou um menu (en-US)e representa uma única entidade dessa lista. Em menus e listas desordenadas a relação de itens é exibida, normalmente, usando pontos de marcação (as bolinhas).', NULL, NULL),
(21, 'CSS-Grid', 'CSS Grid Layout introduz um sistema bi-dimensional de grid (literalmente \"grades\") para CSS. Grids podem ser usados para o design de layouts de grandes seções de uma webpage, assim como de pequenos elementos de interface. Esse artigo apresenta o CSS Grid Layout e a terminologia que é parte da especificação  CSS Grid Layout Level 1. As funcionalidades demonstradas neste resumo serão posteriormente explicadas em maiores detalhes nas demais seções desse guia.', NULL, NULL),
(22, 'Html', ' HTML abreviação para a expressão inglesa HyperText Markup Language, que significa: \"Linguagem de Marcação de Hipertexto\" é uma linguagem de marcação utilizada na construção de páginas na Web. Documentos HTML podem ser interpretados por navegadores. A tecnologia é fruto da junção entre os padrões HyTime e SGML. ', NULL, NULL),
(23, 'JavaScript', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(24, 'Banco de dados avaçados - sem imagem', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(25, 'teste post com foto', 'com foto', NULL, NULL),
(26, 'php', 'Oie gente!\r\n\r\n\r\nGlossário\r\nago 22, 2022\r\n\r\nCarlos E.\r\n\r\n8min de leitura\r\n\r\nO Que é PHP? Guia Básico de Programação PHP\r\nO Que é PHP? Guia Básico de Programação PHP\r\nNuma explicação de poucas palavras, PHP é uma linguagem de programação utilizada por programadores e desenvolvedores para construir sites dinâmicos, extensões de integração de aplicações e agilizar no desenvolvimento de um sistema.\r\n\r\nEssa linguagem é mundialmente conhecida e uma das mais utilizadas pela facilidade em aprendê-la, manuseá-la, além de ser compatível com quase todos os sistemas operacionais que existem – o que torna seu custo menor. Neste artigo nós vamos mostrar a importância dessa sigla, além da estrutura e vantagens dessa linguagem.', NULL, NULL),
(27, 'html', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(29, 'html', 'Teste publicação dentro do modal!', NULL, NULL),
(30, 'Php', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n5\r\n	paragraphs\r\n	words\r\n	bytes\r\n	lists\r\n	Start with \'Lorem\r\nipsum dolor sit amet...\'\r\n', NULL, NULL),
(31, 'Sql', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(5) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `profissao` varchar(200) DEFAULT NULL,
  `competencias` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`, `nome`, `profissao`, `competencias`, `created_at`, `updated_at`) VALUES
(1, 'carolini.tsi@gmail.com', 'MTIzNA==', 'Carolini', 'Desenvolvedora Frontend', NULL, NULL, '2022-11-29 01:40:07'),
(3, 'lizy@gmail.com', 'MTIzNA==', 'Lizy', 'Desenvolvedora Backend', 'Php Node.js', NULL, NULL),
(4, 'tais.olliveira333@gmail.com', 'MzMz', 'Tais', 'Front-end', 'Html - CSS - Javascript - Sass', NULL, '2022-11-29 01:59:06'),
(5, 'teste@gmail.com', 'MTIzNA==', 'Carolini Teste ', 'Desenvolvedora Front-end', 'Html - CSS - Javascript - Sass - Git', NULL, NULL),
(16, 'ana.julia@hotmail.com', 'MTIzNA==', 'Ana Julia', 'Desenvolvedora Backend', 'Php Node.js', NULL, NULL),
(17, 'caroline.oliveira1800@gmail.com', 'MTIzNA==', 'Caroline Oliveira', 'Desenvolvedora Frontend', 'Html - Css - Javascript', NULL, NULL),
(18, 'caroline.oliveira1800@gmail.com', 'MTIzNA==', 'Caroline Oliveira', 'Desenvolvedora Frontend', 'Html - Css - Javascript', NULL, NULL),
(19, 'rihanna@gmail.com', 'MTIzNA==', 'Rihanna', 'Desenvolvedora Backend', 'Php Node.js', NULL, NULL),
(20, 'rihanna@gmail.com', 'MTIzNA==', 'Rihanna', 'Desenvolvedora Backend', 'Php Node.js', NULL, NULL),
(21, 'caroline.oliveira@hotmail.com', 'MTIzNA==', 'Usuaria Teste', 'Front-end', 'Html - CSS - Javascript - Sass', NULL, NULL),
(22, 'banco@gmail.com', 'MTIzNA==', 'banco talentos', 'Desenvolvedora Backend', 'Php Node.js', NULL, NULL),
(23, 'banco@gmail.com', 'MTIzNA==', 'banco talentos 2', 'Desenvolvedora Backend', 'Php Node.js', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id_like`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

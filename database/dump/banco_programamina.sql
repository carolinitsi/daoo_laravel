-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Nov-2022 às 14:52
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
-- Banco de dados: `banco_programamina`
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
  `id_comentario` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `data_comentario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `id_usuario`, `id_post`, `comentario`, `data_comentario`) VALUES
(1, 2, 5, 'Que massa!', '0000-00-00'),
(2, 1, 5, 'Css3 é muito legal mesmo!', '0000-00-00'),
(3, 2, 2, 'Html é uma lingaguem de estilização!', '0000-00-00'),
(4, 1, 1, 'Php é mó legal', '0000-00-00'),
(5, 1, 6, 'ux é ruin', '0000-00-00'),
(7, 1, 1, 'meu comentario no meu post.', '0000-00-00'),
(8, 1, 5, 'zzzz', '0000-00-00'),
(9, 1, 1, '', '0000-00-00'),
(10, 1, 5, 'css aprendi no 1 semestre da faculdade.', '0000-00-00'),
(11, 1, 5, 'meu comentario no meu post.', '0000-00-00'),
(12, 3, 1, 'Bacana seu post!', '0000-00-00'),
(13, 3, 5, 'css aprendi no 1 semestre da faculdade.', '0000-00-00'),
(14, 1, 0, 'meu comentário teste no post de css!', '0000-00-00'),
(15, 5, 5, 'comentario', '0000-00-00'),
(16, 1, 5, 'comentario', '0000-00-00'),
(17, 1, 1, 'teste de comentário 19/07', '0000-00-00'),
(18, 1, 2, 'Apresentando o projeto', '0000-00-00'),
(19, 1, 10, 'post legal', '0000-00-00'),
(20, 3, 17, 'primeiro comentario', '0000-00-00'),
(21, 1, 9, 'primeiro comentario', '0000-00-00'),
(22, 1, 16, 'primeiro comentario', '0000-00-00'),
(23, 1, 21, 'primeiro comentario', '0000-00-00'),
(24, 1, 17, 'Segundo comentário.', '0000-00-00'),
(25, 16, 16, '❤️', '0000-00-00'),
(26, 16, 26, '????', '0000-00-00'),
(27, 16, 26, '❤️', '0000-00-00'),
(28, 16, 26, '????', '0000-00-00'),
(29, 16, 26, '????', '0000-00-00'),
(30, 16, 26, '????', '0000-00-00'),
(31, 16, 26, '????', '0000-00-00'),
(32, 16, 26, '☺️', '0000-00-00'),
(33, 16, 26, '????', '0000-00-00'),
(34, 16, 26, '????', '0000-00-00'),
(35, 16, 26, '????', '0000-00-00'),
(36, 3, 26, 'PageMaker including versions of Lorem Ipsum.', '0000-00-00'),
(37, 1, 27, 'teste', '0000-00-00'),
(38, 1, 25, '❤️', '0000-00-00'),
(39, 1, 26, '❤️', '0000-00-00'),
(40, 1, 26, 'PageMaker including versions of Lorem Ipsum.PageMaker including versions of Lorem Ipsum.PageMaker including versions of Lorem Ipsum.PageMaker including versions of Lorem Ipsum.', '0000-00-00'),
(41, 1, 26, 'uuuh', '0000-00-00'),
(42, 1, 26, 'teste', '0000-00-00'),
(43, 1, 31, 'teste', '0000-00-00'),
(44, 1, 27, '????', '0000-00-00'),
(45, 1, 31, '????', '0000-00-00'),
(46, 1, 16, 'teste', '0000-00-00'),
(47, 1, 31, 'Coração', '0000-00-00'),
(48, 1, 31, '', '0000-00-00'),
(49, 1, 31, 'tartaruga', '0000-00-00'),
(50, 1, 31, 'abelha', '0000-00-00'),
(51, 1, 31, '', '0000-00-00'),
(52, 1, 31, '', '0000-00-00'),
(53, 1, 31, '', '0000-00-00'),
(54, 1, 29, '', '0000-00-00'),
(55, 1, 29, '', '0000-00-00'),
(56, 1, 29, '', '0000-00-00'),
(57, 1, 29, '', '0000-00-00'),
(58, 1, 31, '', '0000-00-00'),
(59, 1, 31, '', '0000-00-00'),
(60, 1, 31, '', '0000-00-00'),
(61, 1, 31, '', '0000-00-00'),
(62, 1, 31, '', '0000-00-00'),
(63, 1, 31, '', '0000-00-00'),
(64, 1, 31, '', '0000-00-00'),
(65, 1, 30, 'teste teste', '0000-00-00'),
(66, 1, 31, 'Baby', '0000-00-00'),
(67, 1, 29, '❤️', '0000-00-00'),
(68, 1, 31, 'abóbora', '0000-00-00'),
(69, 1, 29, 'Arroz', '0000-00-00'),
(70, 1, 29, 'Arroz', '0000-00-00'),
(71, 1, 29, 'Arroz', '0000-00-00'),
(72, 1, 29, '', '0000-00-00'),
(73, 1, 29, '', '0000-00-00'),
(74, 1, 29, 'borboleta', '0000-00-00'),
(75, 1, 29, 'Azul', '0000-00-00'),
(76, 1, 29, 'Rosa', '0000-00-00'),
(77, 1, 27, 'Amarelo', '0000-00-00'),
(78, 1, 27, 'Amarelo', '0000-00-00'),
(79, 1, 27, 'Amarelo', '0000-00-00'),
(80, 1, 27, 'Amarelo', '0000-00-00'),
(81, 1, 27, 'Amarelo', '0000-00-00'),
(82, 1, 26, 'Lula 2022', '0000-00-00'),
(83, 1, 18, 'roxo', '0000-00-00'),
(84, 1, 21, 'pão', '0000-00-00'),
(85, 1, 26, 'Pindamoiangaba', '0000-00-00'),
(86, 1, 25, 'Abacaxi', '0000-00-00'),
(87, 1, 25, 'Banana', '0000-00-00'),
(88, 1, 25, 'Banana', '0000-00-00'),
(89, 1, 25, 'Oie', '0000-00-00'),
(90, 1, 25, 'Tchau', '0000-00-00'),
(91, 1, 25, ' ', '0000-00-00'),
(92, 1, 25, ' ', '0000-00-00'),
(93, 1, 25, 'Baita textoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo', '0000-00-00'),
(94, 1, 25, ' ', '0000-00-00'),
(95, 1, 25, 'Texto teste', '0000-00-00'),
(96, 1, 25, 'Texto teste', '0000-00-00'),
(97, 1, 23, 'Agora', '0000-00-00'),
(98, 1, 23, 'Depois', '0000-00-00'),
(99, 1, 23, 'Depois de novo', '0000-00-00'),
(100, 1, 23, 'Depois de novo', '0000-00-00'),
(101, 1, 30, 'Oi', '0000-00-00'),
(102, 1, 30, 'dois', '0000-00-00'),
(103, 1, 30, 'tres', '0000-00-00'),
(104, 1, 30, 'Quatro', '0000-00-00'),
(105, 1, 30, 'Cinco', '0000-00-00'),
(106, 1, 30, 'Seis', '0000-00-00'),
(107, 1, 30, ' ', '0000-00-00'),
(108, 1, 27, 'verse', '0000-00-00'),
(109, 1, 27, ' ', '0000-00-00'),
(110, 1, 26, 'Pipoca', '0000-00-00'),
(111, 1, 26, 'Pipoca', '0000-00-00'),
(112, 1, 26, 'Oie', '0000-00-00'),
(113, 1, 26, ' ', '0000-00-00'),
(114, 1, 26, 'eee', '0000-00-00'),
(115, 1, 31, 'rebelde', '0000-00-00'),
(116, 1, 23, '❤️', '0000-00-00'),
(117, 1, 17, 'teste tesete', '0000-00-00');

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
  `id_posts` int(255) NOT NULL,
  `id_usuario` varchar(255) NOT NULL,
  `assunto` varchar(255) NOT NULL,
  `data_post` varchar(20) DEFAULT NULL,
  `post` text DEFAULT NULL,
  `imagem_post` varchar(200) DEFAULT NULL,
  `curtidas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id_posts`, `id_usuario`, `assunto`, `data_post`, `post`, `imagem_post`, `curtidas`) VALUES
(18, '3', 'Estilizando LI - parte 2', '13/08/2021 04:14', '  A política de execução não é um sistema de segurança que restringe as ações do usuário. Por exemplo, os usuários podem ignorar facilmente uma política digitando o conteúdo do script na linha de comando quando não puderem executar um script. Em vez disso, a política de execução ajuda os usuários a definir regras básicas e impede que eles as violem involuntariamente.  ', NULL, NULL),
(20, '3', 'Estilizando LI - parte 3', '13/08/2021 07:03', 'O elemento HTML (ou a Lista dos Itens de um elemento HTML) é usado para representar um item que faz parte de uma lista. Este item deve estar contido em um elemento pai: uma lista ordenada, uma lista desordenada (), ou um menu (en-US)e representa uma única entidade dessa lista. Em menus e listas desordenadas a relação de itens é exibida, normalmente, usando pontos de marcação (as bolinhas).', NULL, NULL),
(21, '6', 'CSS-Grid', '16/08/2021 11:11', 'CSS Grid Layout introduz um sistema bi-dimensional de grid (literalmente \"grades\") para CSS. Grids podem ser usados para o design de layouts de grandes seções de uma webpage, assim como de pequenos elementos de interface. Esse artigo apresenta o CSS Grid Layout e a terminologia que é parte da especificação  CSS Grid Layout Level 1. As funcionalidades demonstradas neste resumo serão posteriormente explicadas em maiores detalhes nas demais seções desse guia.', NULL, NULL),
(22, '1', 'Html', '24/08/2021 01:54', ' HTML abreviação para a expressão inglesa HyperText Markup Language, que significa: \"Linguagem de Marcação de Hipertexto\" é uma linguagem de marcação utilizada na construção de páginas na Web. Documentos HTML podem ser interpretados por navegadores. A tecnologia é fruto da junção entre os padrões HyTime e SGML. ', 'computer-g6b51f598e_1920.jpg.jpg', 1),
(23, '3', 'JavaScript', '19/08/2022 03:24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1555172.jpg.jpg', 2),
(24, '3', 'Banco de dados avaçados - sem imagem', '19/08/2022 03:27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '20200924020927.jpg.jpg', 1),
(25, '16', 'teste post com foto', '19/08/2022 03:38', 'com foto', 'organizze.jpeg.jpeg', 1),
(26, '16', 'php', '19/08/2022 03:42', 'Oie gente!\r\n\r\n\r\nGlossário\r\nago 22, 2022\r\n\r\nCarlos E.\r\n\r\n8min de leitura\r\n\r\nO Que é PHP? Guia Básico de Programação PHP\r\nO Que é PHP? Guia Básico de Programação PHP\r\nNuma explicação de poucas palavras, PHP é uma linguagem de programação utilizada por programadores e desenvolvedores para construir sites dinâmicos, extensões de integração de aplicações e agilizar no desenvolvimento de um sistema.\r\n\r\nEssa linguagem é mundialmente conhecida e uma das mais utilizadas pela facilidade em aprendê-la, manuseá-la, além de ser compatível com quase todos os sistemas operacionais que existem – o que torna seu custo menor. Neste artigo nós vamos mostrar a importância dessa sigla, além da estrutura e vantagens dessa linguagem.', '404076-thumb-serp-1200x675.jpg.jpg', 2),
(27, '3', 'html', '29/08/2022 03:46', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 3),
(29, '1', 'html', '28/09/2022 03:58', 'Teste publicação dentro do modal!', '20200924020927.jpg.jpg', NULL),
(30, '5', 'Php', '29/09/2022 01:42', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n5\r\n	paragraphs\r\n	words\r\n	bytes\r\n	lists\r\n	Start with \'Lorem\r\nipsum dolor sit amet...\'\r\n', NULL, NULL),
(31, '17', 'Sql', '29/09/2022 01:53', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL),
(55, '19', 'html', '21/11/2022 08:27', 'teste', 'Gurias de TSI (4).png.png', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `profissao` varchar(200) DEFAULT NULL,
  `competencias` varchar(200) DEFAULT NULL,
  `user_online` tinyint(1) DEFAULT NULL,
  `banco_talentos` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `email`, `senha`, `imagem`, `nome`, `profissao`, `competencias`, `user_online`, `banco_talentos`) VALUES
(1, 'carolini.tsi@gmail.com', 'MTIzNA==', 'e2590aae1c2066a177d53056722d43ca.jpg.jpg', 'Carolini', 'Desenvolvedora Frontend', 'Html - Css - Javascript', 0, NULL),
(3, 'lizy@gmail.com', 'MTIzNA==', '174600860_128235682565572_1027689003720731259_n.jpg.jpg', 'Lizy', 'Desenvolvedora Backend', 'Php Node.js', 0, NULL),
(4, 'tais.olliveira333@gmail.com', 'MzMz', 'FOTINHO.jpeg.jpeg', NULL, NULL, NULL, 0, NULL),
(5, 'teste@gmail.com', 'MTIzNA==', '103441570_1977093405789244_7841247353563130695_o.jpg.jpg', 'Carolini Teste ', 'Desenvolvedora Front-end', 'Html - CSS - Javascript - Sass - Git', 0, NULL),
(16, 'ana.julia@hotmail.com', 'MTIzNA==', 'woman-g6b1fcd141_1920.jpg.jpg', 'Ana Julia', 'Desenvolvedora Backend', 'Php Node.js', 1, NULL),
(17, 'caroline.oliveira1800@gmail.com', 'MTIzNA==', 'girl-g5a82c1e62_1920.jpg.jpg', 'Caroline Oliveira', 'Desenvolvedora Frontend', 'Html - Css - Javascript', 0, NULL),
(18, 'caroline.oliveira1800@gmail.com', 'MTIzNA==', 'girl-g5a82c1e62_1920.jpg.jpg', 'Caroline Oliveira', 'Desenvolvedora Frontend', 'Html - Css - Javascript', NULL, NULL),
(19, 'rihanna@gmail.com', 'MTIzNA==', 'download.jpg.jpg', 'Rihanna', 'Desenvolvedora Backend', 'Php Node.js', 0, NULL),
(20, 'rihanna@gmail.com', 'MTIzNA==', 'download.jpg.jpg', 'Rihanna', 'Desenvolvedora Backend', 'Php Node.js', NULL, NULL),
(21, 'caroline.oliveira@hotmail.com', 'MTIzNA==', 'download.jpg.jpg', 'Usuaria Teste', 'Front-end', 'Html - CSS - Javascript - Sass', NULL, NULL),
(22, 'banco@gmail.com', 'MTIzNA==', 'WhatsApp Image 2022-11-21 at 20.46.28.jpeg.jpeg', 'banco talentos', 'Desenvolvedora Backend', 'Php Node.js', 0, 0),
(23, 'banco@gmail.com', 'MTIzNA==', 'WhatsApp Image 2022-11-21 at 20.46.28.jpeg.jpeg', 'banco talentos 2', 'Desenvolvedora Backend', 'Php Node.js', NULL, NULL);

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
  ADD PRIMARY KEY (`id_comentario`);

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
  ADD PRIMARY KEY (`id_posts`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

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

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id_posts` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 05-Jun-2022 às 22:45
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `senha`, `email`, `nome`, `sobrenome`) VALUES
(1, 'admin', 'admin', 'dantonycbd@gmail.com', 'Dantony', 'Donato');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------


--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cns` int(20) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `nome_social` varchar(100) NOT NULL,
  `nome_mae` varchar(100) NOT NULL,
  `nascimento` varchar(50) NOT NULL,
  `sexo` int(5) NOT NULL,
  `born_country` int(5) NOT NULL,
  `botn_city` int(5) NOT NULL,
  `living_country` int(5) NOT NULL,
  `living_city` int(5) NOT NULL,
  `living_cep` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paciente`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------


--
-- Estrutura da tabela `sexo`
--

DROP TABLE IF EXISTS `sexo`;
CREATE TABLE IF NOT EXISTS `sexo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identificacao` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sexo`
--

INSERT INTO `sexo` (`id`, `identificacao`) VALUES
(1, 'Masculino'),
(2, 'Feminino'),
(3, 'Ignorado');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------


--
-- Estrutura da tabela `raca`
--

DROP TABLE IF EXISTS `raca`;
CREATE TABLE IF NOT EXISTS `raca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identificacao` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `raca`
--

INSERT INTO `raca` (`id`, `identificacao`) VALUES
(1, 'Branca'),
(2, 'Preta'),
(3, 'Parda'),
(4, 'Amarela'),
(5, 'Indígena'),
(6, 'Sem Informação');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------
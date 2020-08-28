-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: mysql669.umbler.com
-- Generation Time: 21-Ago-2020 às 17:18
-- Versão do servidor: 5.6.40
-- PHP Version: 5.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moroniteste`
--

-- --------------------------------------------------------
--
-- Estrutura da tabela `alunos`
--

CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(55) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idTurma` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `numero`, `createdAt`, `updatedAt`, `idTurma`) VALUES
(1, 'Fabio um', 1, '2020-06-28 19:29:41', '2020-06-28 19:29:41', 3),
(2, 'Marcelo dois', 2, '2020-06-28 19:33:38', '2020-06-28 19:33:38', 2),
(4, 'Gustavo quatro', 4, '2020-06-28 19:37:26', '2020-06-28 19:37:26', 1),
(5, 'Douglas cinco', 5, '2020-06-28 19:40:08', '2020-06-28 19:40:08', 2),
(7, 'Marta sete', 7, '2020-07-01 20:42:55', '2020-07-01 20:42:55', 1),
(8, 'Roberto oito', 8, '2020-07-29 22:58:05', '2020-07-29 22:58:05', 1),
(10, 'Julia dez', 10, '2020-08-03 19:08:58', '2020-08-03 19:08:58', 1),
(11, 'Margarida onze', 11, '2020-08-03 19:10:01', '2020-08-03 19:10:01', 1),
(12, 'Paulo doze', 12, '2020-08-03 19:11:41', '2020-08-03 19:11:41', 1),
(13, 'Rogerio treze', 13, '2020-08-11 16:55:52', '2020-08-11 16:55:52', 1),
(14, 'Patricia quatorze', 14, '2020-08-11 16:57:39', '2020-08-11 16:57:39', 1),
(15, 'Emerson quinze', 15, '2020-08-11 16:58:36', '2020-08-11 16:58:36', 1),
(19, 'Bernardo Dezenove', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(20, 'Claudemir vinte', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(21, 'Fernanda vinte e um', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(22, 'Monica vinte e dois', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3);

-- --------------------------------------------------------
--
-- Estrutura da tabela `aulas`
--

CREATE TABLE IF NOT EXISTS `aulas` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `codHabilidade` varchar(12) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `entrega` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Stand-in structure for view `tabelaTarefas`
--
CREATE TABLE IF NOT EXISTS `tabelaTarefas` (
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarefaAluno`
--

CREATE TABLE IF NOT EXISTS `tarefaAluno` (
  `id` int(11) NOT NULL,
  `dataEntrega` date DEFAULT NULL,
  `conceito` float DEFAULT NULL,
  `obs` varchar(250) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idAluno` int(11) DEFAULT NULL,
  `idTarefa` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tarefaAluno`
--

INSERT INTO `tarefaAluno` (`id`, `dataEntrega`, `conceito`, `obs`, `createdAt`, `updatedAt`, `idAluno`, `idTarefa`) VALUES
(2, '2020-08-30', 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 2),
(3, '2020-08-20', 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 1),
(4, '2020-05-10', 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarefas`
--

CREATE TABLE IF NOT EXISTS `tarefas` (
  `id` int(11) NOT NULL,
  `dataPedida` date DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `habilidade` varchar(10) DEFAULT NULL,
  `obs` varchar(250) DEFAULT NULL,
  `idTurma` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tarefas`
--

INSERT INTO `tarefas` (`id`, `dataPedida`, `descricao`, `habilidade`, `obs`, `idTurma`, `createdAt`, `updatedAt`) VALUES
(1, '2020-05-10', 'tarefa um', NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '2020-06-17', 'tarefa um turma 4', NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '2020-07-20', 'tarefa dis 20/06', NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '2020-08-12', 'tarefa 12/07', NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '2020-04-01', 'tarefa 01/abril', NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE IF NOT EXISTS `turmas` (
  `id` int(11) NOT NULL,
  `turma` varchar(10) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turmas`
--

INSERT INTO `turmas` (`id`, `turma`, `createdAt`, `updatedAt`) VALUES
(1, 'primeiro A', '2020-06-29 00:00:00', '2020-06-29 00:00:00'),
(2, 'primeiro B', '2020-06-30 00:00:00', '2020-06-30 00:00:00'),
(3, 'turma zero', '2020-08-12 00:00:00', '2020-08-12 00:00:00');

-- --------------------------------------------------------

--
-- Structure for view `tabelaTarefas`
--
DROP TABLE IF EXISTS `tabelaTarefas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sqlallex`@`%` SQL SECURITY DEFINER VIEW `tabelaTarefas` AS select `AL`.`numero` AS `numero`,`AL`.`nome` AS `nome`,`AL`.`id` AS `id`,`TD`.`dataPedida` AS `dataPedida`,`TD`.`dataEntrega` AS `dataEntrega`,`TD`.`idAluno` AS `idAluno` from (`alunos` `AL` left join `tarefaDia` `TD` on((`AL`.`id` = `TD`.`idAluno`))) union select `AL`.`numero` AS `numero`,`AL`.`nome` AS `nome`,`AL`.`id` AS `id`,`TD`.`dataPedida` AS `dataPedida`,`TD`.`dataEntrega` AS `dataEntrega`,`TD`.`idAluno` AS `idAluno` from (`tarefaDia` `TD` left join `alunos` `AL` on((`AL`.`id` = `TD`.`idAluno`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTurma` (`idTurma`);

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tarefaAluno`
--
ALTER TABLE `tarefaAluno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idAluno` (`idAluno`),
  ADD KEY `idTarefa` (`idTarefa`);

--
-- Indexes for table `tarefas`
--
ALTER TABLE `tarefas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
--
-- AUTO_INCREMENT for table `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
--
-- AUTO_INCREMENT for table `tarefaAluno`
--
ALTER TABLE `tarefaAluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tarefas`
--
ALTER TABLE `tarefas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`idTurma`) REFERENCES `turmas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tarefaAluno`
--
ALTER TABLE `tarefaAluno`
  ADD CONSTRAINT `tarefaAluno_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `alunos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tarefaAluno_ibfk_2` FOREIGN KEY (`idTarefa`) REFERENCES `tarefas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

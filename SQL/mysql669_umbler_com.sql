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
-- Estrutura da tabela `SequelizeMeta`
--

CREATE TABLE IF NOT EXISTS `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20200619150711-criar_tabela_teste.js');

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
-- Estrutura da tabela `atendimentos`
--

CREATE TABLE IF NOT EXISTS `atendimentos` (
  `id` int(11) NOT NULL,
  `cliente` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pet` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servico` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `horaCriacao` time NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `observacoes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `atendimentos`
--

INSERT INTO `atendimentos` (`id`, `cliente`, `pet`, `servico`, `data`, `dataCriacao`, `horaCriacao`, `status`, `observacoes`) VALUES
(1, 'Cliente 003', 'Xica', 'tosa', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '19:15:26', 'agendado', 'teste obs02'),
(2, 'Cliente 007', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '19:49:37', 'agendado5-3', 'teste obs05'),
(4, 'Cliente 009', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '19:49:48', 'agendado5-3', 'teste obs05'),
(5, 'Cliente 010', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '19:49:54', 'agendado5-3', 'teste obs05'),
(7, 'Cliente 010 pelo Lenovo', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '20:03:27', 'agendado5-3', 'teste obs05'),
(8, 'Paulinho da Viola', 'Xica5-3', 'tosa5-3', '2020-05-10 00:00:00', '2020-04-24 00:00:00', '10:00:37', 'agendado5-3', 'teste obs05'),
(9, 'Mario da Silva', 'Xica5-3', 'tosa5-3', '2020-05-10 00:00:00', '2020-04-24 00:00:00', '10:00:58', 'agendado5-3', 'teste obs05'),
(10, 'Claudia Pereira', 'Xica5-3', 'tosa5-3', '2020-05-10 00:00:00', '2020-04-24 00:00:00', '10:03:37', 'agendado5-3', 'teste obs05'),
(11, 'Claudia Pereira', 'Xica5-3', 'tosa5-3', '2020-05-10 00:00:00', '2020-04-24 00:00:00', '23:23:47', 'agendado5-3', 'teste obs05'),
(12, 'Paticia Bird', 'Gatinho', 'tosa5-3', '2020-05-10 00:00:00', '2020-04-24 00:00:00', '23:25:06', 'agendado5-3', 'teste obs05'),
(13, 'Carla Tica', 'Gatinho', 'tosa5-3', '2020-07-20 00:00:00', '2020-06-07 00:00:00', '21:17:55', 'agendado5-3', 'teste obs05'),
(14, 'Maria Cartola', 'Tutuca', 'Banho e Tosa', '2020-07-20 00:00:00', '2020-06-07 00:00:00', '21:18:57', 'Agendado', 'teste de agendamento'),
(15, 'Paulo do Gato', 'Bichano', 'Banho e Tosa', '2020-07-20 00:00:00', '2020-06-07 00:00:00', '22:18:35', 'Agendado', 'teste de agendamento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimentos-old`
--

CREATE TABLE IF NOT EXISTS `atendimentos-old` (
  `id` int(11) NOT NULL,
  `cliente` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pet` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servico` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `horaCriacao` time NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `observacoes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `atendimentos-old`
--

INSERT INTO `atendimentos-old` (`id`, `cliente`, `pet`, `servico`, `data`, `dataCriacao`, `horaCriacao`, `status`, `observacoes`) VALUES
(1, 'Cliente 001', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '01:39:52', 'agendado5-3', 'teste obs05'),
(2, 'Cliente 002', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '01:39:57', 'agendado5-3', 'teste obs05'),
(3, 'Cliente 003', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '01:40:01', 'agendado5-3', 'teste obs05'),
(4, 'Cliente 004', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '01:40:07', 'agendado5-3', 'teste obs05'),
(5, 'Cliente 005', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '03:40:17', 'agendado5-3', 'teste obs05'),
(6, 'Cliente 006', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '03:40:25', 'agendado5-3', 'teste obs05'),
(7, 'Cliente 007', 'Xica5-3', 'tosa5-3', '2020-04-10 00:00:00', '2020-04-06 00:00:00', '03:42:26', 'agendado5-3', 'teste obs05');

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

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Diego Fernandes', 'diegosememail@testeemmail', '2020-06-17 02:08:35', '2020-06-17 02:08:35'),
(2, 'Paulo Barbosa', 'Paulosememail@testeemmail', '2020-06-17 02:09:07', '2020-06-17 02:09:07'),
(3, 'Paulo Barbosa', 'outropaulosememail@testeemmail', '2020-06-17 02:09:55', '2020-06-17 02:09:55'),
(4, 'Paulo Barbosa', 'paulob@emailteste', '2020-06-17 02:10:18', '2020-06-17 02:10:18'),
(5, 'Otavio Suassuna', 'tavinhoSS@emailteste', '2020-06-17 02:21:37', '2020-06-17 02:21:37'),
(6, 'Alejandro Diknovith', 'Dikc@emailteste', '2020-06-17 02:28:43', '2020-06-17 02:28:43'),
(7, 'Rhomanovva Kallendoskcophia', 'Ckalen@emailteste', '2020-06-17 02:30:37', '2020-06-17 02:30:37'),
(8, 'Petruvick Smirkvolt', 'pet@emailteste', '2020-06-17 02:34:07', '2020-06-17 02:34:07'),
(9, 'Markoni Smirkvolt', '', '2020-06-17 02:34:43', '2020-06-17 02:34:43'),
(10, 'Markoni Smirkvolt', '1A', '2020-06-20 05:49:37', '2020-06-20 05:49:37');

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
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTurma` (`idTurma`);

--
-- Indexes for table `atendimentos`
--
ALTER TABLE `atendimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atendimentos-old`
--
ALTER TABLE `atendimentos-old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
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
-- AUTO_INCREMENT for table `atendimentos`
--
ALTER TABLE `atendimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `atendimentos-old`
--
ALTER TABLE `atendimentos-old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Jun-2022 às 13:47
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `rm` int(11) NOT NULL,
  `nome_aluno` varchar(255) DEFAULT NULL,
  `email_aluno` varchar(255) DEFAULT NULL,
  `endereco_aluno` varchar(255) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `cod_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`rm`, `nome_aluno`, `email_aluno`, `endereco_aluno`, `data_nasc`, `telefone`, `cod_curso`) VALUES
(21333, 'Julia Granado', 'juju@etec.sp.gov.br', 'Estrada Pau-A-Pique, 1500', '2005-07-05', '11 987218366', 1),
(21334, 'Daielly dos Santos', 'dai@etec.sp.gov.br', 'Rua Vila Bonita, 72', '2005-03-20', '11 964192313', 2),
(21335, 'Breno Cardozo', 'brenin@etec.sp.gov.br', 'Rua Guapituba, 20', '2005-08-17', '11 995868505', 4),
(21336, 'Gustavo Sotelo', 'sotz@etec.sp.gov.br', 'Estrada Joaninha, 64', '2005-09-25', '11 943352341', 5),
(21337, 'Luís Otávio', 'tatu@etec.sp.gov.br', 'Rua São Caetaninho, 59', '2005-09-07', '11 945030407', 7),
(21338, 'Gabriel Sampaio', 'sampas@etec.sp.gov.br', 'Rua do Café, 44', '2005-05-17', '11 955841096', 3),
(21339, 'Bruna Ferri', 'bruna@etec.sp.gov.br', 'Estrada Fulaninho, 31', '2005-06-23', '11 982033281', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `cod_curso` int(11) NOT NULL,
  `nome_curso` varchar(255) DEFAULT NULL,
  `periodo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`cod_curso`, `nome_curso`, `periodo`) VALUES
(1, 'INFO (manhã)', 'Manhã'),
(2, 'INFO (tarde)', 'Tarde'),
(3, 'ADM (manhã)', 'Manhã'),
(4, 'ADM (tarde)', 'Tarde'),
(5, 'RH (manhã)', 'Manhã'),
(6, 'RH (tarde)', 'Tarde'),
(7, 'QUIM', 'Noite');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `email_usuario` varchar(255) DEFAULT NULL,
  `nome_usuario` varchar(255) DEFAULT NULL,
  `senha_usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `email_usuario`, `nome_usuario`, `senha_usuario`) VALUES
(141, 'juju@etec.sp.gov.br', 'Julia Granado', '1234'),
(142, 'dai@etec.sp.gov.br', 'Daielly dos Santos', '4567'),
(143, 'sotz@etec.sp.gov.br', 'Gustavo Sotelo', '6789'),
(144, 'brenin@etec.sp.gov.br', 'Breno Cardozo', '9876'),
(145, 'tatu@etec.sp.gov.br', 'Luís Otávio', '6543'),
(146, 'bruna@etec.sp.gov.br', 'Bruna Ferri', '4321'),
(147, 'sampas@etec.sp.gov.br', 'Gabriel Sampaio', '0123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`rm`),
  ADD KEY `cod_curso` (`cod_curso`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cod_curso`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `rm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21340;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cod_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`cod_curso`) REFERENCES `cursos` (`cod_curso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

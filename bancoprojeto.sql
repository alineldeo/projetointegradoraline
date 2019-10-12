-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Out-2019 às 02:39
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetoIntegrador`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--
CREATE TABLE pessoa(
  Nome varchar (50),
  cpf varchar (15),
  telefone varchar (11),
  email varchar (50),
  numCadastro integer
)
ALTER TABLE pessoa ADD PRIMARY KEY (numCadastro);


CREATE TABLE users(
  userId integer,
  endereco varchar (100),
  fk_numCadastro integer
  );
ALTER TABLE users ADD PRIMARY KEY (userId);
ALTER TABLE users ADD FOREIGN KEY (userId)
references pessoa(numCadastro);

 ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE users
  ADD PRIMARY KEY (user_id);


create table funcionario(
codigofuncionario integer
);

alter table funcionario add primary key (codigofuncionario);

create table atendimento(
fk_userId integer,
fk_codigofuncionario integer
);


   MODIFY user_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

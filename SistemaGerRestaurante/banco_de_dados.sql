-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Maio-2019 às 16:45
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `ordem` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `data_registro` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `alias`, `descricao`, `ordem`, `img`, `status`, `data_registro`) VALUES
(1, 'Pizzas', 'lanches', '', 1, 'Pizza7.png', 1, '0000-00-00 00:00:00'),
(2, 'Bebidas', 'bebidas', '', 2, 'Bebida7.png', 1, '0000-00-00 00:00:00'),
(4, 'Vinhos', 'combos', '', 3, 'Vinho10.png', 1, '0000-00-00 00:00:00'),
(5, 'Adicionais', 'adicionais', '', 4, 'Ativo_62.png', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `complemento` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `notas` longtext NOT NULL,
  `data_registro` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `celular`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `notas`, `data_registro`) VALUES
(11, 'Lucas Gomes', '', '', '', '', '', '', '', '', '', '', '', '27/05/2019 19:37:28'),
(10, 'Débora Pereira', '', '', '', '', '', '', '', '', '', '', '', '27/05/2019 19:37:19'),
(9, 'Giulio Machado', '', '', '', '', '', '', '', '', '', '', '', '27/05/2019 19:37:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `texto_guiche` mediumtext NOT NULL,
  `razao_social` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) NOT NULL,
  `cnpj_cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id`, `texto_guiche`, `razao_social`, `nome_fantasia`, `cnpj_cpf`, `telefone`, `celular`, `email`, `website`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `logo`) VALUES
(1, 'Sanja Pizza', 'Sanja Pizza', 'Sanja Pizza', '000.000.000/0001-00', '(00) 0000-0000', '(00) 0000-0000', 'meuemail@mail.com', 'www.meusite.com.br', '00000-000', 'Ademar de Barros', '1000', '', 'Vila Adyana', 'São José dos Campos', 'São Paulo', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guiche`
--

CREATE TABLE `guiche` (
  `id` int(11) NOT NULL,
  `pedido` varchar(5) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_pedidos`
--

CREATE TABLE `itens_pedidos` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(40) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens_pedidos`
--

INSERT INTO `itens_pedidos` (`id`, `id_pedido`, `id_produto`, `nome_produto`, `quantidade`, `valor`) VALUES
(933, 133, 3, 'Pizza Mussarela 500 g', 1, 20),
(932, 133, 6, 'Queijo 100 g', 1, 2),
(931, 133, 10, 'Portuguesa 500 g', 1, 25),
(930, 133, 2, 'Chopp 300 ml', 1, 8),
(929, 133, 9, 'CARMÉNÈRE 2016 500 g', 1, 50),
(928, 133, -2, 'Cartão de Crédito', 1, 105),
(927, 133, -10, 'Desconto', 1, 0),
(926, 132, 3, 'Pizza Mussarela 500 g', 1, 20),
(925, 132, 6, 'Queijo 100 g', 1, 2),
(924, 132, 10, 'Portuguesa 500 g', 1, 25),
(923, 132, 2, 'Chopp 300 ml', 1, 8),
(922, 132, 9, 'CARMÉNÈRE 2016 500 g', 1, 50),
(921, 131, 3, 'Pizza Mussarela 500 g', 1, 20),
(920, 131, 6, 'Queijo 100 g', 1, 2),
(919, 131, 10, 'Portuguesa 500 g', 1, 25),
(918, 131, 2, 'Chopp 300 ml', 1, 8),
(917, 131, 9, 'CARMÉNÈRE 2016 500 g', 1, 50),
(916, 130, 3, 'Pizza Mussarela 500 g', 1, 20),
(915, 130, 9, 'CARMÉNÈRE 2016 500 g', 1, 50),
(914, 130, -3, 'Cartão de Débito', 1, 70),
(913, 130, -10, 'Desconto', 1, 0),
(912, 129, 3, 'Pizza Mussarela 500 g', 1, 20),
(911, 129, 11, 'Coca Cola 600 ml', 1, 7),
(910, 129, -2, 'Cartão de Crédito', 1, 27),
(909, 129, -10, 'Desconto', 1, 0),
(908, 128, 3, 'Pizza Mussarela 500 g', 1, 20),
(907, 128, 11, 'Coca Cola 600 ml', 1, 7),
(906, 127, 3, 'Pizza Mussarela 500 g', 1, 20),
(905, 127, 9, 'CARMÉNÈRE 2016 500 g', 1, 50),
(904, 126, 3, 'Pizza Mussarela 500 g', 1, 20),
(903, 125, 3, 'Pizza Mussarela 500 g', 1, 20),
(902, 125, 8, 'Suco Laranja 300 ml', 1, 5),
(901, 125, -2, 'Cartão de Crédito', 1, 25),
(900, 125, -10, 'Desconto', 1, 0),
(897, 124, 8, 'Suco Laranja 300 ml', 1, 5),
(895, 124, -4, 'Sodexo/Alelo', 1, 30),
(896, 124, 10, 'Portuguesa 500 g', 1, 25),
(894, 124, -10, 'Desconto', 1, 0),
(886, 123, -4, 'Sodexo/Alelo', 1, 8),
(887, 123, 2, 'Chopp 300 ml', 1, 8),
(885, 123, -10, 'Desconto', 1, 0),
(883, 122, 2, 'Chopp 300 ml', 1, 8),
(882, 122, -1, 'Dinheiro', 1, 8),
(881, 122, -10, 'Desconto', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesas`
--

CREATE TABLE `mesas` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `lugares` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mesas`
--

INSERT INTO `mesas` (`id`, `nome`, `lugares`, `status`) VALUES
(1, 'M01', 4, 0),
(2, 'M02', 6, 0),
(3, 'M03', 5, 0),
(8, 'M04', 4, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `data` varchar(20) NOT NULL,
  `hora` time NOT NULL,
  `id_cliente` int(11) DEFAULT '0',
  `cliente` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `sub_total` double NOT NULL,
  `desconto` double NOT NULL DEFAULT '0',
  `total` double NOT NULL,
  `obs` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `data`, `hora`, `id_cliente`, `cliente`, `estado`, `sub_total`, `desconto`, `total`, `obs`) VALUES
(133, '27/05/2019', '21:33:13', 10, 'Débora Perei', 1, 105, 0, 105, ''),
(132, '27/05/2019', '21:30:48', 10, 'Débora Perei', 0, 105, 0, 105, ''),
(131, '27/05/2019', '21:30:05', 10, 'Débora Perei', 0, 105, 0, 105, ''),
(130, '27/05/2019', '21:13:51', 0, 'Sem Cliente', 1, 70, 0, 70, ''),
(129, '27/05/2019', '21:09:33', 0, 'Sem Cliente', 1, 27, 0, 27, ''),
(128, '27/05/2019', '21:09:03', 0, 'Sem Cliente', 0, 27, 0, 27, ''),
(127, '27/05/2019', '20:35:29', 0, 'Sem Cliente', 0, 70, 0, 70, ''),
(126, '27/05/2019', '20:35:23', 0, 'Sem Cliente', 0, 20, 0, 20, ''),
(125, '27/05/2019', '20:35:06', 0, 'Sem Cliente', 1, 25, 0, 25, ''),
(124, '27/05/2019', '20:28:57', 11, 'Lucas Gomes', 1, 30, 0, 30, ''),
(122, '27/05/2019', '19:51:10', 0, 'Sem Cliente', 1, 8, 0, 8, ''),
(123, '27/05/2019', '19:53:54', 0, 'Sem Cliente', 1, 8, 0, 8, ''),
(30, '13/04/2016', '11:38:17', 0, 'Sem Cliente', 1, 61, 0, 61, ''),
(32, '17/04/2016', '00:32:33', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(34, '11/05/2016', '02:01:24', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(85, '23/05/2016', '11:28:56', 0, 'Sem Cliente', 1, 43, -7, 50, ''),
(35, '17/04/2016', '00:33:00', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(37, '14/04/2016', '23:45:17', 0, 'Sem Cliente', 1, 10, 10, 0, ''),
(38, '17/04/2016', '00:13:15', 0, 'Sem Cliente', 1, 43, 0, 43, ''),
(91, '23/05/2016', '15:38:04', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(98, '27/05/2016', '17:51:56', 2, 'Francisco', 1, 49, 49, 0, 'TESET'),
(99, '28/05/2016', '02:12:16', 0, 'Sem Cliente', 1, 34, 34, 0, ''),
(41, '18/04/2016', '18:42:33', 0, 'Sem Cliente', 1, 58, 0, 58, ''),
(42, '25/04/2016', '01:57:50', 0, 'Sem Cliente', 1, 33, 0, 33, ''),
(96, '30/05/2016', '22:03:04', 0, 'Sem Cliente', 1, 34, 34, 0, 'coca'),
(44, '26/04/2016', '00:40:47', 5, 'Ricardo dos ', 1, 48, 0, 48, ''),
(45, '08/05/2016', '12:08:07', 0, 'Sem Cliente', 1, 34, 0, 34, ''),
(97, '28/05/2016', '02:13:14', 0, 'Sem Cliente', 0, 36, 0, 36, 'coca'),
(47, '11/05/2016', '02:16:32', 0, 'Sem Cliente', 1, 10, 0, 10, ''),
(94, '23/05/2016', '17:59:51', 0, 'Sem Cliente', 0, 8, 0, 8, ''),
(50, '12/05/2016', '02:33:22', 5, 'Ricardo dos ', 1, 43, 0, 43, ''),
(88, '23/05/2016', '15:41:43', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(89, '23/05/2016', '15:28:59', 0, 'Sem Cliente', 1, 88, 0, 88, 'lanc'),
(86, '23/05/2016', '15:42:12', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(87, '23/05/2016', '15:42:06', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(73, '15/05/2016', '07:23:26', 3, 'Joao', 1, 35, 0, 35, ''),
(59, '13/05/2016', '20:32:04', 0, 'Sem Cliente', 0, 16, 0, 16, ''),
(60, '13/05/2016', '20:35:07', 0, 'Sem Cliente', 0, 16, 0, 16, ''),
(62, '14/05/2016', '19:16:31', 0, 'Sem Cliente', 1, 26, 0, 26, 'coca'),
(63, '14/05/2016', '19:11:51', 0, 'Sem Cliente', 1, 46, 46, 0, 'coca'),
(64, '13/05/2016', '20:41:13', 0, 'Sem Cliente', 0, 8, 0, 8, ''),
(65, '13/05/2016', '20:45:03', 0, 'Sem Cliente', 0, 40, 0, 40, ''),
(95, '27/05/2016', '16:52:21', 2, 'Francisco', 1, 37, 37, 0, ''),
(90, '23/05/2016', '15:34:52', 0, 'Sem Cliente', 1, 51, 0, 51, '000005'),
(83, '20/05/2016', '10:03:56', 0, 'Sem Cliente', 1, 18, 0, 18, ''),
(84, '23/05/2016', '15:42:23', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(82, '23/05/2016', '15:41:52', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(80, '17/05/2016', '06:43:52', 2, 'Francisco', 0, 34, 0, 34, ''),
(104, '07/06/2016', '17:17:47', 0, 'Sem Cliente', 1, 18, 0, 18, ''),
(105, '07/06/2016', '17:32:37', 0, 'Sem Cliente', 1, 45, 45, 0, ''),
(106, '07/06/2016', '23:20:43', 7, 'nardelia', 1, 35, 0, 35, ''),
(107, '11/06/2016', '11:15:13', 0, 'Sem Cliente', 0, 8, 0, 8, 'coca'),
(108, '07/06/2016', '23:52:43', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(109, '07/06/2016', '23:51:30', 0, 'Sem Cliente', 1, 83, 0, 83, ''),
(110, '11/06/2016', '11:14:55', 0, 'Sem Cliente', 0, 32, 0, 32, 'teste'),
(111, '11/06/2016', '11:16:07', 0, 'Sem Cliente', 0, 8, 0, 8, ''),
(112, '11/06/2016', '11:21:39', 0, 'Sem Cliente', 0, 25, 0, 25, ''),
(113, '11/06/2016', '11:24:14', 8, 'douglas', 0, 58, 0, 58, ''),
(114, '11/06/2016', '11:30:00', 1, 'teste', 0, 45, 0, 45, ''),
(115, '11/06/2016', '11:55:02', 0, 'Sem Cliente', 0, 10, 0, 10, 'douglas'),
(116, '11/06/2016', '11:59:46', 8, 'douglas', 1, 58, 0, 58, ''),
(117, '11/06/2016', '12:08:59', 8, 'douglas', 0, 10, 0, 10, ''),
(118, '11/06/2016', '12:10:51', 8, 'douglas', 1, 10, 0, 10, ''),
(119, '11/06/2016', '12:11:14', 0, 'Sem Cliente', 1, 10, 0, 10, 'douglas'),
(120, '11/06/2016', '12:11:47', 1, 'teste', 1, 45, 9, 36, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos_espera_html`
--

CREATE TABLE `pedidos_espera_html` (
  `id` int(11) NOT NULL,
  `html` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos_espera_html`
--

INSERT INTO `pedidos_espera_html` (`id`, `html`) VALUES
(132, '	<div class=\"espera_nome_cliente\" id_guiche=\"126\">Sem Cliente - 126</div>	<div class=\"espera_lista_itens_left\">Pizza Mussarela<br></div>	<div class=\"espera_lista_itens_right\">20.00<br></div>	<div class=\"espera_titulo\">		<div class=\"espera_mesa\" id_mesa_c=\"1\">Mesa: M01		</div>		<div class=\"espera_total\">			R$ 20.00		</div>	</div>	<div class=\"espera_nota_completa\" style=\"display:none;\"><div id=\"cupom_id_nota\" id_nota=\"132\" style=\"display:none;\" val_desc=\"\"></div><div class=\"col_1_row_1\">	<div id=\"cupom_cliente\" title=\"Ver Histórico\" cupom_id_cliente=\"\">		<div id=\"cupom_nome\">Sem Cliente</div>		<span id=\"cupom_telefone\"></span>	</div>	<div id=\"cupom_pesquisar_cliente\" title=\"Selecionar Cliente\">		<i class=\"fa fa-search fa-2x\"></i>	</div>	<div id=\"cupom_mesa\" title=\"Selecionar Mesa\" id_mesa_c=\"1\" class=\"mesa_selecionada\">M01</div></div><div class=\"col_1_row_1_5\">	Obs: <input type=\"text\" id=\"obs_pedido\" value=\"\"></div><div class=\"col_1_row_2\">	<div class=\"produto_atual_left\">		<div id=\"cupom_id_prod\" id_prod=\"3\"></div>		<div id=\"cupom_quantidade\" value=\"1\"></div>		<div id=\"cupom_descricao\">Pizza Mussarela 500 g</div>	</div>	<div class=\"produto_atual_right\">		<div id=\"cupom_unitario\">Unitário (R$)</div>		<div id=\"cupom_valor_unitario\">20.00</div>	</div></div><div class=\"col_1_row_3\" style=\"height: 605px;\">	<div class=\"col_1_row_3\" id=\"cupom_nota\" style=\"height: 605px;\"><div class=\"cupom_produto odd lista_odd\" id_prod=\"3\">	<div>		<div class=\"cupom_produto_col1\">		    <div class=\"cupom_produto_quantidade\" value=\"1\">Nome</div>		    <div class=\"cupom_produto_descricao\">Pizza Mussarela 500 g</div>		</div>		<div class=\"produto_produto_deletar\" title=\"Remover Produto\">		    <i class=\"fa fa-trash-o fa-2x\"></i>		</div>		<div class=\"cupom_produto_col3\">		    <div class=\"cupom_produto_total\">Total (R$)</div>		    <div class=\"cupom_produto_valor_total\">20.00</div>		</div>		<div class=\"cupom_produto_col2\">		    <div class=\"cupom_produto_unitario\">Valor (R$)</div>		    <div class=\"cupom_produto_valor_unitario\">20.00</div>		</div>	</div>	<div style=\"display:none\">		<div class=\"cupom_produto_mensagem_del\">			Deseja deletar esse Produto?		</div>		<div class=\"cupom_produto_cancel_del\" title=\"Não\">		    <i class=\"fa fa-times fa-2x\"></i>		</div>		<div class=\"cupom_produto_conf_del\" title=\"Sim\">		    <i class=\"fa fa-check fa-2x\"></i>		</div>	</div></div></div></div><div class=\"col_1_row_4\">	<div>		<div id=\"cupom_cancelar\" title=\"Cancelar Pedido\">			<i class=\"fa fa-trash-o fa-2x\"></i><br>Cancelar		</div>		<div id=\"cupom_espera\" title=\"Colocar Pedido em Espera\">			<i class=\"fa fa-exchange fa-2x\"></i><br>Em Espera		</div>		<div id=\"cupom_receber\" title=\"Fechar Pedido\">			<i class=\"fa fa-money fa-2x\"></i><br>Receber		</div>		<div id=\"cupom_total\">			<span>A RECEBER (R$)</span>			<p>105.00</p>		</div>	</div>	<div style=\"display:none\">		<div class=\"cupom_pedido_cancel_del\" title=\"Não\">			<i class=\"fa fa-times fa-3x\"></i>		</div>		<div class=\"cupom_pedido_conf_del\" title=\"Sim\">			<i class=\"fa fa-check fa-3x\"></i>		</div>		<div class=\"cupom_pedido_mensagem_del\">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class=\"espera_item_editar\" style=\"display: none;\"> <i class=\"fa fa-sign-out fa-rotate-180\"></i> </div>'),
(126, '	<div class=\"espera_nome_cliente\" id_guiche=\"126\">Sem Cliente - 126</div>	<div class=\"espera_lista_itens_left\">Pizza Mussarela<br></div>	<div class=\"espera_lista_itens_right\">20.00<br></div>	<div class=\"espera_titulo\">		<div class=\"espera_mesa\" id_mesa_c=\"1\">Mesa: M01		</div>		<div class=\"espera_total\">			R$ 20.00		</div>	</div>	<div class=\"espera_nota_completa\" style=\"display:none;\"><div id=\"cupom_id_nota\" id_nota=\"126\" style=\"display:none;\" val_desc=\"\"></div><div class=\"col_1_row_1\">	<div id=\"cupom_cliente\" title=\"Ver Histórico\" cupom_id_cliente=\"\">		<div id=\"cupom_nome\">Sem Cliente</div>		<span id=\"cupom_telefone\"></span>	</div>	<div id=\"cupom_pesquisar_cliente\" title=\"Selecionar Cliente\">		<i class=\"fa fa-search fa-2x\"></i>	</div>	<div id=\"cupom_mesa\" title=\"Selecionar Mesa\" id_mesa_c=\"1\" class=\"mesa_selecionada\">M01</div></div><div class=\"col_1_row_1_5\">	Obs: <input type=\"text\" id=\"obs_pedido\" value=\"\"></div><div class=\"col_1_row_2\">	<div class=\"produto_atual_left\">		<div id=\"cupom_id_prod\" id_prod=\"3\"></div>		<div id=\"cupom_quantidade\" value=\"1\"></div>		<div id=\"cupom_descricao\">Pizza Mussarela 500 g</div>	</div>	<div class=\"produto_atual_right\">		<div id=\"cupom_unitario\">Unitário (R$)</div>		<div id=\"cupom_valor_unitario\">20.00</div>	</div></div><div class=\"col_1_row_3\" style=\"height: 605px;\">	<div class=\"col_1_row_3\" id=\"cupom_nota\" style=\"height: 605px;\"><div class=\"cupom_produto odd lista_odd\" id_prod=\"3\">	<div>		<div class=\"cupom_produto_col1\">		    <div class=\"cupom_produto_quantidade\" value=\"1\">Nome</div>		    <div class=\"cupom_produto_descricao\">Pizza Mussarela 500 g</div>		</div>		<div class=\"produto_produto_deletar\" title=\"Remover Produto\">		    <i class=\"fa fa-trash-o fa-2x\"></i>		</div>		<div class=\"cupom_produto_col3\">		    <div class=\"cupom_produto_total\">Total (R$)</div>		    <div class=\"cupom_produto_valor_total\">20.00</div>		</div>		<div class=\"cupom_produto_col2\">		    <div class=\"cupom_produto_unitario\">Valor (R$)</div>		    <div class=\"cupom_produto_valor_unitario\">20.00</div>		</div>	</div>	<div style=\"display:none\">		<div class=\"cupom_produto_mensagem_del\">			Deseja deletar esse Produto?		</div>		<div class=\"cupom_produto_cancel_del\" title=\"Não\">		    <i class=\"fa fa-times fa-2x\"></i>		</div>		<div class=\"cupom_produto_conf_del\" title=\"Sim\">		    <i class=\"fa fa-check fa-2x\"></i>		</div>	</div></div></div></div><div class=\"col_1_row_4\">	<div>		<div id=\"cupom_cancelar\" title=\"Cancelar Pedido\">			<i class=\"fa fa-trash-o fa-2x\"></i><br>Cancelar		</div>		<div id=\"cupom_espera\" title=\"Colocar Pedido em Espera\">			<i class=\"fa fa-exchange fa-2x\"></i><br>Em Espera		</div>		<div id=\"cupom_receber\" title=\"Fechar Pedido\">			<i class=\"fa fa-money fa-2x\"></i><br>Receber		</div>		<div id=\"cupom_total\">			<span>A RECEBER (R$)</span>			<p>20.00</p>		</div>	</div>	<div style=\"display:none\">		<div class=\"cupom_pedido_cancel_del\" title=\"Não\">			<i class=\"fa fa-times fa-3x\"></i>		</div>		<div class=\"cupom_pedido_conf_del\" title=\"Sim\">			<i class=\"fa fa-check fa-3x\"></i>		</div>		<div class=\"cupom_pedido_mensagem_del\">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class=\"espera_item_editar\" style=\"display:none\"> <i class=\"fa fa-sign-out fa-rotate-180\"></i> </div>'),
(127, '	<div class=\"espera_nome_cliente\" id_guiche=\"126\">Sem Cliente - 126</div>	<div class=\"espera_lista_itens_left\">Pizza Mussarela<br></div>	<div class=\"espera_lista_itens_right\">20.00<br></div>	<div class=\"espera_titulo\">		<div class=\"espera_mesa\" id_mesa_c=\"1\">Mesa: M01		</div>		<div class=\"espera_total\">			R$ 20.00		</div>	</div>	<div class=\"espera_nota_completa\" style=\"display:none;\"><div id=\"cupom_id_nota\" id_nota=\"127\" style=\"display:none;\" val_desc=\"\"></div><div class=\"col_1_row_1\">	<div id=\"cupom_cliente\" title=\"Ver Histórico\" cupom_id_cliente=\"\">		<div id=\"cupom_nome\">Sem Cliente</div>		<span id=\"cupom_telefone\"></span>	</div>	<div id=\"cupom_pesquisar_cliente\" title=\"Selecionar Cliente\">		<i class=\"fa fa-search fa-2x\"></i>	</div>	<div id=\"cupom_mesa\" title=\"Selecionar Mesa\" id_mesa_c=\"1\" class=\"mesa_selecionada\">M01</div></div><div class=\"col_1_row_1_5\">	Obs: <input type=\"text\" id=\"obs_pedido\" value=\"\"></div><div class=\"col_1_row_2\">	<div class=\"produto_atual_left\">		<div id=\"cupom_id_prod\" id_prod=\"3\"></div>		<div id=\"cupom_quantidade\" value=\"1\"></div>		<div id=\"cupom_descricao\">Pizza Mussarela 500 g</div>	</div>	<div class=\"produto_atual_right\">		<div id=\"cupom_unitario\">Unitário (R$)</div>		<div id=\"cupom_valor_unitario\">20.00</div>	</div></div><div class=\"col_1_row_3\" style=\"height: 605px;\">	<div class=\"col_1_row_3\" id=\"cupom_nota\" style=\"height: 605px;\"><div class=\"cupom_produto odd lista_odd\" id_prod=\"3\">	<div>		<div class=\"cupom_produto_col1\">		    <div class=\"cupom_produto_quantidade\" value=\"1\">Nome</div>		    <div class=\"cupom_produto_descricao\">Pizza Mussarela 500 g</div>		</div>		<div class=\"produto_produto_deletar\" title=\"Remover Produto\">		    <i class=\"fa fa-trash-o fa-2x\"></i>		</div>		<div class=\"cupom_produto_col3\">		    <div class=\"cupom_produto_total\">Total (R$)</div>		    <div class=\"cupom_produto_valor_total\">20.00</div>		</div>		<div class=\"cupom_produto_col2\">		    <div class=\"cupom_produto_unitario\">Valor (R$)</div>		    <div class=\"cupom_produto_valor_unitario\">20.00</div>		</div>	</div>	<div style=\"display:none\">		<div class=\"cupom_produto_mensagem_del\">			Deseja deletar esse Produto?		</div>		<div class=\"cupom_produto_cancel_del\" title=\"Não\">		    <i class=\"fa fa-times fa-2x\"></i>		</div>		<div class=\"cupom_produto_conf_del\" title=\"Sim\">		    <i class=\"fa fa-check fa-2x\"></i>		</div>	</div></div></div></div><div class=\"col_1_row_4\">	<div>		<div id=\"cupom_cancelar\" title=\"Cancelar Pedido\">			<i class=\"fa fa-trash-o fa-2x\"></i><br>Cancelar		</div>		<div id=\"cupom_espera\" title=\"Colocar Pedido em Espera\">			<i class=\"fa fa-exchange fa-2x\"></i><br>Em Espera		</div>		<div id=\"cupom_receber\" title=\"Fechar Pedido\">			<i class=\"fa fa-money fa-2x\"></i><br>Receber		</div>		<div id=\"cupom_total\">			<span>A RECEBER (R$)</span>			<p>70.00</p>		</div>	</div>	<div style=\"display:none\">		<div class=\"cupom_pedido_cancel_del\" title=\"Não\">			<i class=\"fa fa-times fa-3x\"></i>		</div>		<div class=\"cupom_pedido_conf_del\" title=\"Sim\">			<i class=\"fa fa-check fa-3x\"></i>		</div>		<div class=\"cupom_pedido_mensagem_del\">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class=\"espera_item_editar\" style=\"display:none\"> <i class=\"fa fa-sign-out fa-rotate-180\"></i> </div>'),
(128, '	<div class=\"espera_nome_cliente\" id_guiche=\"126\">Sem Cliente - 126</div>	<div class=\"espera_lista_itens_left\">Pizza Mussarela<br></div>	<div class=\"espera_lista_itens_right\">20.00<br></div>	<div class=\"espera_titulo\">		<div class=\"espera_mesa\" id_mesa_c=\"1\">Mesa: M01		</div>		<div class=\"espera_total\">			R$ 20.00		</div>	</div>	<div class=\"espera_nota_completa\" style=\"display:none;\"><div id=\"cupom_id_nota\" id_nota=\"128\" style=\"display:none;\" val_desc=\"\"></div><div class=\"col_1_row_1\">	<div id=\"cupom_cliente\" title=\"Ver Histórico\" cupom_id_cliente=\"\">		<div id=\"cupom_nome\">Sem Cliente</div>		<span id=\"cupom_telefone\"></span>	</div>	<div id=\"cupom_pesquisar_cliente\" title=\"Selecionar Cliente\">		<i class=\"fa fa-search fa-2x\"></i>	</div>	<div id=\"cupom_mesa\" title=\"Selecionar Mesa\" id_mesa_c=\"1\" class=\"mesa_selecionada\">M01</div></div><div class=\"col_1_row_1_5\">	Obs: <input type=\"text\" id=\"obs_pedido\" value=\"\"></div><div class=\"col_1_row_2\">	<div class=\"produto_atual_left\">		<div id=\"cupom_id_prod\" id_prod=\"3\"></div>		<div id=\"cupom_quantidade\" value=\"1\"></div>		<div id=\"cupom_descricao\">Pizza Mussarela 500 g</div>	</div>	<div class=\"produto_atual_right\">		<div id=\"cupom_unitario\">Unitário (R$)</div>		<div id=\"cupom_valor_unitario\">20.00</div>	</div></div><div class=\"col_1_row_3\" style=\"height: 605px;\">	<div class=\"col_1_row_3\" id=\"cupom_nota\" style=\"height: 605px;\"><div class=\"cupom_produto odd lista_odd\" id_prod=\"3\">	<div>		<div class=\"cupom_produto_col1\">		    <div class=\"cupom_produto_quantidade\" value=\"1\">Nome</div>		    <div class=\"cupom_produto_descricao\">Pizza Mussarela 500 g</div>		</div>		<div class=\"produto_produto_deletar\" title=\"Remover Produto\">		    <i class=\"fa fa-trash-o fa-2x\"></i>		</div>		<div class=\"cupom_produto_col3\">		    <div class=\"cupom_produto_total\">Total (R$)</div>		    <div class=\"cupom_produto_valor_total\">20.00</div>		</div>		<div class=\"cupom_produto_col2\">		    <div class=\"cupom_produto_unitario\">Valor (R$)</div>		    <div class=\"cupom_produto_valor_unitario\">20.00</div>		</div>	</div>	<div style=\"display:none\">		<div class=\"cupom_produto_mensagem_del\">			Deseja deletar esse Produto?		</div>		<div class=\"cupom_produto_cancel_del\" title=\"Não\">		    <i class=\"fa fa-times fa-2x\"></i>		</div>		<div class=\"cupom_produto_conf_del\" title=\"Sim\">		    <i class=\"fa fa-check fa-2x\"></i>		</div>	</div></div></div></div><div class=\"col_1_row_4\">	<div>		<div id=\"cupom_cancelar\" title=\"Cancelar Pedido\">			<i class=\"fa fa-trash-o fa-2x\"></i><br>Cancelar		</div>		<div id=\"cupom_espera\" title=\"Colocar Pedido em Espera\">			<i class=\"fa fa-exchange fa-2x\"></i><br>Em Espera		</div>		<div id=\"cupom_receber\" title=\"Fechar Pedido\">			<i class=\"fa fa-money fa-2x\"></i><br>Receber		</div>		<div id=\"cupom_total\">			<span>A RECEBER (R$)</span>			<p>27.00</p>		</div>	</div>	<div style=\"display:none\">		<div class=\"cupom_pedido_cancel_del\" title=\"Não\">			<i class=\"fa fa-times fa-3x\"></i>		</div>		<div class=\"cupom_pedido_conf_del\" title=\"Sim\">			<i class=\"fa fa-check fa-3x\"></i>		</div>		<div class=\"cupom_pedido_mensagem_del\">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class=\"espera_item_editar\" style=\"display: none;\"> <i class=\"fa fa-sign-out fa-rotate-180\"></i> </div>'),
(131, '	<div class=\"espera_nome_cliente\" id_guiche=\"126\">Sem Cliente - 126</div>	<div class=\"espera_lista_itens_left\">Pizza Mussarela<br></div>	<div class=\"espera_lista_itens_right\">20.00<br></div>	<div class=\"espera_titulo\">		<div class=\"espera_mesa\" id_mesa_c=\"1\">Mesa: M01		</div>		<div class=\"espera_total\">			R$ 20.00		</div>	</div>	<div class=\"espera_nota_completa\" style=\"display:none;\"><div id=\"cupom_id_nota\" id_nota=\"131\" style=\"display:none;\" val_desc=\"\"></div><div class=\"col_1_row_1\">	<div id=\"cupom_cliente\" title=\"Ver Histórico\" cupom_id_cliente=\"\">		<div id=\"cupom_nome\">Sem Cliente</div>		<span id=\"cupom_telefone\"></span>	</div>	<div id=\"cupom_pesquisar_cliente\" title=\"Selecionar Cliente\">		<i class=\"fa fa-search fa-2x\"></i>	</div>	<div id=\"cupom_mesa\" title=\"Selecionar Mesa\" id_mesa_c=\"1\" class=\"mesa_selecionada\">M01</div></div><div class=\"col_1_row_1_5\">	Obs: <input type=\"text\" id=\"obs_pedido\" value=\"\"></div><div class=\"col_1_row_2\">	<div class=\"produto_atual_left\">		<div id=\"cupom_id_prod\" id_prod=\"3\"></div>		<div id=\"cupom_quantidade\" value=\"1\"></div>		<div id=\"cupom_descricao\">Pizza Mussarela 500 g</div>	</div>	<div class=\"produto_atual_right\">		<div id=\"cupom_unitario\">Unitário (R$)</div>		<div id=\"cupom_valor_unitario\">20.00</div>	</div></div><div class=\"col_1_row_3\" style=\"height: 605px;\">	<div class=\"col_1_row_3\" id=\"cupom_nota\" style=\"height: 605px;\"><div class=\"cupom_produto odd lista_odd\" id_prod=\"3\">	<div>		<div class=\"cupom_produto_col1\">		    <div class=\"cupom_produto_quantidade\" value=\"1\">Nome</div>		    <div class=\"cupom_produto_descricao\">Pizza Mussarela 500 g</div>		</div>		<div class=\"produto_produto_deletar\" title=\"Remover Produto\">		    <i class=\"fa fa-trash-o fa-2x\"></i>		</div>		<div class=\"cupom_produto_col3\">		    <div class=\"cupom_produto_total\">Total (R$)</div>		    <div class=\"cupom_produto_valor_total\">20.00</div>		</div>		<div class=\"cupom_produto_col2\">		    <div class=\"cupom_produto_unitario\">Valor (R$)</div>		    <div class=\"cupom_produto_valor_unitario\">20.00</div>		</div>	</div>	<div style=\"display:none\">		<div class=\"cupom_produto_mensagem_del\">			Deseja deletar esse Produto?		</div>		<div class=\"cupom_produto_cancel_del\" title=\"Não\">		    <i class=\"fa fa-times fa-2x\"></i>		</div>		<div class=\"cupom_produto_conf_del\" title=\"Sim\">		    <i class=\"fa fa-check fa-2x\"></i>		</div>	</div></div></div></div><div class=\"col_1_row_4\">	<div>		<div id=\"cupom_cancelar\" title=\"Cancelar Pedido\">			<i class=\"fa fa-trash-o fa-2x\"></i><br>Cancelar		</div>		<div id=\"cupom_espera\" title=\"Colocar Pedido em Espera\">			<i class=\"fa fa-exchange fa-2x\"></i><br>Em Espera		</div>		<div id=\"cupom_receber\" title=\"Fechar Pedido\">			<i class=\"fa fa-money fa-2x\"></i><br>Receber		</div>		<div id=\"cupom_total\">			<span>A RECEBER (R$)</span>			<p>105.00</p>		</div>	</div>	<div style=\"display:none\">		<div class=\"cupom_pedido_cancel_del\" title=\"Não\">			<i class=\"fa fa-times fa-3x\"></i>		</div>		<div class=\"cupom_pedido_conf_del\" title=\"Sim\">			<i class=\"fa fa-check fa-3x\"></i>		</div>		<div class=\"cupom_pedido_mensagem_del\">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class=\"espera_item_editar\" style=\"display: none;\"> <i class=\"fa fa-sign-out fa-rotate-180\"></i> </div>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `unidade` varchar(5) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `adicional` tinyint(1) NOT NULL DEFAULT '0',
  `imprimir` tinyint(4) NOT NULL,
  `imagem` varchar(40) NOT NULL DEFAULT 'sem_imagem.png',
  `valor` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `descricao_completa` longtext NOT NULL,
  `data_registro` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categoria`, `nome`, `descricao`, `unidade`, `quantidade`, `adicional`, `imprimir`, `imagem`, `valor`, `status`, `descricao_completa`, `data_registro`) VALUES
(3, 1, 'Pizza Mussarela', '', 'g', 500, 0, 1, 'Pizza8.png', 20, 1, '', '27/05/2019 19:43:39'),
(2, 2, 'Chopp', '', 'ml', 300, 0, 1, 'cerveja3.png', 8, 1, '', '27/05/2019 19:30:26'),
(10, 1, 'Portuguesa', '', 'g', 500, 0, 1, 'Pizza61.png', 25, 1, '', '27/05/2019 19:45:15'),
(5, 4, 'Vinho cabernet sauvignon', '', 'l', 1, 0, 1, 'Vinho11.png', 10, 1, '', '27/05/2019 19:35:20'),
(6, 5, 'Queijo', '', 'g', 100, 1, 1, 'Ativo_63.png', 2, 1, 'adicional ', '27/05/2019 19:43:48'),
(7, 5, 'Presunto', '', 'g', 300, 1, 1, 'Ativo_72.png', 3, 1, '', '27/05/2019 19:43:55'),
(8, 2, 'Suco Laranja', '', 'ml', 300, 0, 1, 'Bebida8.png', 5, 1, '', '27/05/2019 19:33:58'),
(9, 4, 'CARMÉNÈRE 2016', '', 'g', 500, 0, 1, 'Vinho12.png', 50, 1, '', '27/05/2019 19:34:59'),
(11, 2, 'Coca Cola', '', 'ml', 600, 0, 1, 'Bebida9.png', 7, 1, '', '27/05/2019 19:55:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `notas` longtext NOT NULL,
  `data_log` varchar(20) NOT NULL,
  `data_registro` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `telefone`, `celular`, `senha`, `status`, `notas`, `data_log`, `data_registro`) VALUES
(1, 'Administrador', 'admin', '(00) 0000-0000', '(00) 0000-0000', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', 1, '', '21/05/2014 09:56:26', '25/06/2015 10:26:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guiche`
--
ALTER TABLE `guiche`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itens_pedidos`
--
ALTER TABLE `itens_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos_espera_html`
--
ALTER TABLE `pedidos_espera_html`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guiche`
--
ALTER TABLE `guiche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `itens_pedidos`
--
ALTER TABLE `itens_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=934;

--
-- AUTO_INCREMENT for table `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `pedidos_espera_html`
--
ALTER TABLE `pedidos_espera_html`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

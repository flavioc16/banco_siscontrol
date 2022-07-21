-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Jul-2022 às 13:59
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `siscontrol`
--

DELIMITER $$
--
-- Procedimentos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_insert` (`pusuario_usuario` VARCHAR(100), `psenha_usuario` VARCHAR(32))   BEGIN
	INSERT INTO usuario ( usuario_usuario, senha_usuario) VALUES (pusuario_usuario,psenha_usuario);
    
    SELECT * FROM usuario WHERE id_usuario = LAST_INSERT_ID();
    
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(15) NOT NULL,
  `nomeCliente` varchar(100) CHARACTER SET utf8 NOT NULL,
  `apelidoCliente` varchar(100) CHARACTER SET utf8 NOT NULL,
  `enderecoCliente` varchar(100) CHARACTER SET utf8 NOT NULL,
  `telefoneCliente` varchar(100) CHARACTER SET utf8 NOT NULL,
  `limiteCliente` varchar(64) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`, `apelidoCliente`, `enderecoCliente`, `telefoneCliente`, `limiteCliente`) VALUES
(1, 'Dona Amélia', 'amelia Irmã de Dona Ester', 'Sítio Pereiro dos Pedros ', '', ''),
(2, 'Maria Arnilda Matheus', 'Arnilda', 'Sítio Cabeça de Negro', '88997142535', ''),
(3, 'José Alison da Silva', 'jose Alison Visinho', 'Rua Miguel Paulino 409', '88997621470', ''),
(5, 'Ana Carolina da Silva', 'Irmã de Joana', 'Tra. Francisco Pacífico 10', '88997181557', ''),
(11, 'Antonio Carlos Vieira', 'Antonio Alejado ', 'Tra. Matriz Valdivino 239', '88999588433', ''),
(29, 'ângela', 'angela - Irmã de Naldo', 'José Alves Caetano 102', '88997967214', ''),
(31, 'Aline', 'Aline Amiga', 'Não informado', '', ''),
(33, 'André Barros', 'andre Catraca', 'Coab', '', ''),
(34, 'Aurilia', 'aurilia Filha de Deda do Gás', 'Não informado', '', ''),
(35, 'Aíla ', 'Aila Lojão da fé', 'Não informado', '', ''),
(36, 'Aurilânio', 'Aurilanio', 'Não informado', '', ''),
(37, 'Baixote', '', 'Cícero do Monte', '88999646617', ''),
(38, 'Maria Ambrozina de Lima ', 'Bobóia', 'Av. José Fares Lopes 285', '88996119753', ''),
(39, 'Cleide', 'Boa Vista', 'Sítio Boa Vista', '', ''),
(40, 'Chico Antonio ', 'Chico Mala', 'Barragem', '88997807307', ''),
(41, 'Maria Socorro Rodrigues', 'Coca do Calado', 'Sítio Calado 51', '88996199413', ''),
(42, 'Casa Castro', '', 'Miguel Custódio 294', '', ''),
(43, 'Francisco da Silva', 'Chagão', 'Rua: Santo Antonio 33', '88999305280', ''),
(44, 'Maria do Carmo', 'Cacau e Isabel', 'Rua: José de Matos 16', '88999510693', ''),
(45, 'Chico Preto', '', 'Barragem', '', ''),
(46, 'Francisco Chagas Gonçalves ', 'Chaga do Calado', 'Sítio Calado ', '', ''),
(47, 'Cineudo Gari', '', 'Bairro São Geraldo', '', ''),
(48, 'Francisca Das Chagas', 'Chaguinha Ribeiro', 'Antonio Valdivino da Costa', '88997003587', ''),
(49, 'Claudio Flamengo', '', 'Não informado', '', ''),
(50, 'Cicero do Cochedo', '', 'Sítio Rochedo', '', ''),
(51, 'Maria das Graças Mariz duó', 'Dona Duo', 'Rua: José de Matos 16 N° 82', '88999391432', ''),
(52, 'Dionizio Bernardes Monte', 'Dionizio Cajazeiras ', 'Sitio Rochedo ', '', ''),
(53, 'Dotinha', '', 'Não informado', '', ''),
(54, 'Dona Marlene Sitio Saco', '', 'Não informado', '', ''),
(55, 'Damiana da Silva Silvestre', 'Damiana Magrinha', 'São José 138', '88998131875', ''),
(56, 'José Alério', 'Deda do Gás', 'Fares Lopes 223', '88997094526', ''),
(57, 'Maria Marlete Vieira', 'Dona Marlete DNOCS', 'José Alves Caetano 132', '88999355553', ''),
(58, 'Maria Duce Custódio', 'Duce Sogra de Jonas', 'São José 157', '88997276623', ''),
(59, 'Dona Zuleide DNOCS', '', 'Não informado', '', ''),
(60, 'Daniel Construção', '', 'Não informado', '', ''),
(61, 'Dona Vilani ', '', 'Cabeça de Negro', '', ''),
(62, 'Edina ', 'Edna Merendeira', 'Não informado', '', ''),
(63, 'Francisca Nelene Vicente ', 'Evilene mãe de Carlim', 'Isac Candido 138', '88999863420', ''),
(64, 'Maria Eliane Gomes da Silva', 'Eliana PMO', 'Bairro de Fátima', '88997856388', ''),
(65, 'Francisca Estelita Dantas', 'Estelita da Barragem', 'Barragem', '88999138745', ''),
(66, 'Marcio Eber', 'Ebinho Mirante', 'Não informado', '', ''),
(67, 'Eliane', 'Lojão da fé', 'Não informado', '', ''),
(68, 'Francisca Paula Vieira da Silva', 'Francisca Hospital', 'Barbadiana 11', '88999020883', ''),
(69, 'Lucielma', 'Mãe de Igor', 'Não informado', '', ''),
(70, 'Erondir Primo', 'Irmão de Cosme', 'Bairro São Geraldo', '', ''),
(73, 'Daniel', 'Daniel Pedreiro', 'Multirão Garcia', '', ''),
(74, 'Fabia PMO', '', 'Não informado', '', ''),
(75, 'Fabricia', '', 'Não informado', '', ''),
(76, 'Francimeire', 'Mãe de Claudio Nascimento', 'Cícero do Monte', '', ''),
(78, 'Francisco de Olindorina', '', 'Clodes Campelo', '', ''),
(79, 'Marciana Sousa de Castro', 'Marcinha Irmã', 'Sítio Macapa', '', ''),
(80, 'Marcia Mãe de Cristian', '', 'Cícero do Monte - 125', '88999368121', ''),
(81, 'Aldenice do Carmo Sousa ', 'Mamae', 'Miguel Custódio 11', '', ''),
(82, 'Marlene', 'Mãe de Mairle', 'Multirão Garcia', '', ''),
(83, 'Tamires ', 'Amiga de Joezia', 'Multirão Garcia', '', ''),
(84, 'Mayrla Vilar Soares', 'mairla Irmã de Marcilio', 'Pedro José Melo', '88999737314', ''),
(85, 'Ely', 'Tia Eli', 'Não informado', '', ''),
(86, 'Wilson Lapó', 'Marido de Nina', 'Cícero do Monte', '', ''),
(87, 'Maria Raquel Campos Lima', 'Raquel de Devan', 'Multirão Bom Jesus', '88997685879', ''),
(88, 'Nazinha', 'Nazinha de Damiana', 'Não informado', '', ''),
(89, 'Edineuma Brasil', 'Neuminha de Mãe', 'Antonio Amaro da Costa', '88997280821', ''),
(90, 'Gilvan Soares de Sousa', 'Gilvan PMO', 'Vila do Dnocs - 190', '88996274251', ''),
(91, 'francisco nóbio da maceno', 'nobio dNOCS', 'rua barbadiana - 18', '88999355049', ''),
(92, 'jocielda soares batista', 'jocielda professora', 'luiza viera da silva ', '88997089107', ''),
(93, 'maria valda ribeiro', 'valda ribeiro', 'travessa roberto rolim - 18', '88999884486', ''),
(94, 'luzimar ', 'luzimar mototaxi', 'Rua Zuca lira', '', ''),
(95, 'silvia mara pocidonia ', 'Silvinha De Ismael', 'Multirão Garcia', '88998958911', ''),
(96, 'sebastião alves soares', 'Sebastiao Das Aguas', 'Não informado', '', ''),
(97, 'pai de tata', '', 'Não informado', '', ''),
(99, 'Patricia bento da silva', 'Patricia Vizinha De Joezia', 'Miguel Custódio', '88996821612', ''),
(100, 'joezia sousa de castro', 'joezia irmã', 'Miguel Custódio 167', '', ''),
(101, 'zé francisco', 'ze francisco', 'Não informado', '', ''),
(102, 'Flavio Sousa de Castro', 'Cavalo', 'Miguel Custódio 294', '', ''),
(103, 'ivandi viana nogueira', 'ivandi multirao', 'multirão bom jesus', '88996556458', ''),
(104, 'toinha machado vicente', 'toinha mae de ryanderson', 'Cícero do Monte - 08', '88996167387', ''),
(105, 'joão rodrigues barbosa', 'joao viada', 'bsg', '88996611512', ''),
(106, 'elaine vieira lima', 'nadia', 'São José 180', '88997072653', ''),
(107, 'reginaldo batista', 'naldo da barragem', 'sitio mata fresca', '88996553549', ''),
(108, 'naninha prima', 'nanhinha', 'bsg', '', ''),
(109, 'maroísa viana nogueira', 'maroisa de didi', 'Bairro de Fátima ', '88996556458', ''),
(110, 'mikael ', 'mikael motos', 'avenida fares lopes', '', ''),
(111, 'maria regilene vieira da silva', 'regilene salgado', 'bsg', '88999617587', ''),
(112, 'francisco gonçalves sobrinho', 'pantico pai de kecy', 'Cícero do Monte', '88999398958', ''),
(113, 'zefa ', 'zefa da barragem', 'barragem', '', ''),
(114, 'gordin do camarão', 'gordim', 'Não informado', '', ''),
(115, 'geraldo vidal', '', 'Não informado', '', ''),
(116, 'iraci clemente', 'irací ', 'avenida brasil', '88999984666', ''),
(117, 'simone alves viera', 'irmã de silvinha', 'Isac Candido 193', '88997033554', ''),
(118, 'maria de lourdes custódio', 'irmã de raimunda coelho', 'sitio saco', '88997821482', ''),
(119, 'hernancir moreira de sousa\'', 'hernancir DNOCS', '1° de setembro - 395', '85999509579', ''),
(120, 'luiz batista neto', 'luis das aguas', 'sitio buqueirão', '', ''),
(121, 'lécia sousa lima', 'lecia do bar', 'Cícero do Monte - 166', '88992412160', ''),
(122, 'lindalva valente da silva', 'lindava mae de rafaela', 'sitio saco', '88997641180', ''),
(123, 'luana lorrayne p de lima', 'luana mulher de junior mecanico', 'Clodes Campelo - 118', '88996190222', ''),
(124, 'lucilene andrade santana', 'lucilene PMO', 'josé custódio sobrinho ', '88997624088', ''),
(125, 'joelma sousa de castro', 'joelma irmã', 'travessa nezim - 88', '88999314982', ''),
(126, 'maria zuleide dantas', 'maria zuleide', 'Miguel Custódio - 448', '88999885524', ''),
(127, 'maria do céu bento custódio', 'maria do ceu', 'travessa lima verde', '88997226868', ''),
(128, 'josé porfirio de lima', 'Galego Perto De Mãe', 'miguel paulino - 135', '', ''),
(129, 'maria helena de carvalho', 'helena mae de fatinha', 'Miguel Custódio - 492', '88999762347', ''),
(130, 'ozirene lorenzo custódio', 'Ozirene Lojinha', 'val. prahedes da costa 285', '88996521908', ''),
(131, 'dona conceição', 'Mulher Do Salgado', 'raimundo moreira', '', ''),
(141, 'jessica ', 'jessica santarém ', 'santarém', '', ''),
(142, 'maésio ', 'maesio da ilha', 'Não informado', '', ''),
(143, 'renan ', 'renan de padre', 'Não informado', '', ''),
(144, 'maria do rosário', 'maria do rosario', 'Não informado', '', ''),
(145, 'marcileide ferreira araújo', 'marcileide nora de damiana', 'val. prachedes da costa 480', '88993299359', ''),
(146, 'maria joemi de oliveira', 'joemi', 'travessa CSU - 45', '88996891420', ''),
(147, 'regina vicente da conceição', 'regina magrinha', 'avenida brasil - 165', '', ''),
(148, 'juliana ', 'juliana da padaria', 'Não informado', '', ''),
(149, 'josé bomfim alves', 'jose bomfim', 'vaildivino prachedes da costa', '', ''),
(150, 'joelma oliveira fernades', 'Joelma De Tudinha', 'republica - 69', '88997640585', ''),
(151, 'josué do monte viana', 'jusue da rifa', 'trav miguel custodio - 04', '88999847125', ''),
(152, 'jordana soares batista', 'Jordana Enfermeira', 'luiza viera da silva - 91', '88996773026', ''),
(153, 'joaquim lopes melo', 'seu joaquim', 'avenida brasil', '', ''),
(154, 'jucier', 'jucier das aguas', 'aguas', '', ''),
(155, 'josé felix de sousa filho', 'jose felix', 'rua são jose -bSG - 07', '88999341624', ''),
(156, 'lúcia de castro', 'lucia prima', 'BSG', '', ''),
(157, 'lucia de seu dalvino', '', 'Não informado', '', ''),
(158, 'leonaldo', '', 'Não informado', '', ''),
(159, 'junior pVC', '', 'Não informado', '', ''),
(160, 'joelma da 16', ' joemal amiga', 'Rua: José de Matos 16', '', ''),
(161, 'maria gonçalves clemente', 'maria clemente', 'sitio calado ', '', ''),
(162, 'josefa maria de lima bravo', 'mae de jessica', 'Trav Francisco Pacífico - 19', '88998654055', ''),
(163, 'marcílio vilar', 'marcilio', 'Não informado', '', ''),
(164, 'maria viana', '', 'travessa 28 de maio - 76', '88999788222', ''),
(165, 'mãe de tamires', 'mae de tamires', 'Não informado', '', ''),
(166, 'ana mikaelly vieira', 'mikaelly de devan', 'coab - 77', '88998638075', ''),
(167, 'marcão ', 'marcao PMO ', 'Não informado', '', ''),
(168, 'maria lucivania ', 'maria prima', 'bsg', '88996313223', ''),
(169, 'maria marluci nunes', 'marluci mae de cicim', 'valdivino prahedes da costa', '88999095436', ''),
(170, 'marcelia sousa de castro', 'marcelia irma', 'Miguel Custódio 294', '88996241410', ''),
(171, 'marcia ', 'marcia mae do kel', 'Não informado', '88999911370', ''),
(172, 'nicleide vicente freitas', 'nicleide vicente', 'raimundo moreira araujo - 55', '', ''),
(173, 'orlandin', 'orlandin irmao de odilon', 'Não informado', '', ''),
(174, 'pai de nadia', 'pai de elaine', 'são josé', '', ''),
(175, 'egberto nogueira cruz', 'Picapal', 'Isac Candido ', '', ''),
(176, 'perpetua soares batista', 'petinha das aguas', 'sitio buqueirão', '', ''),
(177, 'cicero nunes de castro', 'pai luquinha', 'Miguel Custódio 167', '', ''),
(178, 'maria rafaela valentim', 'rafaela das aguas', 'sitio saco', '88999619548', ''),
(179, 'rita de negreiro', '', 'rua 17', '88997130210', ''),
(180, 'francisca régia da costa matos', 'regia BSG', 'professor joão silva - 290', '88997948725', ''),
(181, 'rita pinheiro', '', 'raimundo alves de lima - 32', '', ''),
(182, 'antonio oliveira silva', 'sombra mototaxi', 'vila nova - 60', '88998564316', ''),
(183, 'samuel romao', 'samuel veriador', 'Não informado', '', ''),
(184, 'valquiria bravo piu', 'valquiria', 'val. prachedes da costa 192', '88997807356', ''),
(185, 'francisco talisson', 'thalisson', 'Isac Candido - 03', '85996073832', ''),
(186, 'francisco roberto silva', 'tico fateiro', 'manoel rodrigues - 04', '88998592377', ''),
(187, 'tiquinho', 'tiquinho da barragem', 'barragem', '', ''),
(188, 'francisca taiane alves', 'taiane', 'luiz pinheiro sousa - 40', '88996461504', ''),
(189, 'josé barbosa vieira', 'ze miudo', 'sitio saco', '88998737672', ''),
(190, 'josefa ribeiro da silva', 'zefinha de ze neudo', 'sitio boa vista', '88996180654', ''),
(191, 'zé nilton', 'mosquito', 'Miguel Custódio - 26', '88994912954', ''),
(192, 'pai de cicero gatim', '', 'calado', '', ''),
(193, 'pa virada', '', 'vila', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `idCompra` int(15) NOT NULL,
  `dataCompra` date NOT NULL,
  `descricaoCompra` varchar(500) CHARACTER SET utf8 NOT NULL,
  `totalCompra` float NOT NULL,
  `tipoCompra` int(15) NOT NULL,
  `idCliente` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`idCompra`, `dataCompra`, `descricaoCompra`, `totalCompra`, `tipoCompra`, `idCliente`) VALUES
(33, '2022-06-15', 'Compras', 131, 0, 11),
(34, '2022-06-16', 'Dinheiro', 25, 0, 11),
(35, '2022-06-17', 'Restante', 52, 0, 3),
(36, '2022-06-15', 'Porco', 92, 0, 2),
(37, '2022-06-28', 'Restante', 10, 1, 1),
(38, '2022-06-13', 'Restante', 14, 0, 5),
(39, '2022-05-04', 'Restante', 11, 0, 31),
(40, '2022-05-12', 'Carne Moída', 37, 0, 31),
(41, '2022-06-02', 'Porco', 40, 0, 29),
(42, '2022-05-24', 'Correntezinha', 35, 0, 33),
(43, '2022-04-25', 'Panelada', 23, 0, 35),
(44, '2022-06-02', 'Bisteca, Bife', 90, 0, 36),
(49, '2022-05-28', 'Compras', 20, 0, 39),
(50, '2022-06-17', 'Frango', 62, 0, 39),
(52, '2022-06-07', 'Compras', 59, 0, 41),
(53, '2022-06-08', 'Coco Ralado, Nata', 26, 0, 41),
(54, '2022-06-04', 'Frango', 50, 0, 41),
(55, '2022-06-07', 'Restante', 33, 0, 41),
(56, '2022-06-14', 'Porco', 47, 0, 41),
(57, '2022-06-13', 'Frango', 36, 0, 42),
(58, '2022-06-14', 'Peixe, tirpa', 41, 0, 42),
(64, '2022-05-04', 'Porco', 55, 0, 45),
(65, '2022-05-19', 'Frango, Porco, Dinheiro', 95, 0, 45),
(66, '2022-06-10', 'Frango, Linguiça', 32, 0, 47),
(68, '2022-04-28', 'Frango, Linguiça', 78, 0, 50),
(69, '2022-05-28', 'Carneiro', 126, 0, 50),
(70, '2022-05-04', 'Panelada', 50, 0, 50),
(71, '2022-05-11', 'Moída, Costela', 98, 0, 50),
(72, '2022-06-07', 'Carneiro', 42, 0, 51),
(73, '2022-06-02', 'Porco, Boi', 120, 0, 51),
(74, '2022-06-06', 'Fígado, Panelada', 71, 0, 51),
(75, '2022-06-10', 'Frango, Bife', 112, 0, 51),
(76, '2022-06-14', 'Carneiro', 50, 0, 51),
(77, '2022-06-17', 'Boi', 80, 0, 51),
(78, '2022-06-13', 'Compras', 102, 0, 52),
(79, '2022-06-07', 'Restante', 53, 1, 54),
(80, '2022-06-07', 'Compras', 94, 0, 54),
(81, '2022-05-31', 'Restante', 33, 0, 55),
(82, '2022-05-31', 'Compras', 119, 0, 55),
(83, '2022-06-06', 'Panelada', 46, 0, 55),
(84, '2022-06-07', 'Mão de Vaca', 43, 0, 55),
(85, '2022-06-02', 'Compras', 65, 0, 57),
(86, '2022-06-03', 'Frango, Bife', 77, 0, 57),
(87, '2022-06-13', 'Figado', 27, 0, 58),
(88, '2022-05-06', 'Restante', 1380, 0, 59),
(89, '2021-10-11', 'Picanha', 55, 0, 60),
(90, '2021-10-11', 'Boi', 44, 0, 60),
(91, '2022-06-02', 'Compras', 239, 0, 61),
(92, '2022-06-17', 'Restante', 53, 0, 62),
(93, '2022-06-17', 'Compras', 195, 0, 62),
(94, '2022-06-01', 'Porco', 55, 0, 63),
(95, '2022-06-06', 'Compras', 149, 0, 63),
(96, '2022-06-04', 'Frango, Boi', 50, 0, 63),
(97, '2022-06-09', 'Linguiça', 50, 0, 63),
(98, '2022-06-13', 'Panelada', 46, 0, 63),
(99, '2022-06-16', 'Frango', 42, 0, 63),
(100, '2022-05-03', 'Restante', 4, 0, 64),
(101, '2022-06-07', 'Restante', 44, 0, 65),
(102, '2022-05-23', 'Restante', 470, 0, 66),
(103, '2022-05-16', 'Compras', 24, 0, 67),
(104, '2022-06-06', 'Panelada', 46, 0, 67),
(105, '2022-06-07', 'Compras', 10, 0, 67),
(106, '2022-06-20', 'Total Somado', 82, 0, 68),
(107, '2022-05-21', 'Frango, Carne de Sol', 54, 0, 68),
(108, '2021-05-23', 'Boi, Empanado', 58, 0, 68),
(109, '2022-05-23', 'Restante mes passado', 25, 0, 68),
(110, '2022-05-25', 'Compras', 87, 0, 68),
(111, '2022-05-27', 'Frango, Boi', 77, 0, 68),
(112, '2022-05-28', 'Carne Moída', 46, 0, 68),
(113, '2022-05-30', 'Carne Moída', 42, 0, 68),
(114, '2022-05-31', 'Salsicha, Porco', 60, 0, 68),
(115, '2022-06-02', 'Frango', 29, 0, 68),
(116, '2022-06-03', 'Compras', 97, 0, 68),
(117, '2022-06-06', 'Costela', 51, 0, 68),
(118, '2022-06-08', 'Filé de Peixe', 32, 0, 68),
(119, '2022-06-10', 'Compras', 103, 0, 68),
(120, '2022-06-13', 'Figado', 25, 0, 68),
(121, '2022-06-16', 'Compras', 135, 0, 68),
(123, '2022-06-12', 'Carneiro, Porco', 120, 0, 46),
(124, '2022-06-18', 'Carneiro', 60, 0, 69),
(125, '2022-06-18', 'Frango, Porco', 72, 0, 68),
(126, '2022-06-18', 'Frango, Fuçura, Dinheiro', 77, 0, 11),
(128, '2022-06-18', 'Linguiça', 30, 0, 62),
(129, '2022-06-18', 'Porco, Bife', 199, 0, 38),
(130, '2022-06-18', 'Costela, Porco, Linguiça, Bife', 300, 0, 70),
(169, '2022-06-20', 'Saldo', 7, 1, 49),
(194, '2022-06-18', 'Restante', 50, 1, 37),
(195, '2022-06-20', 'Porco', 51, 0, 54),
(197, '2022-06-21', 'Compra', 61, 0, 41),
(198, '2022-06-21', 'Compra', 17, 0, 42),
(199, '2022-06-20', 'Boi', 45, 0, 65),
(200, '2022-06-20', 'Moída', 20, 0, 63),
(201, '2022-04-12', 'Queijo, Nata', 50, 0, 74),
(202, '2022-04-14', 'Frango, linguiça', 32, 0, 74),
(203, '2022-06-07', 'Frango', 46, 0, 75),
(204, '2022-06-10', 'Porco', 47, 0, 75),
(205, '2022-06-11', 'Frango', 44, 0, 75),
(206, '2022-06-14', 'Moída, Frango', 63, 0, 75),
(207, '2022-06-17', 'Compras', 106, 0, 75),
(208, '2022-06-21', 'Frango', 39, 0, 75),
(209, '2022-06-20', 'Compras', 62, 0, 68),
(210, '2022-06-22', 'Panelada', 55, 0, 63),
(213, '2022-06-22', 'Panelada', 80, 0, 46),
(214, '2022-06-22', 'Frango', 37, 0, 49),
(215, '2022-06-22', 'Boi', 80, 0, 51),
(216, '2022-06-21', 'Porco, Humburguer', 32, 0, 51),
(217, '2022-06-22', 'Panelada', 18, 0, 73),
(218, '2022-06-22', 'Panelada', 49, 0, 62),
(219, '2022-06-22', 'Picanha, Filé', 105, 0, 78),
(220, '2022-06-22', 'Frango', 38, 0, 79),
(221, '2022-06-14', 'Restante', 413, 1, 80),
(222, '2022-06-14', 'Compras mês que vem', 230, 0, 80),
(223, '2022-06-14', 'Ovo', 28, 0, 80),
(224, '2022-06-22', 'Compras', 161, 0, 80),
(225, '2022-06-02', 'Compras', 60, 0, 81),
(226, '2022-06-06', 'Compras', 110, 0, 81),
(227, '2022-06-09', 'Restante', 100, 0, 81),
(228, '2022-06-13', 'Compras', 211, 0, 81),
(229, '2022-06-18', 'Frango', 39, 0, 81),
(230, '2022-06-22', 'Compras', 174, 0, 81),
(231, '2022-06-03', 'Restante', 8, 0, 82),
(232, '2022-06-07', 'Bife', 20, 0, 82),
(233, '2022-06-08', 'Costela', 26, 0, 82),
(234, '2022-06-10', 'Corredor', 22, 0, 82),
(235, '2022-06-13', 'Compras', 25, 0, 82),
(236, '2022-06-17', 'Bife', 20, 0, 82),
(237, '2022-06-12', 'Mão de Vaca', 12, 0, 82),
(238, '2022-06-18', 'Produtos de Cabelo', 75, 0, 83),
(239, '2022-06-22', 'Panelada', 18, 0, 83),
(240, '2022-06-10', 'Dinheiro próximo mês', 130, 0, 83),
(241, '2022-05-11', 'Compras', 59, 0, 84),
(242, '2022-06-06', 'Ovos, bife, carne moída', 60, 0, 84),
(243, '2022-06-16', 'Bife, moída', 40, 0, 84),
(244, '2022-06-22', 'Restante', 73, 1, 85),
(246, '2022-06-13', 'Bife', 22, 0, 86),
(247, '2022-06-22', 'Porco, Boi', 62, 0, 86),
(248, '2022-06-07', 'Bife', 52, 0, 87),
(249, '2022-06-22', 'Porco', 30, 0, 87),
(250, '2022-06-15', 'Costela, Moida', 149, 0, 88),
(251, '2022-06-22', 'Boi', 51, 0, 88),
(260, '2022-06-03', 'Restante', 210, 0, 90),
(261, '2022-06-13', 'Panelada, Fígado', 40, 0, 90),
(262, '2022-06-17', 'Frango', 28, 0, 90),
(263, '2022-06-18', 'Dinheiro', 10, 0, 90),
(264, '2022-06-22', 'Toicinho', 12, 0, 90),
(265, '2022-06-22', 'Porco', 78, 0, 69),
(266, '2022-06-23', 'toicinho', 22, 0, 91),
(267, '2022-06-23', 'Mortadela, moida', 40, 0, 92),
(268, '2022-06-23', 'frango', 40, 0, 93),
(269, '2022-06-23', 'Carneiro', 86, 0, 94),
(270, '2022-06-23', 'Carneiro', 28, 0, 51),
(271, '2022-06-23', 'Carneiro', 55, 0, 81),
(272, '2022-06-23', 'Carneiro', 42, 0, 95),
(273, '2022-06-23', 'Frango, Linguiça', 70, 0, 75),
(274, '2022-06-23', 'fígado de galinha', 6, 0, 86),
(275, '2022-06-23', 'porco carneiro', 73, 0, 62),
(276, '2022-06-23', 'carneiro, frango, carne de sol', 128, 0, 68),
(277, '2022-06-23', 'Carne Moída', 27, 0, 96),
(278, '2022-06-23', 'frango', 26, 0, 97),
(280, '2022-06-23', 'celular de lauanny', 66, 1, 100),
(281, '2022-06-23', 'porco', 5, 0, 101),
(282, '2022-06-04', 'Moída', 43, 0, 91),
(283, '2022-06-21', 'frango', 20, 0, 91),
(284, '2022-06-04', 'Restante', 60, 0, 91),
(285, '2022-06-08', 'restante', 49, 0, 92),
(286, '2022-06-15', 'Compras', 122, 0, 92),
(287, '2022-06-01', 'frango', 49, 0, 93),
(288, '2022-06-06', 'frango', 46, 0, 93),
(289, '2022-06-10', 'Boi', 35, 0, 93),
(290, '2022-06-07', 'Compras', 127, 0, 94),
(291, '2022-05-31', 'restante ', 33, 0, 94),
(292, '2022-06-17', 'pescoço', 25, 0, 95),
(293, '2022-06-21', 'porco', 23, 0, 95),
(294, '2022-06-13', 'costela', 45, 0, 96),
(295, '2022-05-30', 'costela', 54, 0, 97),
(296, '2022-06-23', 'Restante', 286, 1, 100),
(297, '2022-05-30', 'natura', 470, 0, 100),
(298, '2022-06-24', 'porco, frango , dinheiro', 167, 0, 83),
(299, '2022-06-24', 'celular', 500, 1, 83),
(301, '2022-06-24', 'boi', 50, 0, 103),
(302, '2022-06-24', 'frango', 22, 0, 95),
(303, '2022-06-02', 'Restante', 80, 0, 104),
(304, '2022-06-03', 'Frango', 50, 0, 104),
(305, '2022-06-06', 'Compras', 50, 0, 104),
(306, '2022-06-13', 'Compras', 78, 0, 104),
(307, '2022-06-15', 'toicinh, frango, moida', 75, 0, 104),
(308, '2022-06-20', 'Compras', 105, 0, 104),
(309, '2022-06-24', 'Porco', 68, 0, 104),
(310, '2022-06-11', 'Restante', 43, 0, 105),
(311, '2022-06-13', 'boi', 91, 0, 105),
(312, '2022-06-24', 'bife, toicinho', 69, 0, 105),
(313, '2022-06-24', 'porco , dinheiro', 145, 0, 100),
(314, '2022-06-11', 'frango', 43, 0, 106),
(315, '2022-06-23', 'panelada', 35, 0, 106),
(316, '2022-06-18', 'frango', 40, 0, 106),
(317, '2022-06-20', 'Frango', 25, 0, 106),
(318, '2022-06-24', 'porco, frango', 48, 0, 106),
(319, '2022-05-14', 'porco, carne de sol', 109, 0, 107),
(320, '2022-05-20', 'porco', 90, 0, 107),
(321, '2022-05-21', 'frango', 44, 0, 107),
(322, '2022-06-20', 'porco', 84, 0, 107),
(323, '2022-06-24', 'porco', 99, 0, 107),
(324, '2022-06-24', 'costela de gado', 30, 0, 108),
(325, '2022-06-02', 'porco, frango', 116, 0, 109),
(326, '2022-06-24', 'frango', 25, 0, 109),
(327, '2022-06-13', 'bife', 85, 0, 110),
(328, '2022-06-14', 'porco', 75, 0, 110),
(329, '2022-06-24', 'porco, boi', 102, 0, 110),
(330, '2022-06-24', 'costela de boi', 25, 0, 84),
(331, '2022-06-24', 'bife, porco', 81, 0, 58),
(332, '2022-06-24', 'salsicha', 10, 0, 41),
(333, '2022-06-13', 'compras', 54, 0, 111),
(334, '2022-06-20', 'boi, linguiça', 63, 0, 111),
(335, '2022-06-24', 'compras', 50, 0, 111),
(340, '2022-04-20', 'compra churrasco', 155, 0, 114),
(341, '2022-05-10', 'buchada', 90, 0, 114),
(342, '2022-05-12', 'queijo, figado, frango', 114, 0, 114),
(343, '2022-06-23', 'buchada', 95, 0, 114),
(344, '2022-06-08', 'compras', 287, 0, 115),
(345, '2022-06-14', 'Compras', 198, 0, 115),
(346, '2022-06-07', 'Compras', 42, 0, 116),
(347, '2022-06-09', 'frango', 17, 0, 116),
(348, '2022-06-23', 'picadinho', 30, 0, 116),
(349, '2022-06-18', 'frango, carneiro', 77, 0, 116),
(351, '2022-05-26', 'frango, boi', 96, 0, 118),
(352, '2022-04-02', 'boi', 87, 0, 119),
(353, '2022-04-07', 'porco', 55, 0, 119),
(355, '2022-04-16', 'compras', 126, 0, 119),
(356, '2022-05-07', 'Restante', 26, 0, 120),
(357, '2022-06-07', 'frango, porco', 110, 0, 120),
(359, '2022-06-01', 'Restante', 26, 1, 122),
(361, '2022-04-01', 'Restante', 195, 0, 123),
(362, '2022-04-19', 'Restante', 149, 0, 123),
(363, '2022-04-20', 'Restante', 50, 0, 123),
(364, '2022-04-20', 'Compras', 70, 0, 123),
(365, '2022-06-14', 'Restante', 92, 0, 124),
(366, '2022-06-25', 'Restante', 166, 1, 43),
(368, '2022-06-25', 'troicinho', 20, 0, 69),
(371, '2022-05-27', 'Restante', 25, 0, 126),
(372, '2022-05-27', 'porco, figado', 105, 0, 126),
(373, '2022-06-25', 'Carne Moída', 38, 0, 126),
(374, '2022-06-14', 'Toicinho, figado', 33, 0, 127),
(375, '2022-06-25', 'Compras', 61, 0, 127),
(376, '2022-06-25', 'Frango, Porco', 121, 0, 68),
(377, '2022-06-25', 'Porco', 58, 0, 128),
(378, '2022-06-25', 'Frango', 30, 0, 75),
(379, '2022-06-25', 'pescoço', 22, 0, 76),
(380, '2022-06-20', 'Restante', 48, 0, 76),
(381, '2022-06-20', 'porco, Fígado ', 50, 0, 76),
(383, '2022-06-25', 'boi', 55, 0, 99),
(384, '2022-05-14', 'Compras', 15, 0, 130),
(385, '2022-06-17', 'costela, pescoço', 75, 0, 130),
(386, '2022-06-25', 'porco,', 28, 0, 130),
(388, '2022-06-20', 'Restante', 100, 0, 131),
(389, '2022-06-25', 'bife', 25, 0, 131),
(391, '2022-06-02', 'Compras', 22, 0, 116),
(394, '2022-06-17', 'Restante', 27, 0, 141),
(395, '2022-06-27', 'linguiça, boi', 118, 0, 141),
(397, '2022-06-27', 'buchada', 37, 0, 100),
(398, '2022-06-27', 'Bife', 90, 0, 105),
(399, '2022-06-27', 'linguiça', 32, 0, 62),
(400, '2022-06-27', 'buchada', 60, 0, 62),
(401, '2022-06-27', 'Carne Moída, linguiça', 30, 0, 84),
(402, '2022-06-27', 'picadinho', 20, 0, 116),
(404, '2022-06-30', 'restante', 20, 1, 142),
(405, '2022-06-27', 'bife', 55, 0, 143),
(406, '2022-06-27', 'Compras', 86, 0, 111),
(407, '2022-06-27', 'boi', 45, 0, 91),
(408, '2022-06-27', 'Carneiro', 55, 0, 69),
(409, '2022-06-27', 'Porco', 35, 0, 99),
(410, '2022-05-27', 'Compras', 123, 0, 102),
(411, '2022-06-27', 'Carneiro', 25, 0, 58),
(412, '2022-06-28', 'Compras', 180, 0, 144),
(413, '2022-06-16', 'Compras', 228, 0, 145),
(414, '2022-06-28', 'Compras', 190, 0, 145),
(415, '2022-06-28', 'Frango', 60, 0, 92),
(416, '2022-06-07', 'Restante', 57, 0, 146),
(417, '2022-06-28', 'Porco', 28, 0, 146),
(418, '2022-06-28', 'Frango, carneiro', 76, 0, 51),
(419, '2022-06-28', 'compra - mãe', 109, 0, 62),
(420, '2022-06-28', 'Frango', 42, 0, 75),
(421, '2022-06-28', 'carne moida, frango, ovo', 61, 0, 90),
(422, '2022-06-28', 'boi', 54, 0, 104),
(425, '2022-06-28', 'Carneiro', 42, 0, 55),
(426, '2022-06-14', 'tripa, carneiro', 25, 0, 150),
(427, '2022-02-17', 'Restante', 70, 0, 150),
(428, '2022-02-17', 'frango, porco', 76, 0, 150),
(429, '2022-03-03', 'linguiça', 20, 0, 150),
(430, '2022-03-07', 'boi, figado, toicinho', 69, 0, 150),
(431, '2022-03-08', 'frango', 48, 0, 150),
(432, '2022-06-17', 'Frango', 40, 0, 153),
(433, '2022-05-31', 'Compras', 84, 0, 154),
(434, '2022-06-09', 'Compras', 48, 0, 155),
(435, '2022-03-31', 'boi', 80, 0, 156),
(436, '2022-04-16', 'boi', 85, 0, 156),
(437, '2022-06-15', 'Compras', 204, 0, 157),
(438, '2022-01-26', 'Costela, frango', 64, 0, 158),
(439, '2022-06-18', 'total somado', 319, 0, 159),
(440, '2022-06-18', 'buchada', 78, 0, 159),
(441, '2022-04-25', 'Carneiro', 62, 0, 160),
(442, '2022-05-06', 'Carne Moída', 42, 0, 160),
(443, '2022-05-06', 'Carneiro', 60, 0, 160),
(444, '2022-05-23', 'Costela', 76, 0, 160),
(445, '2022-05-25', 'Compras', 93, 0, 161),
(447, '2022-05-28', 'Restante', 10, 0, 163),
(448, '2022-05-28', 'Compras', 171, 0, 163),
(449, '2022-06-18', 'Porco, liguiça', 54, 0, 163),
(450, '2022-06-27', 'Carneiro', 50, 0, 81),
(451, '2022-06-29', 'Restante', 120, 1, 89),
(453, '2022-06-11', 'Restante', 12, 0, 165),
(454, '2022-06-11', 'Queijo, linguiça', 62, 0, 165),
(455, '2022-05-14', 'Compras', 85, 0, 165),
(456, '2022-04-28', 'Bife', 26, 0, 166),
(457, '2022-05-25', 'Porco', 25, 0, 168),
(458, '2022-06-21', 'boi', 32, 0, 168),
(459, '2022-06-16', 'carne de sol, carne moida', 142, 0, 169),
(460, '2022-06-18', 'bife, costela', 80, 0, 169),
(461, '2022-06-21', 'Restante', 794, 0, 170),
(462, '2022-06-22', 'restante', 100, 0, 171),
(463, '2022-06-02', 'Compras', 131, 0, 172),
(464, '2022-06-06', 'banha', 25, 0, 172),
(465, '2022-04-08', 'Compras', 138, 0, 173),
(466, '2022-06-18', 'Porco, Bife', 154, 0, 173),
(467, '2022-06-14', 'Porco', 55, 0, 174),
(468, '2022-06-20', 'porco, boi', 90, 0, 174),
(472, '2022-05-06', 'Restante', 112, 0, 175),
(473, '2022-05-09', 'Carneiro, bife', 75, 0, 175),
(474, '2022-05-16', 'Frango', 14, 0, 175),
(475, '2022-05-23', 'Frango', 8, 0, 175),
(480, '2022-06-08', 'Compras', 102, 0, 147),
(481, '2022-05-30', 'Restante', 48, 1, 178),
(482, '2022-05-30', 'Compras', 82, 0, 178),
(483, '2022-06-02', 'bife', 100, 0, 179),
(484, '2022-06-06', 'Costela', 70, 0, 179),
(485, '2022-06-06', 'Restante', 656, 0, 180),
(488, '2022-06-29', 'restante', 51, 0, 181),
(489, '2022-04-16', 'Porco', 24, 0, 182),
(490, '2022-03-17', 'boi, porco', 93, 0, 183),
(491, '2022-05-11', 'calabresa', 26, 0, 183),
(492, '2022-05-26', 'contra file', 60, 0, 183),
(493, '2022-06-22', 'figado misturado', 88, 0, 183),
(494, '2022-06-03', 'Costela', 50, 0, 184),
(495, '2022-06-14', 'Compras', 80, 0, 184),
(496, '2022-04-30', 'Restante', 718, 0, 185),
(497, '2022-06-29', 'Restante', 250, 1, 186),
(498, '2022-05-19', 'Frango, Boi', 63, 0, 187),
(499, '2022-03-23', 'Restante', 5, 0, 188),
(500, '2022-06-07', 'Carne Moída, costela', 84, 0, 189),
(501, '2022-03-17', 'Porco', 51, 0, 190),
(502, '2022-06-29', 'porco', 30, 0, 103),
(503, '2022-06-29', 'Porco', 22, 0, 62),
(504, '2022-06-29', 'Frango', 31, 0, 63),
(505, '2022-06-29', 'bife', 83, 0, 110),
(506, '2022-06-29', 'Compras', 163, 0, 89),
(507, '2022-06-29', 'moida, salcinha  (mãe)', 52, 0, 89),
(508, '2022-06-29', 'Compras', 86, 0, 68),
(509, '2022-06-29', 'Carne Moída', 44, 0, 189),
(511, '2022-06-29', 'Carne Moída', 32, 0, 99),
(512, '2022-06-29', 'Costela', 40, 0, 124),
(513, '2022-06-29', 'frango', 21, 0, 116),
(514, '2022-06-29', 'Carne Moída', 20, 0, 76),
(515, '2022-06-29', 'Restante', 50, 1, 145),
(519, '2022-06-21', 'Restante', 355, 0, 125),
(520, '2022-06-25', 'Frango', 35, 0, 125),
(521, '2022-06-27', 'buchada', 35, 0, 125),
(522, '2022-06-30', 'Frango, Porco,motandela', 56, 0, 125),
(523, '2022-06-30', 'picadinho', 25, 0, 95),
(524, '2022-06-30', 'Carne Moída', 36, 0, 3),
(525, '2022-07-01', 'Restante', 125, 1, 177),
(526, '2022-07-01', 'boi', 42, 0, 176),
(527, '2022-07-01', 'panelada, figado', 88, 0, 145),
(528, '2022-07-01', 'moisa, frango', 70, 0, 79),
(529, '2022-06-27', 'Restante', 46, 0, 191),
(530, '2022-07-01', 'Panelada', 55, 0, 191),
(531, '2022-07-01', 'calabresa, porco', 66, 0, 89),
(532, '2022-07-01', 'Panelada', 46, 0, 107),
(533, '2022-07-01', 'Porco', 170, 0, 40),
(534, '2022-07-01', 'Costela, boi', 116, 0, 51),
(535, '2022-07-01', 'Compras', 113, 0, 68),
(536, '2022-07-01', 'Frango', 56, 0, 75),
(537, '2022-07-01', 'boi', 41, 0, 76),
(538, '2022-07-01', 'Compras', 58, 0, 122),
(539, '2022-07-01', 'panelada', 47, 0, 192),
(540, '2022-07-01', 'porco', 150, 0, 193);

-- --------------------------------------------------------

--
-- Estrutura da tabela `encomenda`
--

CREATE TABLE `encomenda` (
  `idEncomenda` int(15) NOT NULL,
  `dataEncomenda` date NOT NULL,
  `descricaoEncomenda` varchar(500) CHARACTER SET utf8 NOT NULL,
  `statusEncomenda` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `encomenda`
--

INSERT INTO `encomenda` (`idEncomenda`, `dataEncomenda`, `descricaoEncomenda`, `statusEncomenda`) VALUES
(38, '2022-07-07', 'luciana lojão da fé - buchada', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lembretes`
--

CREATE TABLE `lembretes` (
  `idLembrete` int(15) NOT NULL,
  `codigoProduto` varchar(13) NOT NULL,
  `dataLembrete` date NOT NULL,
  `descricaoLembrete` varchar(500) CHARACTER SET utf8 NOT NULL,
  `statusLembrete` int(15) NOT NULL,
  `idUsuario` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `lembretes`
--

INSERT INTO `lembretes` (`idLembrete`, `codigoProduto`, `dataLembrete`, `descricaoLembrete`, `statusLembrete`, `idUsuario`) VALUES
(48, '2147483641231', '2022-07-12', 'bolacha recheada - fortaleza - reposição : 20', 0, 5),
(49, '2312312311231', '2022-08-01', 'kenner neo - Kenner  - reposição : 15', 1, 5),
(51, '2147483641231', '2022-08-01', 'bolacha recheada - fortaleza - reposição : 5', 0, 5),
(53, '7791293022581', '2022-07-30', 'caminare log - caminare - reposição : 11', 0, 5),
(62, '11', '2022-07-21', '11 - 11 - reposição : 5', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacao`
--

CREATE TABLE `notificacao` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `pedido` varchar(150) NOT NULL,
  `quantidade_item` varchar(500) NOT NULL,
  `valor_total` varchar(50) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `endereco_entrega` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data` datetime NOT NULL,
  `id_usuario` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notificacao`
--

INSERT INTO `notificacao` (`id`, `nome`, `pedido`, `quantidade_item`, `valor_total`, `telefone`, `endereco_entrega`, `status`, `data`, `id_usuario`) VALUES
(80, 'k', 'k', 'k', '1', '1', '1', '1', '2022-06-21 15:31:13', 5),
(77, '1', '1', '1', '1', '1', '1', '1', '2022-06-11 12:47:59', 1),
(78, '1', '1', '1', '1', '1', '1', '1', '2022-06-11 12:47:59', 1),
(75, 'dd', 'dd', 'dd', 'dd', 'dd', 'dd', '1', '2022-06-11 12:39:54', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `nome_fantasia` varchar(100) CHARACTER SET latin1 NOT NULL,
  `razao_social` varchar(100) CHARACTER SET latin1 NOT NULL,
  `endereco` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cidade` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bairro` varchar(30) CHARACTER SET latin1 NOT NULL,
  `cgf` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `codigo` varchar(50) CHARACTER SET latin1 NOT NULL,
  `com` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cnpj` varchar(50) CHARACTER SET latin1 NOT NULL,
  `condicoes_pagamento` varchar(20) CHARACTER SET latin1 NOT NULL,
  `comprador` varchar(50) CHARACTER SET latin1 NOT NULL,
  `observacao` varchar(100) CHARACTER SET latin1 NOT NULL,
  `frete` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fabrica` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cif` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ipi` varchar(50) CHARACTER SET latin1 NOT NULL,
  `opcao` varchar(20) CHARACTER SET latin1 NOT NULL,
  `desconto` varchar(50) NOT NULL,
  `pedido_data` date NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idpedido`, `nome_fantasia`, `razao_social`, `endereco`, `cidade`, `bairro`, `cgf`, `fone`, `codigo`, `com`, `cnpj`, `condicoes_pagamento`, `comprador`, `observacao`, `frete`, `fabrica`, `cif`, `ipi`, `opcao`, `desconto`, `pedido_data`, `id_usuario`) VALUES
(35, 'dawd', 'dawd', 'dawd', 'dawd', 'dawd', '', '', '', '', '', '', '', '', '', '', 'Sim', 'Sim', 'Duplicata', '', '2018-10-17', 103),
(3, 'Flavio sousa de Castro', 'Flavio sousa de Castro', 'dawd', 'OrÃ³s', 'CearÃ¡', 'ddd', '', '', '555', '', '', '', '', '', '', '', '', 'NÃ£o informado', '', '2018-10-07', 103),
(5, 'Flavio', 'adwdadaw', 'a', 'a', 'a', 'a', 'adawdawd', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '99', '99', 'Duplicata', '', '2018-10-07', 103),
(37, 'dawdw', 'dawd', 'dawd', 'dawd', 'dawda', 'dawd', '', '', '', '', '', '', '', '', '', 'NÃ£o', 'NÃ£o', 'Duplicata', '', '2018-10-17', 103),
(38, 'dawd', 'dawd', 'dawd', 'dada', 'dawd', 'cgfaqui', '', '', '', '', '', '', '', '25', '', 'Sim', 'Nao', 'Cheque', '50', '2018-10-17', 103),
(43, 'daw', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sim', 'Sim', 'Duplicata', '', '2019-01-06', 103),
(36, 'ddddddddddddddddd', 'dawd', 'dawd', 'dawd', 'dawda', 'dawd', '', '', '', '', '', '', '', '', '', 'Sim', 'Sim', 'Cheque', '', '2018-10-17', 103),
(32, 'dawd', 'dawd', 'dawd', 'dawd', 'dawd', 'dawd', '', '', '', '', '', '', '', '', '', '', '', 'Duplicata', '', '2018-10-14', 103);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_item`
--

CREATE TABLE `pedido_item` (
  `id_pedido_item` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_item_estr` int(11) DEFAULT NULL,
  `quantidade_item` varchar(50) NOT NULL,
  `valor` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido_item`
--

INSERT INTO `pedido_item` (`id_pedido_item`, `id_pedido`, `id_item_estr`, `quantidade_item`, `valor`) VALUES
(23, 43, 1, '', 1),
(21, 43, 15, '', 1),
(7, 38, 11, '2', 122),
(30, 43, 10, '', 1),
(29, 43, 17, '', 1),
(31, 43, 13, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idProduto` int(11) NOT NULL,
  `dataProduto` date NOT NULL,
  `codigoProduto` varchar(15) NOT NULL,
  `nomeProduto` varchar(50) NOT NULL,
  `marcaProduto` varchar(50) NOT NULL,
  `valorProduto` float NOT NULL,
  `quantidadeProdutoCad` int(15) NOT NULL,
  `quantidadeProduto` int(15) NOT NULL,
  `arquivoProduto` varchar(50) NOT NULL,
  `statusNotificacao` int(15) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idProduto`, `dataProduto`, `codigoProduto`, `nomeProduto`, `marcaProduto`, `valorProduto`, `quantidadeProdutoCad`, `quantidadeProduto`, `arquivoProduto`, `statusNotificacao`, `idUsuario`) VALUES
(2, '2021-07-13', '2147483641231', 'bolacha recheada', 'fortaleza', 11.11, 5, 4, '', 1, 5),
(4, '2022-07-08', '2147483641231', 'flavin castro', 'flavio', 40.99, 40, 28, '', 0, 2),
(8, '2022-07-08', '13123222', 'este produto teste', 'testando', 33.34, 1, 0, '', 0, 5),
(9, '2022-07-07', '2147483641234', 'mouse gamer', 'tecnine', 55, 5, 4, '', 1, 5),
(31, '2022-05-08', '2312312311231', 'kenner neo', 'Kenner ', 120, 15, 5, '', 1, 5),
(11, '2022-07-08', '8899882312313', 'chinela do cosme', 'cosme', 33, 15, 15, '', 0, 5),
(12, '0000-00-00', '7898543380931', 'super color ', 'tek bond', 17.5, 942, 941, '', 0, 2),
(13, '0000-00-00', '7897395040604', 'cerveja 300 ml', 'itaipava', 4, 48, 48, '', 0, 2),
(14, '2022-07-08', '7897395040604', 'cerveja 300 ml', 'itaipava', 4, 40, 5, '', 1, 5),
(15, '2022-07-08', '78912939', 'coca cola  pitchula 250 ml', 'coca cola', 3, 70, 70, '', 0, 5),
(16, '2022-07-08', '7898543380931', 'super color ', 'tek bond', 17.5, 15, 15, '', 0, 5),
(18, '0000-00-00', '1231231231231', 'teste', 'teste', 33.33, 66, 60, '', 0, 2),
(19, '2022-07-13', '7898944894051', 'agua mineral natural sem gás 500ml', 'santa joana', 2, 5, 2, '', 1, 2),
(20, '2022-04-04', '7891027179694', 'caderno 117x164mm - 160 folhas', 'tilibra', 10, 5, 5, '', 1, 5),
(21, '2022-07-08', '7891027179694', 'caderno 117x164mm - 160 folhass', 'tilibra', 5.5, 9, 4, '', 1, 2),
(24, '2022-07-06', '6767', '7676', '7676', 76.76, 33, 33, '', 0, 2),
(25, '2022-07-07', '11', '11', '11', 11, 5, 5, '', 1, 2),
(30, '2022-07-08', '7896326958124', 'caneta ', 'Cis Spiro 0.7', 1.5, 20, 19, '', 0, 5),
(27, '2022-07-08', '44333', 'teste', 'teste', 33.33, 5, 5, '', 1, 2),
(28, '2022-07-08', 'teste', 'teste', 'teste', 43.22, 15, 11, '', 0, 2),
(32, '2022-07-15', '7898675200138', 'Sandália Vizzano Tiras Pretareme ', 'vizanno', 130, 12, 8, '', 0, 5),
(33, '2022-07-15', '7908240849959', 'olimpikus run 2', 'olympikus', 499.59, 21, 0, '', 0, 5),
(34, '2022-07-15', '7791293022581', 'caminare log', 'caminare', 120, 11, 5, '', 1, 5),
(35, '2022-07-15', '7791293022567', 'havaiana  sun', 'havaiana', 65, 10, 4, '', 1, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(15) NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `usuario_usuario` varchar(100) NOT NULL,
  `senha_usuario` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `usuario_usuario`, `senha_usuario`) VALUES
(1, 'Admin', 'admin', '+0bPNYKM4ZysQB9DsKi5gQ=='),
(2, 'Flavio Castro', 'flavio', 'z3rgtDVfqetPVAfAdnr+0g=='),
(5, 'Jocelia Castro', 'jocelia', '3Pj6NgA6ss/YjpolDlu1bg==');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `idVenda` int(15) NOT NULL,
  `dataVenda` date NOT NULL,
  `codigoProduto` varchar(13) NOT NULL,
  `nomeProduto` varchar(50) NOT NULL,
  `marcaProduto` varchar(50) NOT NULL,
  `idProduto` int(15) NOT NULL,
  `quantidadeProduto` int(15) NOT NULL,
  `valorProduto` float NOT NULL,
  `valorVenda` float NOT NULL,
  `idUsuario` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`idVenda`, `dataVenda`, `codigoProduto`, `nomeProduto`, `marcaProduto`, `idProduto`, `quantidadeProduto`, `valorProduto`, `valorVenda`, `idUsuario`) VALUES
(3, '2022-07-13', '7898944894051', 'agua mineral natural sem gás 500ml', 'santa joana', 0, 1, 2, 2, 2),
(2, '2022-07-13', '2147483641231', 'bolacha recheada', 'fortaleza', 0, 1, 11.11, 11.11, 5),
(4, '2022-07-13', '7898944894051', 'agua mineral natural sem gás 500ml', 'santa joana', 0, 1, 2, 2, 2),
(5, '2022-07-13', '2147483641231', 'flavin castro', 'flavio', 0, 1, 40.99, 40.99, 2),
(6, '2022-07-13', '7891027179694', 'caderno 117mm x 164mm - 160 folhass', 'tilibra', 0, 1, 5.5, 5.5, 2),
(7, '2022-07-13', '7891027179694', 'caderno 117x164mm - 160 folhass', 'tilibra', 0, 3, 5.5, 16.5, 2),
(8, '2022-07-13', '2147483641231', 'bolacha recheada', 'fortaleza', 0, 1, 11.11, 11.11, 5),
(9, '2022-07-15', '7898675200138', 'Sandália Vizzano Tiras Pretareme ', 'vizanno', 0, 2, 130, 260, 5),
(10, '2022-07-15', '7791293022581', 'caminare log', 'caminare', 0, 1, 120, 120, 5),
(11, '2022-07-15', '7908240849959', 'olimpikus run 2', 'olympikus', 0, 3, 499.59, 1498.77, 5),
(12, '2022-07-15', '7791293022581', 'caminare log', 'caminare', 0, 1, 120, 120, 5),
(13, '2022-07-15', '7791293022567', 'havaiana  sun', 'havaiana', 0, 2, 65, 130, 5),
(14, '2022-07-15', '7908240849959', 'olimpikus run 2', 'olympikus', 0, 1, 499.59, 499.59, 5),
(15, '2022-07-15', '7898675200138', 'Sandália Vizzano Tiras Pretareme ', 'vizanno', 0, 1, 130, 130, 5),
(16, '2022-07-15', '7791293022581', 'caminare log', 'caminare', 0, 2, 120, 240, 5),
(17, '2022-07-15', '7791293022567', 'havaiana  sun', 'havaiana', 0, 2, 65, 130, 5),
(18, '2022-07-15', '7791293022581', 'caminare log', 'caminare', 0, 1, 120, 120, 5),
(19, '2022-07-15', '7908240849959', 'olimpikus run 2', 'olympikus', 0, 1, 499.59, 499.59, 5),
(20, '2022-07-15', '7791293022567', 'havaiana  sun', 'havaiana', 0, 1, 65, 65, 5),
(21, '2022-07-15', '7908240849959', 'olimpikus run 2', 'olympikus', 0, 1, 499.59, 499.59, 5),
(22, '2022-07-15', '7898675200138', 'Sandália Vizzano Tiras Pretareme ', 'vizanno', 0, 1, 130, 130, 5),
(23, '2022-07-15', '7908240849959', 'olimpikus run 2', 'olympikus', 0, 2, 499.59, 999.18, 5),
(24, '2022-07-15', '7791293022581', 'caminare log', 'caminare', 0, 1, 120, 120, 5),
(25, '2022-07-15', '7791293022567', 'havaiana  sun', 'havaiana', 0, 1, 65, 65, 5),
(26, '2022-07-15', '7908240849959', 'olimpikus run 2', 'olympikus', 0, 1, 499.59, 499.59, 5),
(27, '2022-07-15', '7908240849959', 'olimpikus run 2', 'olympikus', 0, 18, 499.59, 8992.62, 5),
(28, '2022-07-21', '2147483641231', 'flavin castro', 'flavio', 0, 1, 40.99, 40.99, 2),
(29, '2022-07-21', '7898944894051', 'agua mineral natural sem gás 500ml', 'santa joana', 0, 1, 2, 2, 2),
(30, '2022-07-21', '7891027179694', 'caderno 117x164mm - 160 folhass', 'tilibra', 0, 1, 5.5, 5.5, 2),
(31, '2022-07-21', '7898543380931', 'super color ', 'tek bond', 0, 1, 17.5, 17.5, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idCompra`);

--
-- Índices para tabela `encomenda`
--
ALTER TABLE `encomenda`
  ADD PRIMARY KEY (`idEncomenda`);

--
-- Índices para tabela `lembretes`
--
ALTER TABLE `lembretes`
  ADD PRIMARY KEY (`idLembrete`);

--
-- Índices para tabela `notificacao`
--
ALTER TABLE `notificacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`);

--
-- Índices para tabela `pedido_item`
--
ALTER TABLE `pedido_item`
  ADD PRIMARY KEY (`id_pedido_item`),
  ADD KEY `fk_pedidoitem_item` (`id_item_estr`),
  ADD KEY `fk_pedidoitem_pedido` (`id_pedido`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`idVenda`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `idCompra` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;

--
-- AUTO_INCREMENT de tabela `encomenda`
--
ALTER TABLE `encomenda`
  MODIFY `idEncomenda` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `lembretes`
--
ALTER TABLE `lembretes`
  MODIFY `idLembrete` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `notificacao`
--
ALTER TABLE `notificacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `pedido_item`
--
ALTER TABLE `pedido_item`
  MODIFY `id_pedido_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `idVenda` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

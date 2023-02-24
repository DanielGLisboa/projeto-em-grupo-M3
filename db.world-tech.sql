create schema world_tech;

use world_tech;

CREATE TABLE `dados_empresa` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cnpj` char(14) UNIQUE NOT NULL,
  `ie` char(9) NOT NULL
);

CREATE TABLE `cliente` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` char(11) UNIQUE NOT NULL,
  `sexo` char(1) NOT NULL,
  `data_nascimento` date NOT NULL
);

CREATE TABLE `endereco` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(100) NOT NULL,
  `numero` int NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `complemento` varchar(50),
  `cep` char(10) NOT NULL,
  `id_cliente` int NOT NULL
);

CREATE TABLE `fabricante` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cnpj` char(14) UNIQUE NOT NULL
);

CREATE TABLE `produto` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `valor` float NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `ficha_tecnica` varchar(500) NOT NULL,
  `id_fabricante` int NOT NULL
);

CREATE TABLE `estoque` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `qtd` int NOT NULL,
  `id_produto` int NOT NULL
);

CREATE TABLE `carrinho` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `valor_total` float NOT NULL,
  `qtd_prod` int NOT NULL,
  `id_cliente` int NOT NULL,
  `id_produto` int NOT NULL
);

CREATE TABLE `nota_fiscal` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `valor_total` float NOT NULL,
  `cpnj_empresa` char(14) NOT NULL
);

CREATE TABLE `historico_compra` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `data_compra` date NOT NULL,
  `id_carrinho` int NOT NULL,
  `id_nota_fiscal` int NOT NULL
);

CREATE TABLE `suporte_cliente` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `data_atend` date NOT NULL,
  `atendente` varchar(100) NOT NULL,
  `id_cliente` int NOT NULL,
  `id_historico_compra` int
);

CREATE TABLE `dados_entrega` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_carrinho` int NOT NULL
);

CREATE TABLE `transportadora` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cnpj` char(14) UNIQUE NOT NULL,
  `id_dados_entrega` int NOT NULL
);

CREATE TABLE `contato` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `telefone` int NOT NULL,
  `ddd` int NOT NULL,
  `email` varchar(50) UNIQUE,
  `id_cliente` int,
  `id_transportadora` int,
  `id_suporte` int
);

CREATE TABLE `pagamento` (
	`id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `modalidade` varchar(20) NOT NULL,
    `id_cliente` int
);

ALTER TABLE `pagamento` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `endereco` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `produto` ADD FOREIGN KEY (`id_fabricante`) REFERENCES `fabricante` (`id`);

ALTER TABLE `estoque` ADD FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`);

ALTER TABLE `carrinho` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `carrinho` ADD FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`);

ALTER TABLE `nota_fiscal` ADD FOREIGN KEY (`cpnj_empresa`) REFERENCES `dados_empresa` (`cnpj`);

ALTER TABLE `historico_compra` ADD FOREIGN KEY (`id_carrinho`) REFERENCES `carrinho` (`id`);

ALTER TABLE `historico_compra` ADD FOREIGN KEY (`id_nota_fiscal`) REFERENCES `nota_fiscal` (`id`);

ALTER TABLE `historico_compra` ADD `id_historico_compra` int;

ALTER TABLE `historico_compra` ADD FOREIGN KEY (`id_historico_compra`) REFERENCES `historico_compra` (`id`);

ALTER TABLE `suporte_cliente` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `suporte_cliente` ADD FOREIGN KEY (`id_historico_compra`) REFERENCES `historico_compra` (`id`);

ALTER TABLE `dados_entrega` ADD FOREIGN KEY (`id_carrinho`) REFERENCES `carrinho` (`id`);

ALTER TABLE `transportadora` ADD FOREIGN KEY (`id_dados_entrega`) REFERENCES `dados_entrega` (`id`);

ALTER TABLE `contato` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `contato` ADD FOREIGN KEY (`id_transportadora`) REFERENCES `transportadora` (`id`);

ALTER TABLE `contato` ADD FOREIGN KEY (`id_suporte`) REFERENCES `suporte_cliente` (`id`);



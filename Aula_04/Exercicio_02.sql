CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.
CREATE TABLE tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT,
tamanho VARCHAR (25) NOT NULL,
sabor VARCHAR (30) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tamanho,sabor)
VALUES ('Brotinho','Tradicional'),
('Pequena','Premiun'),
('Grande','Doce Tradicional'),
('Média','Gourmet'),
('Família','Especial da Casa');

CREATE TABLE tb_pizzas(
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR (30) NOT NULL,
preco DECIMAL (4,2) NOT NULL,
quantidade INT NOT NULL,
bordas VARCHAR (30) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO `db_pizzaria_legal`.`tb_pizzas` (`nome`, `preco`, `quantidade`, `bordas`, `categoria_id`) VALUES ('Calabresa', '29.90', '50', 'Cheedar', '2');
INSERT INTO `db_pizzaria_legal`.`tb_pizzas` (`nome`, `preco`, `quantidade`, `bordas`, `categoria_id`) VALUES ('Frango c/ Catupiry', '29.90', '80', 'Catupiry', '2');
INSERT INTO `db_pizzaria_legal`.`tb_pizzas` (`nome`, `preco`, `quantidade`, `bordas`, `categoria_id`) VALUES ('Mussarela', '19.90', '30', 'Sem Borda', '1');
INSERT INTO `db_pizzaria_legal`.`tb_pizzas` (`nome`, `preco`, `quantidade`, `bordas`, `categoria_id`) VALUES ('4 Queijos', '90', '10', 'Cheddar', '5');
INSERT INTO `db_pizzaria_legal`.`tb_pizzas` (`nome`, `preco`, `quantidade`, `bordas`, `categoria_id`) VALUES ('Margherita', '85', '15', 'Catupiry', '5');
INSERT INTO `db_pizzaria_legal`.`tb_pizzas` (`nome`, `preco`, `quantidade`, `bordas`, `categoria_id`) VALUES ('Alho e Óleo', '60', '10', 'Catupiry', '4');
INSERT INTO `db_pizzaria_legal`.`tb_pizzas` (`nome`, `preco`, `quantidade`, `bordas`, `categoria_id`) VALUES ('Portuguesa', '35', '40', 'Cheedar', '2');
INSERT INTO `db_pizzaria_legal`.`tb_pizzas` (`nome`, `preco`, `quantidade`, `bordas`, `categoria_id`) VALUES ('Romeu & Julieta', '79.5', '50', 'Doce de Leite', '3');

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas
WHERE preco > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50 AND 100;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas
WHERE nome LIKE 'M%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE sabor = 'Doce Tradicional';



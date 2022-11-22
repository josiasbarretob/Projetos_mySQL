CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT,
laboratorio VARCHAR(50) NOT NULL,
tipo VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
preco DECIMAL (6,2),
data_validade DATE,
capacidade VARCHAR(50),
tb_categorias_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (`tb_categorias_id`)
REFERENCES `db_farmacia_bem_estar`.`tb_categorias` (`id`)
);

INSERT INTO `db_farmacia_bem_estar`.`tb_categorias` (`laboratorio`, `tipo`) VALUES ('Aché', 'Anti-inflamatório');
INSERT INTO `db_farmacia_bem_estar`.`tb_categorias` (`laboratorio`, `tipo`) VALUES ('Bayer', 'Anti-tussigeno');
INSERT INTO `db_farmacia_bem_estar`.`tb_categorias` (`laboratorio`, `tipo`) VALUES ('Eurofarma', 'Colírio');
INSERT INTO `db_farmacia_bem_estar`.`tb_categorias` (`laboratorio`, `tipo`) VALUES ('Jhonsons', 'Cuidado Infantil');
INSERT INTO `db_farmacia_bem_estar`.`tb_categorias` (`laboratorio`, `tipo`) VALUES ('EMS', 'Dor Corporal');


INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`nome`, `preco`, `data_validade`, `capacidade`, `tb_categorias_id`) VALUES ('Dipirona Sódica', '18', '2024-11-09', '40ml', '5');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`nome`, `preco`, `data_validade`, `capacidade`, `tb_categorias_id`) VALUES ('Expec', '39.90', '2023-11-18', '100ml', '2');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`nome`, `preco`, `data_validade`, `capacidade`, `tb_categorias_id`) VALUES ('Colírio Gota', '10', '2025-10-20', '30ml', '3');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`nome`, `preco`, `data_validade`, `capacidade`, `tb_categorias_id`) VALUES ('Lenços Umedecidos', '25', '2023-09-20', '150g', '4');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`nome`, `preco`, `data_validade`, `capacidade`, `tb_categorias_id`) VALUES ('Amoxilina', '80', '2022-12-29', '200g', '1');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`nome`, `preco`, `data_validade`, `capacidade`, `tb_categorias_id`) VALUES ('Azitromicina', '90', '2023-05-20', '100g', '1');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`nome`, `preco`, `data_validade`, `capacidade`, `tb_categorias_id`) VALUES ('Pomada de Assadura', '40', '2024-11-20', '80', '4');
INSERT INTO `db_farmacia_bem_estar`.`tb_produtos` (`nome`, `preco`, `data_validade`, `capacidade`, `tb_categorias_id`) VALUES ('Xarope Vick', '75', '2022-11-30', '100ml', '2');

SELECT * FROM tb_produtos;

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos
WHERE preco > 50;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * FROM tb_produtos
WHERE preco BETWEEN 5 AND 60;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.SELECT * FROM tb_produtos
SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
select * from tb_produtos inner join tb_categorias 
on tb_produtos.id_produto = tb_categorias.id_categoria;

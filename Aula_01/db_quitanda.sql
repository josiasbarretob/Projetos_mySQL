CREATE DATABASE db_quitanda;
CREATE TABLE tb_produtos(
	id int auto_increment,
    nome VARCHAR(255) NOT NULL,
    quantidade SMALLINT,
    data_validade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);
	INSERT INTO tb_produtos(nome, quantidade, data_validade, preco) 
	VALUES ("Tomate",100,"2022-11-14",8.00);
    
	INSERT INTO tb_produtos(nome, quantidade, data_validade, preco) 
	values ("maçã",20,"2022-11-14", 5.00);
    
	INSERT INTO tb_produtos(nome, quantidade, data_validade, preco) 
	values ("laranja",50,"2022-11-14", 10.00);
    
	INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)  
	values ("banana",200, "2022-11-14", 12.00);
    
	INSERT INTO tb_produtos(nome, quantidade, data_validade, preco) 
	values ("uva",1200, "2022-11-14", 30.00);
    
	INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)  
	values ("pêra",500, "2022-11-14", 2.99);
    
    SELECT * FROM tb_produtos;
	SELECT nome, quantidade  FROM tb_produtos;
    
    SELECT * FROM tb_produtos WHERE id = 1;
    
    SELECT * FROM tb_produtos WHERE nome = "maçã";
    
    SELECT * FROM tb_produtos WHERE preco > 5.00;
    
    ALTER TABLE tb_produtos ADD descricao varchar (255);
    
    ALTER TABLE tb_produtos DROP descricao;
	SELECT * FROM tb_produtos;
# Comentário
-- Comentário
/* Comentário */

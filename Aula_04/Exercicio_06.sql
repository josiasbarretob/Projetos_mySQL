-- Exercicio 06
CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    ativa BOOLEAN,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Programação", true),
("Idiomas", true),
("Gestão", true),
("Ferramentas de escritório", true),
("Marketing", true);

CREATE TABLE tb_cursos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
	descricao VARCHAR(200),
    turno VARCHAR(50),
    preco DECIMAL(8,2),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);
INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Java iniciante", "curso básico", "noturno", 40, 1);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Inglês básico", "curso introdutório", "noturno", 44, 2);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Metodologia SCRUM", "metodologia ágil", "matutino", 34, 3);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Pacote office", "básico do office", "matutino", 42, 4);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Vendas", "melhorar vendas", "noturno", 60, 5);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Javascript iniciante", "curso básico", "vespertino", 66, 1);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Espanhol básico", "curso introdutório", "integral", 70, 2);

SELECT * FROM tb_categorias;
SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos
WHERE preco > 50;

SELECT * FROM tb_cursos 
WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_cursos
WHERE nome LIKE '%J%';

SELECT tb_cursos.nome, descricao, turno, preco, tb_categorias.nome Categoria 
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT tb_cursos.nome, descricao, turno, preco, tb_categorias.nome Categoria 
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 1;

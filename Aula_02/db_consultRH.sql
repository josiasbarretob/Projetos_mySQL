CREATE DATABASE db_consultRH;
USE db_consultRH;

CREATE TABLE tb_funcionarios(
	matricula INT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    d_nascimento DATE,
    d_admissao DATE,
    t_sanguineo VARCHAR(5),
    salario DECIMAL NOT NULL,
    
    PRIMARY KEY (matricula)
);

INSERT INTO tb_funcionarios(nome, d_nascimento, d_admissao, t_sanguineo, salario)
VALUES ("Josias Barreto", "1994-09-24", "2022-10-03", "O+", 6760.98);
INSERT INTO tb_funcionarios(nome, d_nascimento, d_admissao, t_sanguineo, salario)
VALUES ("Maria Júlia Peixoto", "2022-09-20", "2022-10-03", "AB+", 1212.90);
INSERT INTO tb_funcionarios(nome, d_nascimento, d_admissao, t_sanguineo, salario)
VALUES ("Thamirys Peixoto de Souza", "1997-08-02", "2022-10-03", "A+", 2078.90);
INSERT INTO tb_funcionarios(nome, d_nascimento, d_admissao, t_sanguineo, salario)
VALUES ("Ivanete Barreto", "1969-10-22", "2022-10-03", "B+", 3000.90);
INSERT INTO tb_funcionarios(nome, d_nascimento, d_admissao, t_sanguineo, salario)
VALUES ("Aline Barreto", "1991-12-10", "2022-10-03", "B+", 1700.90);

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

ALTER TABLE tb_funcionarios ADD Cargo VARCHAR (50);
SELECT * FROM tb_funcionarios;

UPDATE tb_funcionarios SET Cargo = "Desenvolvedor Fullstack Jr" WHERE matricula = 1;
SELECT * FROM tb_funcionarios;


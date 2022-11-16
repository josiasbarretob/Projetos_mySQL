CREATE DATABASE db_escolasementinha;
USE db_escolasementinha;

CREATE TABLE tb_alunos(
	NOME VARCHAR(255),
    IDADE INT,
    MATERIA VARCHAR(255),
    NOTA DOUBLE,
    PROFESSOR TEXT,
    
    MATRICULA INT AUTO_INCREMENT,
    PRIMARY KEY (MATRICULA)
);
#SELECT * FROM tb_alunos;
INSERT INTO tb_alunos(NOME, IDADE, MATERIA, NOTA, PROFESSOR)
VALUES ("Arya Stark", 16, "Matemática", 8.9, "Jhofrey");
INSERT INTO tb_alunos(NOME, IDADE, MATERIA, NOTA, PROFESSOR)
VALUES ("Sansa Stark", 19, "Português", 6.9, "Tomy");
INSERT INTO tb_alunos(NOME, IDADE, MATERIA, NOTA, PROFESSOR)
VALUES ("John Snow Stark", 26, "Física", 9.9, "Rei da Noite");
INSERT INTO tb_alunos(NOME, IDADE, MATERIA, NOTA, PROFESSOR)
VALUES ("Ed Stark", 56, "Química", 3.9, "Tiryon");
INSERT INTO tb_alunos(NOME, IDADE, MATERIA, NOTA, PROFESSOR)
VALUES ("Brain Stark", 19, "Astrologia", 6.9, "Corvo");
INSERT INTO tb_alunos(NOME, IDADE, MATERIA, NOTA, PROFESSOR)
VALUES ("Margareth Tyrel", 26, "Matemática", 8.9, "Obery");
INSERT INTO tb_alunos(NOME, IDADE, MATERIA, NOTA, PROFESSOR)
VALUES ("Robb Stark ", 26, "Matemática", 7.9, "Jhofrey");
INSERT INTO tb_alunos(NOME, IDADE, MATERIA, NOTA, PROFESSOR)
VALUES ("Missandei", 22, "Biologia", 5.9, "Daenerys");

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

DELETE FROM tb_alunos WHERE MATRICULA = 2;

SELECT * FROM tb_alunos;
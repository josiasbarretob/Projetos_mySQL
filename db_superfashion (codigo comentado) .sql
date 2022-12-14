CREATE DATABASE db_superfashion; 
#Comando para criar o banco de dados

USE db_superfashion;
#Comando utilizado para selecionar o Banco de Dados "db_superfashion"

CREATE TABLE tb_clientes(
	nome VARCHAR(30),
    data_manutencao DATE,
    data_nascimento DATE,
    sexo ENUM ('M', 'F'),
    bairro VARCHAR(20) DEFAULT 'SATURNINO BRAGA',
    id SMALLINT AUTO_INCREMENT,
    PRIMARY KEY (id)
);
#Comando utilizado para criar a tabela dentro do Banco de Dados "db_superfashion", dentro da tabela devemos informar os campos e os seus tipos

INSERT INTO tb_clientes (nome, sexo, bairro, data_nascimento, data_manutencao)
VALUES('Thamirys Peixoto','F','default','1997-08-02','2022-11-10');
#INSERT INTO nome_da_tabela () VALUES(); -> Usado para inserir dados nos campos da Tabela "tb_clientes"

INSERT INTO tb_clientes VALUES
('Majuh Peixoto','2022-11-10','2022-09-20','F','TurfClub',DEFAULT);
#INSERT INTO usado de forma abreviada quando queremos manter a consulta com a mesma ORDEM que foi declarado os CAMPOS em CREATE TABLE tb_clientes( );

INSERT INTO tb_clientes VALUES
('Maria Conceição Peixoto','2022-08-09','1987-03-10','F','Donana',DEFAULT),
('João Carlos Peixoto','2022-05-17','1967-10-02','M','Mineiros',DEFAULT),
('Félix Peixoto','2022-11-12','1977-12-10','M','Imperial',DEFAULT),
('Nice Peixoto','2022-06-09','1975-04-10','F','Pq. Leopoldina',DEFAULT);
#INSERT INTO usado de forma abreviada quando queremos manter a consulta com a mesma ORDEM que foi declarado os CAMPOS em CREATE TABLE tb_clientes( )
#Inserção de vários registros de usuário usando um único comando INSERT INTO ... VALUES() ;

SELECT * FROM tb_clientes; 
#SELECIONE TUDO DE "tb_clientes"

-- CREATE DATABASE E CREATE TABLE : DDL - São Comandos de Definicao de Dados.
-- INSERT INTO : DML - Comando de Manipulação de Dados.
ALTER TABLE tb_clientes 
ADD profissao VARCHAR(10);
/* Comando utilizado para adicionar colunas extras no banco de dados OBS: Por padrão uma nova coluna sempre será inserida no final à DIREIRA*/

ALTER TABLE tb_clientes 
DROP profissao;
#Comando ALTER TABLE nome_tabela DROP nome_coluna; Utilizado para apagar uma Coluna.

ALTER TABLE tb_clientes 
ADD profissao VARCHAR(10) AFTER nome ;
#Inserir Coluna "profissao" depois da coluna "nome"

ALTER TABLE tb_clientes 
ADD valor DECIMAL (5,2) FIRST;
#Inserir Coluna "Valor" sendo a 1ª da Tabela pelo FIRST.

ALTER TABLE tb_clientes
MODIFY profissao VARCHAR(30) NOT NULL DEFAULT '';
#Modificando o comprimento do VARCHAR de profissão para 30 e tornando um campo obrigatório náo nulo. PERMITE MODIFICAR O TIPO PRIMITIVO E AS CONSTRANTES

ALTER TABLE tb_clientes
CHANGE profissao rede_social VARCHAR(30);
#ALTER TABLE nome_coluna CHANGE nome_old nome_atual; -> Utilizado para trocar o nome da Coluna.

ALTER TABLE tb_clientes
RENAME TO tb_clientes_star;
#Comando utilizado para alterar o nome da Tabela TABLE

SELECT * FROM tb_clientes_star; 
DESC tb_clientes_star; 

-- CRIANDO UMA NOVA TABELA NO BANCO DE DADOS db_superfashion

CREATE TABLE IF NOT EXISTS tb_pagamentos(
	procedimento varchar(30) not null unique,
	descricao text,
    duracao_horas int unsigned,
    meio_pagamento  varchar (15) not null,
    ano year default '2016'
);

ALTER TABLE tb_pagamentos
ADD COLUMN codigo INT FIRST;
#Adicionando 1ª coluna na Tabela Pagamento.

ALTER TABLE tb_pagamentos
ADD PRIMARY KEY (codigo); 
#Adicionando a coluna código como Chave Primária

DROP TABLE IF EXISTS tb_clientes;
#Apague a Tabela se Existir, caso contrário vai acusar um erro.

-- MAMIPULAÇÃO DE LINHAS (UPDATE, DELETE E TRUNCATE)

UPDATE tb_clientes_star 
SET sexo = 'M' WHERE id=1; 
#Atualize a Tabela "tb_clientes_star" e configure o sexo para Masculino no ID 1.

UPDATE tb_clientes_star 
SET nome = 'Josias Barreto', data_nascimento = '1994-09-24'
WHERE id = 4;
#Atualizando mais de um item na linha da tabela "tb_clientes_star" com o comando IPDATE.

UPDATE tb_clientes_star 
SET data_manutencao = '2022-11-17'
WHERE data_manutencao;
#Atualizando todas as linhas do Campo "data_manutencao" com o UPDADE! Para atualizar todas as linhas deve desabilitar o recurso "Safe Update Mode"em Preferencias, mas por questao de seguranca é bom deixar ativado =, pois é raro o caso que teremos que atualizar todas as linhas de uma coluna.

DELETE FROM tb_clientes_star
WHERE id=4;
#Deletando o Registro com o meu nome da linha 4. (Apaga a linha toda)

TRUNCATE TABLE tb_pagamentos;
#Truncar manipula todos os dados apagando tudo. (Apaga só os dados, mas mantém a tabela intacta)

SELECT * FROM tb_clientes_star; 
#Selecione todas as colunas ou campos da tabela "tb_clientes_star" com os seus respectivos registros.

SELECT * FROM tb_clientes_star
ORDER BY nome;
#Mostra todos os campos da Tabela "tb_clientes_star" em ordem de acordo com a coluna Nome. (Padrao é em Ordem Crescente A-Z)

SELECT * FROM tb_clientes_star
ORDER BY nome DESC; 
#Ordenação em ORDEM DECRESCENTE de acordo com a coluna "Nome".

SELECT nome, data_nascimento, sexo FROM tb_clientes_star
ORDER BY nome;
#Mostra somente as Colunas "nome, data_nascimento, sexo" ordenada de forma a-z pela ordenacao de "nome".

SELECT nome, data_nascimento, sexo FROM tb_clientes_star
WHERE sexo = 'F'
ORDER BY nome;
#Mostra somente as Colunas "nome, data_nascimento, sexo" onde o Sexo = 'F' visualizada de forma a-z pela ordenacao de "nome".

SELECT * FROM tb_clientes_star
WHERE sexo = 'M' and bairro = 'Imperial'
ORDER BY nome; -- Pode ordenar por mais de um critério Ex: ORDER BY criterio1, criterio2, criterion...;
#Visualização de todas as colunas da tabela em ORDEM CRESCENTE somente nos registros com o " Sexo = 'M' ".

-- Poderia utilizar no Where caso tivesse, uma classiicacao por ano, daí da necessidade dos operadores para fazer esta comparacao.
-- Veja alguns exemplos:
-- WHERE ano > 2022 (Onde ano for maior que 2022)
-- WHERE ano < 2022 (Onde ano for menor que 2022)
-- WHERE ano >= 2022 (Onde ano for maior ou igual que 2022)
-- WHERE ano <= 2022 (Onde ano for menor ou igual que 2022)

# *********************************************************************************************************** #
-- Operadores Lógicos
-- Exemplos:
-- SELECT * FROM nome_tabela
-- WHERE ano between 2018 and 2022; (Selecione todos os registros da tabela onde o Ano for entre 2018 a 2022) - Intervalo ou Faixa de Dados.

-- Operadores Lógicos
-- Exemplos:
-- SELECT * FROM nome_tabela
-- WHERE ano in (2018, 2019, 2022); (Selecione todos os registros da tabela onde o Ano for 2018, 2019 e 2022)

# *********************************************************************************************************** #
-- Podemos também misturar os Operadores Relacionais com os Operadores Lógicos dentro do comando WHERE.
-- Exemplo:
-- SELECT * FROM nome_tabela
-- WHERE ano > 2020 and  sexo = 'F'; (Selecione todos os registros da tabela onde o Ano for maior que 2020 e o sexo for F) *As 2 condições precisam ser verdadeiras para mostrar valores no resultado da busca

-- Podemos também utilizar o Operador Lógico OR = OU.

-- Chaves Primárias
-- Ao definir um campo como sendo uma chave primária, informa-se ao banco de dados que não podem existir dois registros com o mesmo valor na chave primária, ou seja: os valores no campo que é uma chave primária precisam ser únicos.
--
-- Como restrição de coluna:
CREATE TABLE curso (
	codigo int not null PRIMARY KEY,
	nome varchar(100),
	descricao varchar(max)
);
--
-- Como constraint e com mais de uma coluna:
CREATE TABLE aluno (
	codigo int,
	nome varchar(100),
	cpf char(11),
	email varchar(50),
	telefone varchar(11),
	dt_nascimento date,
	CONSTRAINT pk_codigo_cpf PRIMARY KEY(codigo, cpf)
);
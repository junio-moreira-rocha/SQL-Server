-- Chaves Prim�rias
-- Ao definir um campo como sendo uma chave prim�ria, informa-se ao banco de dados que n�o podem existir dois registros com o mesmo valor na chave prim�ria, ou seja: os valores no campo que � uma chave prim�ria precisam ser �nicos.
--
-- Como restri��o de coluna:
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
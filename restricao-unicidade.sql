-- Restri��o de unicidade
-- O SQL implementa a restri��o UNIQUE. Ao inserir ou atualizar um valor em uma coluna que contenha essa restri��o, o SQL Server analisa todos os outros valores existentes nessa coluna e, se j� existir alguma tupla cuja coluna possua esse valor, um erro acaba ocorrendo.
--
-- Restri��o de coluna:
CREATE TABLE aluno (
	codigo int,
	nome varchar(100),
	CPF char(11) UNIQUE,
	email varchar(50),
	telefone varchar(11),
	dt_nascimento date
);
--
--Restri��o de tabela:
CRETATE TABLE aluno (
	codigo int,
	nome varchar(100),
	cpf char(11),
	email varchar(50),
	telefone varchar(11),
	dt_nascimento date,
	CONSTRAINT cpf_unique UNIQUE(CPF)
);
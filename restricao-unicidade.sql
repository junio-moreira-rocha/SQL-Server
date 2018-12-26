-- Restrição de unicidade
-- O SQL implementa a restrição UNIQUE. Ao inserir ou atualizar um valor em uma coluna que contenha essa restrição, o SQL Server analisa todos os outros valores existentes nessa coluna e, se já existir alguma tupla cuja coluna possua esse valor, um erro acaba ocorrendo.
--
-- Restrição de coluna:
CREATE TABLE aluno (
	codigo int,
	nome varchar(100),
	CPF char(11) UNIQUE,
	email varchar(50),
	telefone varchar(11),
	dt_nascimento date
);
--
--Restrição de tabela:
CRETATE TABLE aluno (
	codigo int,
	nome varchar(100),
	cpf char(11),
	email varchar(50),
	telefone varchar(11),
	dt_nascimento date,
	CONSTRAINT cpf_unique UNIQUE(CPF)
);
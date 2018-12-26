-- Chaves Estrangeiras
-- A chave estrangeira é um dos principais recursos do modelo relacional. Ela permite ao banco de dados manter a integridade referencial entre as tabelas.
CREATE TABLE funcionario (
	codfun int not null,
	cpf char(11) unique,
	nome varchar(50 not null,
	email varchar(50),
	endereco varchar(100) not null,
	CONSTRAINT pk_func PRIMARY KEY(codfun)
);
--
-- Restrição de campo:
CREATE TABLE dependente (
	cpf char(11) not null primary key,
	nome varchar(50) not null,
	email varchar(50),
	dt_nascimento date,
	codfun int not null FOREIGN KEY REFERENCES funcionario(codfun)
);
--
-- Restrição de tabela:
CREATE TABLE dependente (
	cpf char(11) not null primary key,
	nome varchar(50) not null,
	email varchar(50),
	dt_nascimento date,
	codfun int not null,
	CONSTRAINT pk_fun_dep FOREIGN KEY (codfun) REFERENCES funcionario(codfun)
);
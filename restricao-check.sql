-- Restri��o CHECK:
-- A restri��o CHECK permite testar um valor antes que ele seja gravado em um campo do banco de dados. Ela ajuda a manter os valores de um campo dentro do esperado para o dom�nio do banco de dados.
--
-- Restri��o de campo:
CREATE TABLE produto (
	codpro int NOT NULL,
	descricao varchar(100) NOT NULL,
	preco money NOT NULL CHECK (preco > 0)
);
--
-- Restri��o de tabela:
CREATE TABLE produto (
	codpro int NOT NULL,
	descricao varchar(100) NOT NULL,
	preco money NOT NULL,
	CONSTRAINT ch_preco CHECK (preco > 0)
);
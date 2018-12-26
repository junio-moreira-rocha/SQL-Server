-- Restrição CHECK:
-- A restrição CHECK permite testar um valor antes que ele seja gravado em um campo do banco de dados. Ela ajuda a manter os valores de um campo dentro do esperado para o domínio do banco de dados.
--
-- Restrição de campo:
CREATE TABLE produto (
	codpro int NOT NULL,
	descricao varchar(100) NOT NULL,
	preco money NOT NULL CHECK (preco > 0)
);
--
-- Restrição de tabela:
CREATE TABLE produto (
	codpro int NOT NULL,
	descricao varchar(100) NOT NULL,
	preco money NOT NULL,
	CONSTRAINT ch_preco CHECK (preco > 0)
);
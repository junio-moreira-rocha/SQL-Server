-- Altera��o de tabelas
--
-- Incluindo Colunas, por exemplo, para adicionar uma coluna chamada RG na tabela aluno, o comando ser�:
ALTER TABLE aluno ADD RG char(9);
--
-- Alterando Colunas, por exemplo, para alterar uma coluna email da tabela aluno de varchar(50) para char(30), o comando ser�:
ALTER TABLE aluno ALTER COLUMN email char(30);
--
-- Excluindo Colunas, por exemplo, para excluir a coluna endere�o da tabela aluno, o comando ser�:
ALTER TABLE aluno DROP COLUMN endereco;
--
-- Alterando o nome de tabelas e colunas, no SQL Server, a altera��o do nome de tabelas e colunas � feita atrav�s de um objeto especial chamado sp_rename.
-- Por exemplo, para alterar o nome da tabela contas_pagar para contas_a_pagar, o c�digo ser�:
-- EXEC sp_rename 'nome_antigo', 'novo_nome';
EXEC sp_rename 'contas_pagar', 'contas_a_pagar';
-- Por exemplo, para mudar o nome da coluna fabricacao da tabela carro para ano_fabricacao, o comando ser�:
-- EXEC sp_rename 'tabela.nome_coluna', 'novo_nome', 'COLUMN';
EXEC sp_rename 'carro.fabricacao', 'ano_fabricacao', 'COLUMN';
--
-- Inclus�o de restri��es:
--
-- UNIQUE RESTRI��O DE COLUNA:
ALTER TABLE tabela ADD UNIQUE (coluna1, coluna2 ... colunaN);
--
--UNIQUE RESTRI��O DE TABELA:
ALTER TABLE tabela ADD CONSTRAINT nome_restricao UNIQUE(coluna1, coluna2... colunaN);
--
-- PRIMARY KEY RESTRI��O DE COLUNA:
ALTER TABLE tabela ADD PRIMARY KEY (coluna1, coluna2... colunaN);
--
-- PRIMARY KEY RESTRI��O DE TABELA:
ALTER TABLE tabela ADD CONSTRAINT nome_restricao PRIMARY KEY (coluna1, coluna2... colunaN);
--
-- FOREIGN KEY RESTRI��O DE COLUNA:
ALTER TABLE tabela
ADD FOREIGN KEY (coluna1, coluna2... colunaN) REFERENCES tabela(coluna1, coluna2... colunaN);
--
-- FOREIGN KEY RESTRI��O DE TABELA:
ALTER TABLE tabela
ADD CONSTRAINT nome_restricao
FOREIGN KEY (coluna1, coluna2... colunaN) REFERENCES tabela(coluna1, coluna2... colunaN);
--
-- CHECK RESTRI��O DE COLUNA:
ALTER TABLE tabela ADD CHECK(condicao);
--
-- CHECK RESTRI��O DE TABELA:
ALTER TABLE tabela
ADD CONSTRAINT nome_restricao CHECK(condicao);
--
-- DEFAULT
ALTER TABLE tabela
ALTER CONSTRAINT nome_restricao DEFAULT 'valor padr�o' FOR nome_coluna;
--
-- Exclus�o de restri��es:
ALTER TABLE tabela DROP CONSTRAINT nome_restricao;
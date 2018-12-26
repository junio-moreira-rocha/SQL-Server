-- Alteração de tabelas
--
-- Incluindo Colunas, por exemplo, para adicionar uma coluna chamada RG na tabela aluno, o comando será:
ALTER TABLE aluno ADD RG char(9);
--
-- Alterando Colunas, por exemplo, para alterar uma coluna email da tabela aluno de varchar(50) para char(30), o comando será:
ALTER TABLE aluno ALTER COLUMN email char(30);
--
-- Excluindo Colunas, por exemplo, para excluir a coluna endereço da tabela aluno, o comando será:
ALTER TABLE aluno DROP COLUMN endereco;
--
-- Alterando o nome de tabelas e colunas, no SQL Server, a alteração do nome de tabelas e colunas é feita através de um objeto especial chamado sp_rename.
-- Por exemplo, para alterar o nome da tabela contas_pagar para contas_a_pagar, o código será:
-- EXEC sp_rename 'nome_antigo', 'novo_nome';
EXEC sp_rename 'contas_pagar', 'contas_a_pagar';
-- Por exemplo, para mudar o nome da coluna fabricacao da tabela carro para ano_fabricacao, o comando será:
-- EXEC sp_rename 'tabela.nome_coluna', 'novo_nome', 'COLUMN';
EXEC sp_rename 'carro.fabricacao', 'ano_fabricacao', 'COLUMN';
--
-- Inclusão de restrições:
--
-- UNIQUE RESTRIÇÃO DE COLUNA:
ALTER TABLE tabela ADD UNIQUE (coluna1, coluna2 ... colunaN);
--
--UNIQUE RESTRIÇÃO DE TABELA:
ALTER TABLE tabela ADD CONSTRAINT nome_restricao UNIQUE(coluna1, coluna2... colunaN);
--
-- PRIMARY KEY RESTRIÇÃO DE COLUNA:
ALTER TABLE tabela ADD PRIMARY KEY (coluna1, coluna2... colunaN);
--
-- PRIMARY KEY RESTRIÇÃO DE TABELA:
ALTER TABLE tabela ADD CONSTRAINT nome_restricao PRIMARY KEY (coluna1, coluna2... colunaN);
--
-- FOREIGN KEY RESTRIÇÃO DE COLUNA:
ALTER TABLE tabela
ADD FOREIGN KEY (coluna1, coluna2... colunaN) REFERENCES tabela(coluna1, coluna2... colunaN);
--
-- FOREIGN KEY RESTRIÇÃO DE TABELA:
ALTER TABLE tabela
ADD CONSTRAINT nome_restricao
FOREIGN KEY (coluna1, coluna2... colunaN) REFERENCES tabela(coluna1, coluna2... colunaN);
--
-- CHECK RESTRIÇÃO DE COLUNA:
ALTER TABLE tabela ADD CHECK(condicao);
--
-- CHECK RESTRIÇÃO DE TABELA:
ALTER TABLE tabela
ADD CONSTRAINT nome_restricao CHECK(condicao);
--
-- DEFAULT
ALTER TABLE tabela
ALTER CONSTRAINT nome_restricao DEFAULT 'valor padrão' FOR nome_coluna;
--
-- Exclusão de restrições:
ALTER TABLE tabela DROP CONSTRAINT nome_restricao;
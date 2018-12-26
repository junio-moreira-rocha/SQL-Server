-- Restrição NOT NULL
-- Uma restrição de não-nulo especifica que uma coluna não pode ser deixada sem um valor especificado. Geralmente, definimos esta restrição ao definir as colunas da tabela.
CREATE TABLE CUR_CURSO (
	CUR_CODIGO INTEGER NOT NULL,
	CUR_NOME TEXT NOT NULL,
	CUR_PRECO NUMERIC
);

-- Restri��o NOT NULL
-- Uma restri��o de n�o-nulo especifica que uma coluna n�o pode ser deixada sem um valor especificado. Geralmente, definimos esta restri��o ao definir as colunas da tabela.
CREATE TABLE CUR_CURSO (
	CUR_CODIGO INTEGER NOT NULL,
	CUR_NOME TEXT NOT NULL,
	CUR_PRECO NUMERIC
);

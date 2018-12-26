-- RESTRI��O NULL:
-- A restri��o NOT NULL possui uma inversa: a restri��o NULL. Isso n�o significa que a coluna deva ser nula, o que, certamente n�o teria utilidade. Ao inv�s disso � simplesmente definido o comportamento padr�o dizendo que a coluna pode ser nula. A restri��o NULL n�o � definida no padr�o SQL e n�o deve ser utilizada em aplica��es port�veis (somente foi adicionada ao SQL Server para torn�-lo compat�vel com outros sistemas de banco de dados).
CREATE TABLE CUR_CURSO (
	CUR_CODIGO INTEGER NULL,
	CUR_NOME TEXT NULL,
	CUR_PRECO NUMERIC NULL
);
-- Se criarmos a tabela com o comando abaixo teria o mesmo efeito:
CREATE TABLE CUR_CURSO (
	CUR_CODIGO INTEGER,
	CUR_NOME TEXT,
	CUR_PRECO NUMERIC
);
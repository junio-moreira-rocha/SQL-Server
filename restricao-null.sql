-- RESTRIÇÃO NULL:
-- A restrição NOT NULL possui uma inversa: a restrição NULL. Isso não significa que a coluna deva ser nula, o que, certamente não teria utilidade. Ao invés disso é simplesmente definido o comportamento padrão dizendo que a coluna pode ser nula. A restrição NULL não é definida no padrão SQL e não deve ser utilizada em aplicações portáveis (somente foi adicionada ao SQL Server para torná-lo compatível com outros sistemas de banco de dados).
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
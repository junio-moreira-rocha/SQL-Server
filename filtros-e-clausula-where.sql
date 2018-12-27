-- Filtros e cláusula WHERE:
--
-- Operador AND:
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_ID > 3 AND FUN_NOME = 'José';
--
-- Operador OR:
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_ID > 3 OR FUN_NOME = 'José';
--
-- Operador NOT:
SELECT * FROM FUN_FUNCIONARIOS WHERE NOT FUN_ID = 3 AND FUN_NOME = 'José';
--
-- Operador BETWEEN:
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_DATA_NASCIMENTO BETWEEN '01/10/2017'AND '15/12/2018';
--
-- Operador IN:
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_ID IN (10, 18, 32, 45);
-- OU
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_ID IN (SELECT FUN_ID FROM FUN_FUNCIONARIOS WHERE FUN_ID > 3 AND FUN_NOME = 'José');
--
-- Operadores IS NULL e IS NOT NULL:
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_OBSERVACOES IS NULL;
--
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_OBSERVACOES IS NOT NULL;
--
-- Operador LIKE:
--
-- Caractere cutinga _ (sublinhado) : É válido para qualquer caractere nessa posição.
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_OBSERVACOES LIKE '_nico';
--
-- Caractere cutinga % : Qualquer cadeia de zero ou mais caracteres
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_OBSERVACOES LIKE '%único%';
--
-- Caractere cutinga [] : Possibilita especificar um padrão para um caractere único, exemplo [a-f], [0-9], [A-Z]
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_OBSERVACOES LIKE '[ú-u]nico';
-- Caractere cutinga [^] : Caractere único que não pertença ao padrão especificado.
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_OBSERVACOES LIKE '[ú^]nico';

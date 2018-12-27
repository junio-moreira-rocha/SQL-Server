-- Consultas Básicas:
--
-- Operador de igualdade:
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_NOME = 'Maria';
--
-- Operador de diferente:
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_NOME <> 'Maria';
--
-- Operador "menor que":
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_ID < 100;
--
-- Operador "maior que":
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_DATA_NASCIMENTO > '01/01/2018';
--
-- Operador "menor ou igual a":
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_ID <= 100;
--
-- Operador "maior ou igual a":
SELECT * FROM FUN_FUNCIONARIOS WHERE FUN_DATA_NASCIMENTO >= '01/01/2018';
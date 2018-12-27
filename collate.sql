-- Collate:
-- Usado para modificar momentaneamente como o banco de dados interpreta os caracteres, CI/CS (Case Insensitive/Sensitive), AI/AS (Accent Insensitive/Sensitive):
SELECT * 
  FROM FUN_FUNCIONARIOS 
 WHERE FUN_NOME = 'JoAo' COLLATE Latin1_General_CI_AI;
--
-- Função que exibe os Collates:
SELECT NAME, DESCRIPTION
  FROM fn_helpcollations();
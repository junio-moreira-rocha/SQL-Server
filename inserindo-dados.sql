-- Inserindo Dados:
INSERT INTO [MeuRH].[dbo].[FUN_FUNCIONARIOS]
([FUN_NOME], [FUN_SOBRENOME], [FUN_DATA_NASCIMENTO], [FUN_OBSERVACOES])
VALUES
('Maria', 'Aparecida da Silva', '10/06/1980', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');
-- ou inserindo varias linhas:
INSERT INTO FUN_FUNCIONARIOS
(FUN_NOME, FUN_SOBRENOME, FUN_DATA_NASCIMENTO, FUN_OBSERVACOES)
VALUES
('João', 'Batista da Silva', '23/02/1888', 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
('Isabela', 'Souza', '20/01/1990', ''),
('Victoria', 'Moreira', '11/03/1880', '');
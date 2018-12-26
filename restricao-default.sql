-- Restrição DEFAULT
-- Quando o valor de um campo não é especificado e ele aceitar valores nulos, automaticamente esse valor será definido como NULL. O DEFAULT é usado para alterar esse comportamento padrão. Com ele, é possível indicar o valor que será inserido se nenhum valor for especificado.
CREATE TABLE salario (
	codinst int NOT NULL,
	valor money NOT NULL DEFAULT 2000.00,
	cargo varchar(20) NOT NULL DEFAULT 'instrutor Passeio'
);
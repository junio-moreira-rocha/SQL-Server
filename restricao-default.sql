-- Restri��o DEFAULT
-- Quando o valor de um campo n�o � especificado e ele aceitar valores nulos, automaticamente esse valor ser� definido como NULL. O DEFAULT � usado para alterar esse comportamento padr�o. Com ele, � poss�vel indicar o valor que ser� inserido se nenhum valor for especificado.
CREATE TABLE salario (
	codinst int NOT NULL,
	valor money NOT NULL DEFAULT 2000.00,
	cargo varchar(20) NOT NULL DEFAULT 'instrutor Passeio'
);
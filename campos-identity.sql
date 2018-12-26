-- Campos IDENTITY
-- Na maioria das tabelas que s�o criadas em um banco de dados a chave prim�ria � composta por um campo com c�digo sequencial. O SQL Server possui uma solu��o de auto incremento para esses casos, onde o pr�prio sistema gerencia a sequ�ncia de c�digos.
-- Podemos criar o auto incremento conforme a necessidade, por exemplo, IDENTITY(100, 10) come�a em 100 e soma 10 a cada registro.
CREATE TABLE contas_pagar (
	codcpg int not null IDENTITY(1,1),
	descricao varchar(100) not null,
	valor money not null check( valor > 0)
);
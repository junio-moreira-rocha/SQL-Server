-- Campos IDENTITY
-- Na maioria das tabelas que são criadas em um banco de dados a chave primária é composta por um campo com código sequencial. O SQL Server possui uma solução de auto incremento para esses casos, onde o próprio sistema gerencia a sequência de códigos.
-- Podemos criar o auto incremento conforme a necessidade, por exemplo, IDENTITY(100, 10) começa em 100 e soma 10 a cada registro.
CREATE TABLE contas_pagar (
	codcpg int not null IDENTITY(1,1),
	descricao varchar(100) not null,
	valor money not null check( valor > 0)
);
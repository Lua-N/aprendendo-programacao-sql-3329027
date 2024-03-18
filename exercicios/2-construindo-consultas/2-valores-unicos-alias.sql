-- Para a tabela "customers" crie uma consulta que retorne apenas os valores únicos da coluna Country
SELECT DISTINCT country FROM customers;

-- Na consulta anterior, adicione a coluna Company para verificar as combinações únicas entre empresas e países
SELECT DISTINCT country, Company
FROM customers;

-- Nesta mesma consulta, atribua um alias com título em português para cada coluna
SELECT DISTINCT 
country AS pais,
Company AS empresa
FROM customers;

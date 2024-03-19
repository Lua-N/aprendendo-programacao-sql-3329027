-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
  SELECT DISTINCT
  BillingCountry
  FROM invoices;

  SELECT
  BillingCountry as pais,
  SUM (Total) as soma_compras,
  MIN (Total) as minimo,
  MAX (Total) as maximo,
  COUNT (Total) as qnt_compras,
  AVG (ROUND (Total, 2)) as ticket_medio
  FROM invoices
  WHERE BillingCountry = 'Brazil';
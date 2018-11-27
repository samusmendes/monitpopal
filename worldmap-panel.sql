-- Teste usando o datasource do PostgreSQL
-- Usar 'Timeseries' na metrica

-- EXEMPLO 01:
-- Não é necessário tabelas, apenas o banco com o Datasource
SELECT NOW() AS time,
       'SP' AS metric,
       5 AS value
GROUP BY metric

-- EXEMPLO 02:
-- Dica de select para consulta em ambiente 'mais proximo do real':
SELECT dados.tempo AS time,
       estados.uf AS metric,
       count(dados.valor) AS value
FROM dados
JOIN estados ON estados.uf = dados.uf
WHERE dados.valor > 0
GROUP BY metric

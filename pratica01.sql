-- Active: 1790015210866@@127.0.0.1@5432@bd_hortifruti@public
CREATE DATABASE bd_hortifruti;

DROP TABLE IF EXISTS itens_venda;

CREATE TABLE itens_venda(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    venda_id INTEGER NOT NULL,
    data_venda DATE NOT NULL,
    bairro_entrega TEXT, -- A coluna do endereço nao deve ser NOT NULL por conta de outros tipos de retirada, por exemplo no balcao
    produto_id INTEGER NOT NULL,
    produto_nome TEXT NOT NULL,
    categoria TEXT NOT NULL,
    unidade TEXT NOT NULL,
    quantidade NUMERIC(10,3) NOT NULL, -- A coluna deve ser not null pois nao é possivel comprar 0 quantidade de um produto
    valor_unitario NUMERIC(10,2) NOT NULL -- A coluna deve ser not null pois nao é possivel que um produto nao possua preço
);

INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
VALUES
-- 2026-08-03, segunda-feira
(3001, '2026-08-03', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 1.235, 5.99),
(3001, '2026-08-03', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.874, 7.49),
(3001, '2026-08-03', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 2.99),
(3001, '2026-08-03', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 2.000, 2.50),
(3002, '2026-08-03', NULL, 6, 'Batata', 'Legume', 'Kg', 2.140, 4.99),
(3002, '2026-08-03', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.965, 5.19),
(3003, '2026-08-03', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 2.000, 7.90),
(3003, '2026-08-03', 'Centro', 2, 'Laranja pera', 'Fruta', 'Kg', 3.180, 3.79),
(3003, '2026-08-03', 'Centro', 8, 'Cenoura', 'Legume', 'Kg', 1.020, 4.29),
-- 2026-08-04, terca-feira
(3004, '2026-08-04', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.460, 7.49),
(3004, '2026-08-04', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.785, 4.49),
(3004, '2026-08-04', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.00),
(3005, '2026-08-04', NULL, 4, 'Morango', 'Fruta', 'UN', 2.000, 9.90),
(3006, '2026-08-04', 'Lagoinha', 1, 'Banana prata', 'Fruta', 'Kg', 2.310, 5.99),
(3006, '2026-08-04', 'Lagoinha', 6, 'Batata', 'Legume', 'Kg', 1.505, 4.99),
(3006, '2026-08-04', 'Lagoinha', 10, 'Alface crespa', 'Verdura', 'UN', 2.000, 2.99),
(3006, '2026-08-04', 'Lagoinha', 12, 'Cheiro-verde', 'Verdura', 'UN', 1.000, 2.50),
-- 2026-08-05, quarta-feira
(3007, '2026-08-05', NULL, 2, 'Laranja pera', 'Fruta', 'Kg', 2.450, 3.49),
(3007, '2026-08-05', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.635, 7.99),
(3008, '2026-08-05', NULL, 8, 'Cenoura', 'Legume', 'Kg', 0.780, 4.39),
(3008, '2026-08-05', NULL, 9, 'Cebola', 'Legume', 'Kg', 1.215, 5.19),
(3008, '2026-08-05', NULL, 11, 'Couve', 'Verdura', 'UN', 2.000, 3.00),
(3009, '2026-08-05', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 7.50),
(3009, '2026-08-05', 'Centro', 4, 'Morango', 'Fruta', 'UN', 1.000, 9.49),
(3009, '2026-08-05', 'Centro', 1, 'Banana prata', 'Fruta', 'Kg', 1.890, 6.29),
-- 2026-08-06, quinta-feira
(3010, '2026-08-06', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 0.925, 4.79),
(3010, '2026-08-06', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 3.29),
(3011, '2026-08-06', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.975, 8.49),
(3011, '2026-08-06', NULL, 6, 'Batata', 'Legume', 'Kg', 3.020, 5.29),
(3011, '2026-08-06', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 3.000, 2.50),
(3012, '2026-08-06', 'Planalto', 2, 'Laranja pera', 'Fruta', 'Kg', 4.060, 3.49),
(3012, '2026-08-06', 'Planalto', 8, 'Cenoura', 'Legume', 'Kg', 1.340, 4.39),
-- 2026-08-07, sexta-feira
(3013, '2026-08-07', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 0.965, 6.49),
(3013, '2026-08-07', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.540, 5.49),
(3013, '2026-08-07', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.50),
(3014, '2026-08-07', 'Lagoinha', 4, 'Morango', 'Fruta', 'UN', 3.000, 8.90),
(3014, '2026-08-07', 'Lagoinha', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 6.99),
-- 2026-08-08, sabado
(3015, '2026-08-08', NULL, 6, 'Batata', 'Legume', 'Kg', 1.250, 5.49),
(3016, '2026-08-08', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.115, 8.99),
(3016, '2026-08-08', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.360, 4.79);

INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
VALUES
-- 2026-08-08, sabado
(3017, '2026-08-08', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.340, 8.99),
(3017, '2026-08-08', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 2.000, 3.49),
(3017, '2026-08-08', NULL, 4, 'Morango', 'Fruta', 'UN', 1.000, 9.99);

SELECT * FROM itens_venda


--Consulta 1
SELECT DISTINCT venda_id, produto_nome, categoria, unidade

FROM itens_venda

ORDER BY
    categoria ASC,
    produto_nome ASC;

--Consulta 2
SELECT venda_id, produto_nome, valor_unitario

FROM itens_venda

WHERE categoria IN ('Legume', 'Verdura') AND valor_unitario BETWEEN 3.00 AND 5.00

ORDER BY
    valor_unitario DESC,
    venda_id ASC;

--Consulta 3
SELECT venda_id, data_venda, produto_nome, quantidade

FROM itens_venda

WHERE produto_nome LIKE 'Batata%'

ORDER BY
    data_venda ASC,
    venda_id ASC;

--Consulta 4
SELECT DISTINCT venda_id, data_venda, bairro_entrega

FROM itens_venda

WHERE bairro_entrega IS NOT NULL
ORDER BY
    venda_id ASC;

--Consulta 5
SELECT 
    venda_id, 
    produto_nome, 
    quantidade, 
    unidade, 
    valor_unitario,
    ROUND(quantidade * valor_unitario, 2) AS valor_item
FROM itens_venda
ORDER BY
    valor_item DESC,
    venda_id ASC
LIMIT 5 OFFSET 5;

--Consulta 6
SELECT 
    venda_id,
    data_venda,
    COALESCE(bairro_entrega, 'Retirada no balcao') AS destino,
    COUNT(*) AS itens,
    ROUND(SUM(quantidade * valor_unitario), 2) AS valor_total
FROM itens_venda
GROUP BY venda_id, data_venda, bairro_entrega
ORDER BY valor_total DESC;

--Consulta 7
SELECT 
    data_venda,
    COUNT(DISTINCT venda_id) AS vendas,
    COUNT(*) AS itens,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM itens_venda
GROUP BY data_venda
ORDER BY data_venda ASC;

--Consulta 8
SELECT 
    produto_id,
    produto_nome,
    unidade,
    SUM(quantidade) AS qtd_total,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento,
    ROUND(AVG(valor_unitario), 2) AS media_simples,
    ROUND(SUM(quantidade * valor_unitario) / SUM(quantidade), 2) AS media_ponderada
FROM itens_venda
GROUP BY produto_id, produto_nome, unidade
ORDER BY faturamento DESC;

--Consulta 9
SELECT 
    categoria,
    unidade,
    COUNT(*) AS itens,
    SUM(quantidade) AS qtd_total,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM itens_venda
GROUP BY categoria, unidade
ORDER BY categoria ASC, unidade ASC;

--Consulta 10
SELECT 
    bairro_entrega,
    COUNT(DISTINCT venda_id) AS entregas,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM itens_venda
WHERE bairro_entrega IS NOT NULL
GROUP BY bairro_entrega
HAVING SUM(quantidade * valor_unitario) > 40.00
ORDER BY faturamento DESC;

--Consulta 11
SELECT 
    venda_id,
    ROUND(SUM(quantidade * valor_unitario), 2) AS total_arredondado,
    SUM(ROUND(quantidade * valor_unitario, 2)) AS soma_dos_itens_arredondados
FROM itens_venda
GROUP BY venda_id
HAVING ROUND(SUM(quantidade * valor_unitario), 2) <> SUM(ROUND(quantidade * valor_unitario, 2))
ORDER BY venda_id ASC;


-- PARTE 4. ANÁLISE DO MODELO E DA TABELA

-- Questão 1.
-- Atributos que repetem fatos da VENDA: data_venda e bairro_entrega.
-- Atributos que repetem fatos do PRODUTO: produto_nome, categoria e unidade.

-- O valor_unitario não está na mesma situação porque o preço do produto muda ao longo do tempo (conforme a oferta)
-- e representa o valor praticado no momento específico daquela venda (é um atributo do relacionamento/item).
 
-- Impacto de alterar o nome de um produto em apenas algumas linhas:
-- Consulta 1: Como utiliza DISTINCT, o produto seria listado mais de uma vez (como se fossem produtos diferentes).
-- Consulta 8: Como agrupa por (produto_id, produto_nome, unidade), o mesmo produto seria dividido em grupos/linhas
-- diferentes no resultado final, distorcendo o faturamento e as médias calculadas.


-- Questão 2.
-- Regras não garantidas no banco de dados (regras 4 e 5 do minimundo):
-- 1. Regra 4: Um mesmo produto ser vendido sempre na mesma unidade de medida (o banco aceita registrar o produto 1 como 'Kg' em um item e 'UN' em outro).
-- 2. Regra 5: Produtos vendidos por unidade ('UN') terem quantidade inteira (o banco permite aceitar decimais como 1.500 para 'UN').

-- Exemplo de INSERT violando a regra 5 que o SGBD aceitaria:
-- INSERT INTO itens_venda (venda_id, data_venda, bairro_entrega, produto_id, produto_nome, categoria, unidade, quantidade, valor_unitario)
-- VALUES (9999, '2026-08-08', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.500, 2.99);


-- Questão 3.
-- - Morango: A média ponderada é menor que a média simples porque as maiores quantidades vendidas ocorreram nos dias em que o preço estava mais baixo (desconto/oferta).
-- - Abacaxi: A média ponderada é maior que a média simples porque a maioria das unidades foi vendida nos dias em que o preço do abacaxi estava mais alto.
-- - Cheiro-verde: As duas médias são iguais porque o valor unitário praticado para o cheiro-verde permaneceu constante (R$ 2,50) em todas as vendas registradas.z
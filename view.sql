CREATE VIEW Vw_Inventario_Completo AS
SELECT
    PRODUTOS.nome_produto,
    CATEGORIAS.nome_categoria,
    PRODUTOS.tamanho,
    PRODUTOS.cor,
    PRODUTOS.preco,
    PRODUTOS.quantidade_estoque
FROM PRODUTOS 
JOIN CATEGORIAS 
    ON PRODUTOS.categoria_id = CATEGORIAS.categoria_id;
SELECT * FROM Vw_Inventario_Completo;

CREATE VIEW Vw_Historico_De_Vendas AS 
SELECT 
V.data_venda,
CL.nome_cliente,
P.nome_produto,
P.tamanho,
P.cor,
IV.quantidade,
IV.preco_unitario AS preco_unitario_na_venda
FROM ITENS_VENDA IV
JOIN VENDAS V
ON IV.venda_id = V.venda_id
JOIN CLIENTES CL
ON V.cliente_id = CL.cliente_id
JOIN PRODUTOS P
ON IV.produto_id = P.produto_id;

SELECT * FROM Vw_Historico_De_Vendas;
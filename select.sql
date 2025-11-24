SELECT
    c.nome_cliente,
    v.status,
    p.nome_produto,
    p.tamanho,
    p.cor,
    iv.quantidade
FROM ITENS_VENDA iv
INNER JOIN VENDAS v ON iv.venda_id = v.venda_id
INNER JOIN CLIENTES c ON v.cliente_id = c.cliente_id
INNER JOIN PRODUTOS p ON iv.produto_id = p.produto_id
WHERE v.venda_id = 1;


SELECT 
    p.nome_produto,
    p.quantidade_estoque,
    c.nome_categoria
FROM PRODUTOS p 
INNER JOIN CATEGORIAS c ON p.categoria_id = c.categoria_id
WHERE c.nome_categoria = 'Vestidos'
AND p.quantidade_estoque < 10;

SELECT
    c.cliente_id,
    c.nome_cliente,
    v.data_venda
FROM CLIENTES c 
LEFT JOIN VENDAS v ON c.cliente_id = v.cliente_id
ORDER BY c.cliente_id, v.data_venda;
INSERT INTO CLIENTES (nome_cliente, email, telefone, data_cadastro )
VALUES 
('Ester Tsumoto', 'estertsumoto15@gmail.com','19947424990', '2024-10-01'),
('Samira Mendes', 'samy2014@gmail.com', '19998723593', '2025-09-24'),
('Lia Yamamoto', 'liayamamoto09@gmail.com', '19938743589', '2024-03-20'),
('Charlie Markbam', 'charliemarkbam24@gmail.com', '19954763782', '2023-08-16'),
('Diana Barcelos', 'dianabarcelos79@gmail.com', '19967342598', '2025-11-23');

INSERT INTO CATEGORIAS (nome_categoria)
VALUES 
('Blusas'),
('Shorts/Bermudas'),
('Calças'),
('Vestidos'),
('Casacos');

INSERT INTO PRODUTOS (nome_produto, tamanho, cor, preco, quantidade_estoque, categoria_id)
VALUES 
('Vestido Bebe Colheita', '12M', 'Branco/Vermelho', 140.40, 260, 4),
('Vestido Bordado Jardinzim', '18M', 'Branco/Vermelho ', 245.65, 109, 4),
('Blusa Hermosa Solar', '8anos', 'Amarelo', 128.99, 390, 1),
('Camiseta Silk Pegando Onda', '4anos', 'Branca/Azul', 90.59, 120, 1),
('Legging de Malha', '10anos', 'Preta',70.89 , 300, 3),
('Calça de Moletom', '8anos', 'Cinza', 99.90, 540, 3),
('Short Catavento', '12anos', 'Branco/Azul', 130.65, 109, 2),
('Short de Sarja', '12anos', 'Preto', 200, 280, 2),
('Cardigan Tricot', '6anos', 'Rosa', 209.45, 200, 5),
('Jaqueta Jeans', '10anos', 'Azul', 250.75, 150, 5);


INSERT INTO VENDAS (data_venda, status, endereco_entrega, valor_total, cliente_id)
VALUES 
('2024-10-05', 'ENTREGUE', 'Rua das Flores, 123, São Paulo, SP', 270.99, 1),
('2024-09-15', 'EM PROCESSAMENTO', 'Avenida Central, 456, Rio de Janeiro, RJ', 199.90, 2),
('2024-08-20', 'CANCELADA', 'Praça da Sé, 789, Salvador, BA', 140.40, 3),
('2024-07-30', 'ENTREGUE', 'Rua dos Andradas, 321, Porto Alegre, RS', 350.65, 4),
('2024-06-25', 'EM PROCESSAMENTO', 'Avenida Paulista, 654, São Paulo, SP', 250.75, 5);


INSERT INTO ITENS_VENDA (preco_unitario, quantidade, venda_id, produto_id) VALUES
(140.40, 1, 1, 1),
(128.99, 2, 1, 3);

INSERT INTO ITENS_VENDA (preco_unitario, quantidade, venda_id, produto_id) VALUES
(245.65, 1, 2, 2),
(45.53, 1, 2, 4);

INSERT INTO ITENS_VENDA (preco_unitario, quantidade, venda_id, produto_id) VALUES
(70.89, 2, 3, 5),
(99.90, 1, 3, 6);

INSERT INTO ITENS_VENDA (preco_unitario, quantidade, venda_id, produto_id) VALUES
(130.65, 1, 4, 7),
(200.00, 1, 4, 8),
(120.05, 1, 4, 4);

INSERT INTO ITENS_VENDA (preco_unitario, quantidade, venda_id, produto_id) VALUES
(209.45, 1, 5, 9),
(167.15, 1, 5, 10);
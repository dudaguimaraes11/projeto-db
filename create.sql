CREATE TABLE CLIENTES (
    cliente_id SERIAL PRIMARY KEY,
    nome_cliente VARCHAR(100), 
    email VARCHAR(120) UNIQUE NOT NULL, 
    telefone CHAR(11), 
    data_cadastro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE CATEGORIAS (
    categoria_id SERIAL PRIMARY KEY, 
    nome_categoria VARCHAR(50) NOT NULL
); 

CREATE TABLE PRODUTOS (
    produto_id SERIAL PRIMARY KEY, 
    nome_produto VARCHAR(100), 
    tamanho VARCHAR(10),
    cor VARCHAR(15), 
    preco DECIMAL (10,2) CHECK (preco >= 0),
    quantidade_estoque INT CHECK (quantidade_estoque >= 0), 
    categoria_id INT REFERENCES CATEGORIAS(categoria_id)
); 

CREATE TABLE VENDAS (
    venda_id SERIAL PRIMARY KEY, 
    data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Processando', 
    endereco_entrega VARCHAR(200), 
    valor_total DECIMAL(10,2),
    cliente_id INT REFERENCES CLIENTES(cliente_id)
); 

CREATE TABLE ITENS_VENDA (
    item_venda_id SERIAL PRIMARY KEY, 
    preco_unitario DECIMAL(10,2),
    quantidade INT CHECK (quantidade > 0),
   venda_id INT REF ERENCES VENDAS(venda_id),   
produto_id INT REFERENCES PRODUTOS(produto_id)
); 
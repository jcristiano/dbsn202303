-- DELETE FROM cliente;
-- DELETE FROM produto;
-- DELETE FROM categoria;
-- DELETE FROM itemvenda;
-- DELETE FROM venda;

INSERT INTO cliente (id, nome, email)
VALUES
    (1, 'Joao Silva', 'joao.silva@example.com'),
    (2, 'Maria Souza', 'maria.souza@example.com'),
    (3, 'Pedro Alves', 'pedro.alves@example.com'),
    (4, 'Ana Oliveira', 'ana.oliveira@example.com'),
    (5, 'Luiz Santos', 'luiz.santos@example.com'),
    (6, 'Fernanda Lima', 'fernanda.lima@example.com'),
    (7, 'Ricardo Martins', 'ricardo.martins@example.com'),
    (8, 'Camila Pereira', 'camila.pereira@example.com'),
    (9, 'Marcio Gomes', 'marcio.gomes@example.com'),
    (10, 'Isabela Castro', 'isabela.castro@example.com'),
    (11, 'Gustavo Ferreira', 'gustavo.ferreira@example.com'),
    (12, 'Livia Ribeiro', 'livia.ribeiro@example.com'),
    (13, 'Felipe Costa', 'felipe.costa@example.com'),
    (14, 'Amanda Barbosa', 'amanda.barbosa@example.com'),
    (15, 'Sergio Mendes', 'sergio.mendes@example.com'),
    (16, 'Cristina Nunes', 'cristina.nunes@example.com'),
    (17, 'Rafaela Carvalho', 'rafaela.carvalho@example.com'),
    (18, 'Hugo Santos', 'hugo.santos@example.com'),
    (19, 'Mariana Rocha', 'mariana.rocha@example.com'),
    (20, 'Daniel Fernandes', 'daniel.fernandes@example.com');
	
	
UPDATE cliente
SET data_nascimento = 
    CASE 
        WHEN id = 1 THEN STR_TO_DATE('1991-03-21', '%Y-%m-%d')
        WHEN id = 2 THEN STR_TO_DATE('1985-06-15', '%Y-%m-%d')
        WHEN id = 3 THEN STR_TO_DATE('1988-03-10', '%Y-%m-%d')
        WHEN id = 4 THEN STR_TO_DATE('1992-12-20', '%Y-%m-%d')
        WHEN id = 5 THEN STR_TO_DATE('1995-08-08', '%Y-%m-%d')
        WHEN id = 6 THEN STR_TO_DATE('1987-11-02', '%Y-%m-%d')
        WHEN id = 7 THEN STR_TO_DATE('1991-09-25', '%Y-%m-%d')
        WHEN id = 8 THEN STR_TO_DATE('2001-07-18', '%Y-%m-%d')
        WHEN id = 9 THEN STR_TO_DATE('2003-04-30', '%Y-%m-%d')
        WHEN id = 10 THEN STR_TO_DATE('1993-02-14', '%Y-%m-%d')
        WHEN id = 11 THEN STR_TO_DATE('1989-10-11', '%Y-%m-%d')
        WHEN id = 12 THEN STR_TO_DATE('1996-07-07', '%Y-%m-%d')
        WHEN id = 13 THEN STR_TO_DATE('1986-09-03', '%Y-%m-%d')
        WHEN id = 14 THEN STR_TO_DATE('1983-03-28', '%Y-%m-%d')
        WHEN id = 15 THEN STR_TO_DATE('1994-11-22', '%Y-%m-%d')
        WHEN id = 16 THEN STR_TO_DATE('1982-01-17', '%Y-%m-%d')
        WHEN id = 17 THEN STR_TO_DATE('2001-08-05', '%Y-%m-%d')
        WHEN id = 18 THEN STR_TO_DATE('2004-06-09', '%Y-%m-%d')
        WHEN id = 19 THEN STR_TO_DATE('1999-10-29', '%Y-%m-%d')
        WHEN id = 20 THEN STR_TO_DATE('2007-12-25', '%Y-%m-%d')
        ELSE data_nascimento
    END
WHERE id BETWEEN 1 AND 20;

-- Criar categorias
INSERT INTO categoria (id, nome)
VALUES
    (1, 'Eletronicos'),
    (2, 'Roupas'),
    (3, 'Acessorios'),
    (4, 'Alimentos'),
    (5, 'Moveis');

INSERT INTO produto (id, nome, preco, categoria_id)
VALUES
    (1, 'Smartphone', 699.99, 1),
    (2, 'Notebook', 1299.99, 1),
    (3, 'Camiseta', 19.99, 2),
    (4, 'Calca Jeans', 39.99, 2),
    (5, 'Relogio', 89.99, 3),
    (6, 'Oculos de Sol', 49.99, 3);

INSERT INTO produto (id, nome, preco)
VALUES
    (7, 'Chips de Batata', 2.99),
    (8, 'Barras de Chocolate', 1.49),
    (9, 'Cadeira', 79.99),
    (10, 'Mesa de Centro', 149.99);

INSERT INTO produto (id, nome, preco)
VALUES
    (11, 'Produto 11', 21.99),
    (12, 'Produto 12', 35.49),
    (13, 'Produto 13', 17.99),
    (14, 'Produto 14', 42.75),
    (15, 'Produto 15', 53.25),
    (16, 'Produto 16', 28.99),
    (17, 'Produto 17', 19.99),
    (18, 'Produto 18', 64.99),
    (19, 'Produto 19', 89.99),
    (20, 'Produto 20', 72.49),    
    (21, 'Produto 21', 27.99),
    (22, 'Produto 22', 33.49),
    (23, 'Produto 23', 16.99),
    (24, 'Produto 24', 48.75),
    (25, 'Produto 25', 59.25),
    (26, 'Produto 26', 31.99),
    (27, 'Produto 27', 22.99),
    (28, 'Produto 28', 69.99),
    (29, 'Produto 29', 92.99),
    (30, 'Produto 30', 75.49);

-- Inserir dados de vendas para produtos com categorias
INSERT INTO venda (id, data_venda, valor_total, cliente_id)
VALUES
    (1, '2023-08-01', 799.99, 1),
    (2, '2023-08-02', 1199.99, 2),
    (3, '2023-08-03', 24.99, 3),
    (4, '2023-08-04', 49.99, 4),
    (5, '2023-08-05', 99.99, 5),
    (6, '2023-08-06', 39.99, 6);

-- Inserir dados de vendas para produtos sem categorias
INSERT INTO venda (id, data_venda, valor_total, cliente_id)
VALUES
    (7, '2023-08-07', 2.99, 7),
    (8, '2023-08-08', 1.49, 8),
    (9, '2023-08-09', 79.99, 9),
    (10, '2023-08-10', 149.99, 10);

-- Inserir mais dados de vendas para produtos sem categorias
INSERT INTO venda (id, data_venda, valor_total, cliente_id)
VALUES
    (11, '2023-08-11', 17.99, 11),
    (12, '2023-08-12', 42.75, 12),
    (13, '2023-08-13', 53.25, 13),
    (14, '2023-08-14', 28.99, 14),
    (15, '2023-08-15', 19.99, 15);
	
	
-- Inserir dados na tabela itemvenda para vendas com categorias
INSERT INTO itemvenda (id, venda_id, produto_id, quantidade, valor_total_item)
VALUES
    (1, 1, 1, 1, 699.99),
    (2, 2, 2, 1, 1299.99),
    (3, 3, 3, 2, 39.98),
    (4, 4, 4, 1, 39.99),
    (5, 5, 5, 1, 89.99),
    (6, 6, 6, 1, 49.99);

-- Inserir dados na tabela itemvenda para vendas sem categorias
INSERT INTO itemvenda (id, venda_id, produto_id, quantidade, valor_total_item)
VALUES
    (7, 7, 7, 1, 2.99),
    (8, 8, 8, 2, 2.98),
    (9, 9, 9, 1, 79.99),
    (10, 10, 10, 1, 149.99);

-- Inserir mais dados na tabela itemvenda para vendas sem categorias
INSERT INTO itemvenda (id, venda_id, produto_id, quantidade, valor_total_item)
VALUES
    (11, 11, 11, 1, 17.99),
    (12, 12, 12, 1, 35.49),
    (13, 13, 13, 3, 53.97),
    (14, 14, 14, 1, 42.75),
    (15, 15, 15, 2, 39.98);
	
-- Inserir mais vendas para o cliente ID 4
INSERT INTO Venda (id, data_venda, valor_total, cliente_id)
VALUES
    (16, '2023-08-16', 59.99, 4),
    (17, '2023-08-17', 119.99, 4),
    (18, '2023-08-18', 34.99, 4);

-- Inserir mais vendas para o cliente ID 5
INSERT INTO Venda (id, data_venda, valor_total, cliente_id)
VALUES
    (19, '2023-08-19', 169.99, 5),
    (20, '2023-08-20', 24.99, 5),
    (21, '2023-08-21', 74.99, 5);

-- Inserir mais vendas para o cliente ID 10
INSERT INTO Venda (id, data_venda, valor_total, cliente_id)
VALUES
    (22, '2023-08-22', 89.99, 10),
    (23, '2023-08-23', 109.99, 10),
    (24, '2023-08-24', 49.99, 10);

-- Inserir itens de venda para as vendas dos clientes
INSERT INTO ItemVenda (id, venda_id, produto_id, quantidade, valor_total_item)
VALUES
    (16, 16, 6, 1, 49.99), -- Cliente 4, Venda 16, Produto 6 (Oculos de Sol)
    (17, 17, 5, 1, 89.99), -- Cliente 4, Venda 17, Produto 5 (Relogio)
    (18, 18, 7, 2, 4.98),  -- Cliente 4, Venda 18, Produto 7 (Chips de Batata)
    
    (19, 19, 1, 1, 699.99), -- Cliente 5, Venda 19, Produto 1 (Smartphone)
    (20, 20, 2, 1, 1299.99),-- Cliente 5, Venda 20, Produto 2 (Notebook)
    (21, 21, 3, 1, 19.99),  -- Cliente 5, Venda 21, Produto 3 (Camiseta)
    
    (22, 22, 6, 1, 49.99), -- Cliente 10, Venda 22, Produto 6 (Oculos de Sol)
    (23, 23, 4, 1, 39.99), -- Cliente 10, Venda 23, Produto 4 (Calca Jeans)
    (24, 24, 3, 2, 39.98); -- Cliente 10, Venda 24, Produto 3 (Camiseta)
	
	
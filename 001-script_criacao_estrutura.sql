USE lojasndm;

DROP TABLE IF EXISTS itemvenda;
DROP TABLE IF EXISTS produto;
DROP TABLE IF EXISTS venda;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS categoria;

CREATE TABLE cliente (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255)
);

ALTER TABLE cliente
ADD COLUMN data_nascimento DATE;

CREATE TABLE categoria (
    id INT PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE produto (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(10, 2),
	categoria_id INT,
	FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

CREATE TABLE venda (
    id INT PRIMARY KEY,
    data_venda DATE,
    valor_total DECIMAL(10, 2),
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

CREATE TABLE itemvenda (
    id INT PRIMARY KEY,
    venda_id INT,
    produto_id INT,
    quantidade INT,
    valor_total_item DECIMAL(10, 2),
    FOREIGN KEY (venda_id) REFERENCES venda(id),
    FOREIGN KEY (produto_id) REFERENCES produto(id)
);
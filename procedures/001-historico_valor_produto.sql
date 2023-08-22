-------

CREATE TABLE produto_historico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    preco_novo DECIMAL(10, 2),
    preco_antigo DECIMAL(10, 2),
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (produto_id) REFERENCES produto (id)
);


-----

DELIMITER $$
CREATE PROCEDURE RegistrarHistoricoProduto(IN produto_id_param INT, IN novo_valor_param DECIMAL(10, 2), IN antigo_valor_param DECIMAL(10, 2))
BEGIN
    INSERT INTO produto_historico (produto_id, preco_novo, preco_antigo)
    VALUES (produto_id_param, novo_valor_param, antigo_valor_param);
END;
$$
DELIMITER ;

-----

DELIMITER $$
CREATE TRIGGER AtualizarHistoricoProduto
AFTER UPDATE ON produto FOR EACH ROW
BEGIN
    IF NEW.preco != OLD.preco THEN
        CALL RegistrarHistoricoProduto(NEW.produto_id, NEW.preco, OLD.preco);
    END IF;
END;
$$
DELIMITER ;

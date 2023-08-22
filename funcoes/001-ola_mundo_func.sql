DELIMITER $$

CREATE FUNCTION ola_mundo()
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE mensagem VARCHAR(255);
    SET mensagem = 'Ola, Mundo!';
    RETURN mensagem;
END;
$$
DELIMITER ;

-------

DELIMITER $$

CREATE FUNCTION ola_mundo_personalizado(nome varhcar(255))
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE mensagem VARCHAR(255);
    SET mensagem = 'Ola, Mundo!';
    RETURN mensagem;
END;
$$
DELIMITER ;

-------

DELIMITER $$

CREATE FUNCTION ola_mundo(nome VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE mensagem VARCHAR(255);

    IF nome IS NOT NULL THEN
        SET mensagem = CONCAT('Ola, ', nome, '!');
    ELSE
        SET mensagem = 'Ola, Mundo!';
    END IF;

    RETURN mensagem;
END;
$$
DELIMITER ;

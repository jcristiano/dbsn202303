DROP FUNCTION IF EXISTS ola_mundo;

DELIMITER $$

CREATE FUNCTION IF NOT EXISTS ola_mundo()
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

DROP FUNCTION IF EXISTS ola_mundo_personalizado;

DELIMITER $$

CREATE FUNCTION IF NOT EXISTS ola_mundo_personalizado(nome varchar(255))
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

DROP FUNCTION IF EXISTS ola_mundo_geral;

DELIMITER $$

CREATE FUNCTION IF NOT EXISTS ola_mundo_geral(nome VARCHAR(255))
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


------ DROP DAS FUNCOES
DROP FUNCTION IF EXISTS ola_mundo;
DROP FUNCTION IF EXISTS ola_mundo_personalizado;
DROP FUNCTION IF EXISTS ola_mundo_geral;

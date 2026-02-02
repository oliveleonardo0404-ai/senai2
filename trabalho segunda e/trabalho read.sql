create database empresa;

use empresa

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    produto VARCHAR(100),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

INSERT INTO clientes (nome) VALUES
('Marcos Silva'),
('Ana Clara'),
('João Pedro'),
('Bruna Mendes'),
('Carlos Henrique');

INSERT INTO pedidos (id_cliente, produto) VALUES
(1, 'Notebook Lenovo'),
(2, 'Mouse Gamer'),
(3, 'Teclado Mecânico'),
(4, 'Monitor 24 Polegadas'),
(5, 'Headset USB');



DELIMITER $$

CREATE TRIGGER trg_verifica_cliente
BEFORE INSERT ON pedidos
FOR EACH ROW
BEGIN
    DECLARE qtd INT;

    -- SELECT dentro do trigger
    SELECT COUNT(*) INTO qtd
    FROM clientes
    WHERE id = NEW.id_cliente;

    -- Se o cliente não existir, bloquear
    IF qtd = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Cliente não encontrado. Pedido não pode ser criado.';
    END IF;

END$$

DELIMITER ;

INSERT INTO pedidos (id_cliente, produto)
VALUES (1, 'Notebook');


INSERT INTO pedidos (id_cliente, produto)
VALUES (999, 'Teclado');



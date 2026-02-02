CREATE DATABASE sistema_crud;
USE sistema_crud;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    data_cadastro DATETIME DEFAULT NOW()
);

DELIMITER $$

CREATE TRIGGER trg_bloqueia_update_email
BEFORE UPDATE ON clientes
FOR EACH ROW
BEGIN
    IF NEW.email <> OLD.email THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Não é permitido alterar o email do cliente.';
    END IF;
END$$

DELIMITER ;

UPDATE clientes
SET email = 'novoemail@email.com'
WHERE id = 1;



INSERT INTO clientes (nome, email) VALUES
('Ana Clara', 'ana.clara@example.com'),
('Bruno Henrique', 'bruno.henrique@example.com'),
('Carla Mendes', 'carla.mendes@example.com'),
('Diego Souza', 'diego.souza@example.com'),
('Eduarda Lima', 'eduarda.lima@example.com'),
('Felipe Martins', 'felipe.martins@example.com'),
('Gabriela Torres', 'gabriela.torres@example.com'),
('Henrique Santos', 'henrique.santos@example.com'),
('Isabela Rocha', 'isabela.rocha@example.com'),
('João Pedro', 'joao.pedro@example.com');



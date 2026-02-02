
-- criação da database
create database TechStore
-- usando a database
use TechStore

-- criando a tabela clientes
create table clientes(
id_cliente int primary key auto_increment,
nome varchar(100),
email varchar (100),
telefone varchar (20),
cidade varchar (50)
);

-- inserindo dados na tabela
insert INTO clientes (nome , email, telefone,cidade)
value
('Ana Pereira', 'ana.pereira@email.com', '(11) 98888-1111','São Paulo'),
('João Souza', 'joao.souza@email.com', '(21) 97777-2222','Rio de janeiro'),
('Maria Santos', 'maria.santos@email.com', '(31) 96666-3333','Belo Horizonte'),
('Carlos Lima', 'carlos.lima@email.com', '(41) 95555-4444','Curitiba'),
('Beatriz Oliveira', 'beatriz.oliveira@email.com', '(51) 94444-5555','Porto Alegre'),
('Ricardo Almeida', 'ricardo.almeida@email.com', '(71) 93333-6666','Salvador'),
('Juliana Costa', 'juliana.costa@email.com', '(85) 92222-7777','Fortaleza'),
('Pedro Martins', 'pedro.martins@email.com', '(61) 91111-8888','Brasília')

select * from clientes

-- criando a tabela produtos
create table produtos(
id_produto int primary key auto_increment,
nome_produto varchar(100),
descricao varchar (100),
preco decimal(10,2),
qtd_estoque varchar (50)
);

-- inserindo dados na tabela
insert INTO produtos (nome_produto,descricao,preco,qtd_estoque)
value
('Mouse','Mouse sem fio logitech M170', '85.00', '50'),
('Teclado','Teclado mecanico Redragon Kumara', '220.00', '30'),
('Fone','Fone Bluetooth JBL Tune 510BT', '320.00', '20'),
('Monitor','Monitor LG 24MK430H Full HD', '890.00', '15'),
('Impressora','Impressora HP DeskJet 2776', '780.00', '10'),
('Notebook','Notebook Dell inspiron 15', '4500.00', '8'),
('Cadeira','Cadeira Ergonômica Office Pro', '1250.00', '12'),
('HD Externo','HD Externo Seagate 1TB', '390.00', '25'),
('Mochila','Mochila para Notebook Samsonite', '310.00', '18'),
('Mousepad','Mousepad Gamer Redragon P003', '95.00', '40')

select * from produtos

-- criando a tabela pedidos
create table pedidos(
id_pedidos int primary key auto_increment,
id_cliente INT NOT NULL,
id_produto INT NOT NULL,
quantidade int,
data_pedido date,
 foreign key (id_cliente) references clientes(id_cliente),
 foreign key (id_produto) references produtos(id_produto)
);

-- inserindo dados na tabela
insert INTO pedidos (id_cliente,id_produto,quantidade,data_pedido)
value
('1','11', '2', '2025-10-10'),
('2','13', '1', '2025-10-15'),
('3','12', '3', '2025-10-18'),
('4','14', '3', '2025-10-20'),
('5','16', '4', '2025-10-22'),
('6','20', '3', '2025-10-23'),
('7','18', '2', '2025-10-24'),
('8','17', '1', '2025-10-25'),
('1','20', '1', '2025-10-26'),
('2','11', '2', '2025-10-27'),
('3','15', '1', '2025-10-27'),
('4','12', '2', '2025-10-28'),
('5','13', '1', '2025-10-29'),
('6','17','2', '2025-10-29'),
('7','16', '1', '2025-10-30')

select * from clientes

-- deletando todos os pedidos da Juliana Costa
delete FROM pedidos
WHERE id_cliente = 7;

-- deletando a cliente Juliana Costa do sistema
delete from clientes
where id_cliente = 7;

-- consultas

select * from clientes
where nome like('%ira');

select id_cliente , quantidade
from pedidos
where quantidade > 3

select nome_produto , preco , round(preco - (preco*0.15),2) as desconto
from produtos

select nome
from clientes
where cidade in('São Paulo', 'Curitiba')


select avg(qtd_estoque)
from produtos















create database empresa

use empresa

CREATE TABLE departamento(
	id_departamento INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL
    );
CREATE TABLE funcionario (
	id_funcionario INT PRIMARY KEY auto_increment,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    id_departamento INT NOT NULL,
    salario DECIMAL(10,3),
    foreign key (id_departamento) references departamento(id_departamento)
    );

    insert INTO funcionario (nome,cargo,id_departamento,salario)
    value
    ('Carlos henrique','gerente','3','2.500'),
    ('Xandler henrique gomes','auxiliar ADM','1','1.500'),
    ('Roberto nogueira','estagiários','5','1.000'),
    ('roberto henrique','estagiario','4','1.000'),
    ('claudio nogueira','supervisor','2','2.000'),
    ('miguel antonio','supervisor','1','2.000'),
    ('eduardo pato','gerente','1','2.500'),
    ('claudia santos','auxiliar ADM','4','1.500'),
    ('renata oliveira','estagiario','3','1.000'),
    ('eduarda nogueira','supervisor','5','2.000');
    
    SELECT * FROM funcionario;
    SELECT * FROM departamento;
    
    drop table funcionario
    
UPDATE funcionario
SET salario = '2.500'
WHERE id_departamento = 5;

delete FROM funcionario
WHERE id_funcionario = 12;

insert INTO funcionario (nome,cargo,id_departamento,salario)
value
('claudinho ribamar','Auxiliar ADM','2','1.500');

drop table departamento;





    
    
	
 
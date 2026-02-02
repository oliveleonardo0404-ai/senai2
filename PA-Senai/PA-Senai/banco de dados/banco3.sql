create database em
use empresa

create table funcionario(
	id_funcionario int primary key,
    nome VARCHAR(100) not null,
    cargo VARCHAR(100),
    salario DECIMAL(10,2)

    );
    
    create table atribuicao(
	id_funcionario int  ,
    id_projeto int ,
    foreign key (id_funcionario) references funcionario(id_funcionario),
    foreign key (id_projeto) references projeto(id_projeto)
    );
    
    insert INTO atribuicao (id_funcionario,id_projeto)
    value
	('1','2'),
    ('2','1'),
    ('3','3'),
    ('4','3'),
    ('5','2'),
    ('6','4'),
    ('7','3'),
    ('8','2'),
    ('9','1'),
    ('10','2');
    
    select * from projeto
    
    
    drop table atribuicao
    
    delete FROM projeto
WHERE id_projeto = 2;
    
    
    update projeto
    set data_inicio = '2025-05-01'
    where id_projeto = 1; 
    

    

    
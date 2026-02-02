-- criando a database 
CREATE DATABASE empresa

-- usar a database
USE escola;

-- criando a tabela times 
CREATE TABLE aluno(
	id_aluno INT PRIMARY KEY auto_increment,	
	nome_aluno VARCHAR(100) NOT NULL,
	email VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE matricula(
	id_matricula INT primary key auto_increment,
	id_aluno INT NOT NULL,
    id_curso INT NOT NULL,
    data_matricula DATE ,
    foreign key (id_aluno) references aluno(id_aluno),
     foreign key (id_curso) references curso(id_curso)
);

insert INTO aluno (nome_aluno, email , data_nascimento)
VALUES
('Xandler henrique gomes','xandlerhenrique@gmail.com','2008-05-07'),
('kaue cicarone', 'kauecica10aninhos@gmail.com','2012-07-21'),
('claudinho henrique', 'claudinho123@gmail.com','2005-05-15'),
('luis pato','patoluisakatsuki@gmail.com','2000-11-25'),
('fernando da silva','fernandodasilva@gmail.com','2004-08-15');

SELECT * FROM aluno;


UPDATE times
SET nome = 'claudinho Teams'
WHERE id = 1;

delete FROM times
WHERE id = 1;
  
DROP TABLE curso;

DROP DATABASE teste;

-- identificando as tabelas
select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;

-- SELECIONAR APENAS O NOME DO DEPARTAMENTO

select dept_no
from departments;

-- selecionar da tabela empregados 1 empregado com o nome especifico

select emp_no, first_name ,last_name
from employees
where last_name = 'Piveteau'

-- selecionar uma pessoa com nome e sobrenome especifico

select * from employees
where hire_date ='2000' ;

-- selecionar  uma pessoa com nome e genero especifico
select * from employees
where gender = 'F' and (first_name = 'Kellie' or first_name ='Aruna');

-- fazer uma query que retorne alguem com um nome ou alguem com um sobrenome especifico
select emp_no ,first_name, last_name
from employees
where first_name = 'Parto' or last_name = 'Simmel';

-- retornar  um filtro (dentro de outro filtro)
-- genero masculino e nome jeong ou parto
select * from employees
where gender ='M' and(first_name = 'Jeong' or first_name = 'Georgi');

-- fazer uma verificação  agrupada
select * from employees
where daih ('Denis','elvis');

-- fazer uma verificação agrupada de nao inclusos
select * from employees
where first_name not in('John','Mark','Jacob');

-- procurar e retornar funcionarios que iniciem o nome com a silaba 'AL'
select * from employees
where first_name like('Mark%');

-- procurar e retornar funcionarios que terminem o sobrenome com a silaba 'RI'
select * from employees
where last_name like('%ri');

-- retornar  empregrados em que o  nome tenha 4 letras e inicie com gia	
select * from employees
where first_name like('Gia_');
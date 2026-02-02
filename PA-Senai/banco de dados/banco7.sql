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

select * from produtos

-- fazer uma verificação  agrupada
select nome , sobrenome
from clientes
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

-- retornar todos  os empregados onde o o emp_no nao seja nulo
select * from titles
where emp_no is not null;

-- retornar todos  os empregados onde o o emp_no seja nulo
select * from titles
where emp_no is null;

-- retonar  apenas os engenheiros ou engenheiros senior
select * from titles 
where titles in('Enginner','Senior Enginner');

-- retonar  apenas os nao engenheiros ou engenheiros senior
select * from titles 
where titles not in('Enginner','Senior Enginner');

-- retorne uma lista de funcionarios com o primeiro nome diferente
select distinct first_name
from employees

-- retorne uma amostra de 10 itens da tabela salaries
select * from salaries
limit 10;

-- retorne o emp no e o salario
-- em ordem de maior para o menor
select emp_no, salary
from salaries
order by salary desc;

-- retorna o maior salario 
select max(salary)
from salaries;	

-- retorna o menor salario 
select min(salary)
from salaries;

-- em funcionarios ativos no sistema
-- a coluna adequada deve ter  o nome de new_salary
select emp_no, salary, salary + (salary*0.1) as new_salary
from salaries
where to_date = '9999-01-01';

-- retornando o nome completo do funcionario em uma coluna só 
select emp_no, concat(first_name, ' ',last_name) AS full_name
from employees;

-- função de agregação!!!
select count(*) as qtd_emp
from employees

-- retorne a media salarial
-- com 2 casa decimais
select round(avg(preco),2) as avg_preco
from produtos;

select * from clientes

select quantidade count(*) as qtd_produto
from pedidos
where id_cliente = '1';

select count(*) as qtd_produto
from produtos
where preco < '10.00'

select * from produtos

select nome , preco
from produtos
order by preco asc
limit 1;

select * from produtos
select * from pedidos

SELECT SUM((SELECT preco FROM produtos WHERE id_produto = 1) * quantidade) AS total_dinheiro
FROM pedidos
WHERE id_produto = 1;

select sum((select quantidade from clientes where estado = 'SP')* quantidade) as total_estado
from pedidos



	
select * from pedidos

select preco , quantidade sum(
from produto and pedidos

	

select quantidade, data_pedido
from pedidos
where data_pedido = '2023-10-01';

select id_produto , categoria
from produtos
where id_cliente = '1';

select quantidade, count(*) as total_produto
from pedidos
group by quantidade
where id_cliente ='1';


select nome , tipo
from clientes
where tipo = 'pessoa jurídica'

select max(preco)
from produtos;

select count(*) as qtd_estado
from clientes
group by estado

select * from clientes



select 
from pedidos
where data_pedido > '2022-12-31'

select * from pedidos

select sum(quantidade) as qtd_pedidos
from pedidos;




-- qual é a soma da folha salarial anual do funcionario 
select sum(preco) as sum_year_salary
from produtos
where categoria = 'Categoria 2';

-- qual é a soma da folha salarial anual do funcionario que são superio a 100k
select sum(salary) as sum_year_plus
from salaries
where to_date = '9999-01-01' and salary > 100000; 

select emp_no round(avg(salary), 2) as avg_salary
from salaries
where to_date = '9999-01-01'
group by emp_no
having avg(salary) > 120000
order by avg_salary desc;
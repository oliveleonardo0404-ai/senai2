drop database hospital

create database hospital

use hospital

create table medico(
id_medico int primary key auto_increment,
nome varchar(100),
crm varchar (50),
telefone varchar (20),
especialidade varchar(50)
);


create table paciente(
id_paciente int primary key auto_increment,
nome varchar(100),
cpf varchar(20),
telefone varchar (20),
convenio varchar(50),
email varchar(100),
historico varchar (250),
senha varchar (50)
);


create table triagem(
id_triagem int primary key auto_increment,
id_paciente int not null,
agendamento date,
peso DECIMAL(5,2),		
altura DECIMAL(4,2),
nivel_dor tinyint check (nivel_dor >= 1 AND nivel_dor <= 10),
frequencia_cardiaca INT,
 pressao_arterial VARCHAR(10),
 observacao varchar(250),
 foreign key (id_paciente) references paciente(id_paciente)
);

create table consulta(
id_consulta int primary key auto_increment,
id_medico int not null,
id_paciente int not null,
data_consulta datetime,
especialidade varchar (50),
foreign key (id_medico) references medico(id_medico),
foreign key (id_paciente) references paciente(id_paciente)
);








-- paciente 
INSERT INTO paciente (nome, email, senha, cpf, telefone, convenio, historico) VALUES
('Ana Pereira', 'ana.pereira@gmail.com', 'senha123', '054.736.265-65', '(11) 98888-1111', 'Unimed', 'Hipertensa desde 2015. Usa losartana 50mg/dia. Controle irregular da pressão. Alergia a penicilina.'),
('João Souza', 'joao.souza@gmail.com', 'jsouza2024', '513.735.389-45', '(21) 97777-2222', 'Bradesco Saúde', 'Diabético tipo 2. Usa metformina 850mg 2x/dia. Histórico de neuropatia periférica leve. Ex-fumante.'),
('Maria Santos', 'maria.santos@gmail.com', 'maria123', '372.914.058-32', '(31) 96666-3333', 'SUS', 'Asma intermitente. Usa salbutamol quando necessário. Internação por crise asmática em 2019.'),
('Carlos Lima', 'carlos.lima@gmail.com', 'carlos2025', '198.204.670-88', '(41) 95555-4444', 'Allianz', 'Pós-operatório de colecistectomia 2020. Dislipidemia controlada com sinvastatina 20mg.'),
('Beatriz Oliveira', 'beatriz.oliveira@gmail.com', 'btrz@2024', '741.359.820-12', '(51) 94444-5555', 'Amil', 'Depressão em tratamento com sertralina 50mg/dia. Queixa de insônia leve.'),
('Ricardo Almeida', 'ricardo.almeida@gmail.com', 'ric12345', '629.180.443-09', '(71) 93333-6666', 'NotreDame', 'Infarto em 2018 com colocação de stent. Usa aspirina e atorvastatina.'),
('Juliana Costa', 'juliana.costa@gmail.com', 'juliana2025', '287.460.915-77', '(85) 92222-7777', 'Prevent Senior', 'G2P1, cesárea em 2017. História de anemia ferropriva leve.'),
('Pedro Martins', 'pedro.martins@gmail.com', 'pmartins@123', '905.671.332-50', '(61) 91111-8888', 'SulAmérica', 'Dor lombar crônica. Realizou fisioterapia em 2023.'),
('Fernanda Ramos', 'fernanda.ramos@gmail.com', 'framos2024', '413.592.208-21', '(27) 98800-1234', 'Unimed', 'Hipotireoidismo controlado com levotiroxina 75mcg/dia.'),
('Luiz Henrique', 'luiz.henrique@gmail.com', 'luiz@senha', '056.823.497-36', '(62) 97700-4321', 'SUS', 'Tabagista ativo com tosse crônica. Solicitada radiografia de tórax.'),
('Mariana Freitas', 'mariana.freitas@gmail.com', 'mfreitas2025', '330.417.665-04', '(19) 96655-1212', 'Bradesco Saúde', 'Alergia a sulfonamidas. Cirurgia de apendicite em 2010.'),
('Gustavo Ribeiro', 'gustavo.ribeiro@gmail.com', 'gribeiro@1', '880.210.334-11', '(48) 95544-2121', 'Amil', 'Obesidade grau I. Em reeducação alimentar e atividade física.'),
('Clara Nascimento', 'clara.nascimento@gmail.com', 'clara@2025', '219.334.881-66', '(11) 98822-3344', 'Unimed', 'Migrânea com aura. Usa propranolol 40mg à noite.'),
('Diego Barbosa', 'diego.barbosa@gmail.com', 'dbarbosa123', '447.901.550-98', '(31) 97711-5566', 'Allianz', 'Lesão esportiva no joelho direito. Aguardando ressonância.'),
('Patrícia Moreira', 'patricia.moreira@gmail.com', 'pati2025', '553.778.220-13', '(41) 98833-6677', 'SulAmérica', 'Diabetes gestacional em acompanhamento. Dieta controlada.'),
('Eduardo Menezes', 'eduardo.menezes@gmail.com', 'edu@2024', '702.114.399-27', '(51) 94411-2233', 'NotreDame', 'Hipertenso controlado com enalapril 10mg/dia.'),
('Aline Castro', 'aline.castro@gmail.com', 'alinecastro', '618.455.003-40', '(71) 99988-0011', 'Prevent Senior', 'Rosácea leve. Uso tópico de metronidazol 0,75%.'),
('Rafael Gonçalves', 'rafael.goncalves@gmail.com', 'rafael@123', '365.220.874-52', '(85) 98855-4433', 'Amil', 'Alergia a frutos do mar. Porta adrenalina prescrita.'),
('Sofia Teixeira', 'sofia.teixeira@gmail.com', 'sofiateixeira', '940.667.121-84', '(61) 97777-0002', 'Bradesco Saúde', 'Artrite reumatoide em remissão parcial. Usa metotrexato.'),
('Marcelo Lima', 'marcelo.lima@gmail.com', 'marcelo2025', '101.233.554-29', '(62) 98866-2244', 'SUS', 'Hipertenso e fumante. Orientado sobre adesão ao tratamento.');




-- medico 
INSERT INTO medico (nome, crm, telefone, especialidade) 
VALUES
('Dr. Pedro Almeida', 'CRM-SP 123456', '(11) 98877-1001', 'Cardiologia'),
('Dra. Marina Santos', 'CRM-RJ 234567', '(21) 97766-2002', 'Endocrinologia'),
('Dr. Rafael Costa', 'CRM-MG 345678', '(31) 96655-3003', 'Ortopedia'),
('Dra. Beatriz Nogueira', 'CRM-PR 456789', '(41) 95544-4004', 'Ginecologia'),
('Dr. João Pires', 'CRM-RS 567890', '(51) 94433-5005', 'Clínico Geral'),
('Dra. Ana Monteiro', 'CRM-BA 678901', '(71) 93322-6006', 'Dermatologia'),
('Dr. Lucas Ferreira', 'CRM-SC 789012', '(48) 92211-7007', 'Neurologia'),
('Dra. Camila Rocha', 'CRM-DF 890123', '(61) 91100-8008', 'Pediatria'),
('Dr. Gustavo Lima', 'CRM-PE 901234', '(81) 90099-9009', 'Psiquiatria'),
('Dra. Patrícia Carvalho', 'CRM-CE 012345', '(85) 98888-1010', 'Oftalmologia'),
('Dr. Eduardo Martins', 'CRM-GO 123457', '(62) 97777-1111', 'Urologia'),
('Dra. Fernanda Ribeiro', 'CRM-ES 234568', '(27) 96666-1212', 'Reumatologia'),
('Dr. Ricardo Silva', 'CRM-AM 345679', '(92) 95555-1313', 'Pneumologia'),
('Dra. Juliana Barros', 'CRM-PA 456780', '(91) 94444-1414', 'Nutrologia'),
('Dr. Felipe Teixeira', 'CRM-MS 567891', '(67) 93333-1515', 'Gastroenterologia');

-- triagem
INSERT INTO triagem (id_paciente, agendamento, peso, altura, nivel_dor, frequencia_cardiaca, pressao_arterial, observacao) 
VALUES
(1, '2025-11-04', 68.5, 1.62, 4, 88, '150x95', 'Relata dor de cabeça e tontura. Pressão elevada.'),
(2, '2025-10-28', 82.3, 1.75, 3, 92, '130x85', 'Relata formigamento leve nos pés. Glicemia controlada.'),
(3, '2025-10-22', 63.0, 1.60, 2, 84, '120x80', 'Sem queixas no momento. Respiração normal.'),
(4, '2025-10-30', 79.2, 1.78, 1, 76, '125x82', 'Pós-operatório estável. Nenhuma queixa.'),
(5, '2025-10-27', 61.8, 1.65, 5, 86, '118x78', 'Refere insônia e leve ansiedade.'),
(6, '2025-11-02', 84.5, 1.80, 2, 80, '128x84', 'Relata cansaço leve. Sem dor no peito.'),
(7, '2025-10-25', 70.2, 1.66, 3, 89, '115x75', 'Queixa de fraqueza. Alimentação irregular.'),
(8, '2025-10-21', 85.4, 1.82, 6, 95, '140x90', 'Relata dor lombar após esforço físico.'),
(9, '2025-11-01', 67.8, 1.70, 2, 78, '118x76', 'Sem sintomas. Paciente bem controlada.'),
(10, '2025-10-23', 73.5, 1.73, 1, 82, '122x80', 'Tosse persistente há 3 semanas. Orientado retorno.'),
(11, '2025-10-29', 59.1, 1.64, 2, 80, '110x70', 'Sem queixas. Acompanhamento ginecológico.'),
(12, '2025-10-24', 96.0, 1.78, 3, 88, '130x85', 'Relata cansaço ao subir escadas.'),
(13, '2025-10-26', 60.4, 1.63, 5, 90, '120x80', 'Refere dor de cabeça leve. Crise de enxaqueca controlada.'),
(14, '2025-11-03', 81.0, 1.81, 4, 87, '128x83', 'Dor no joelho direito após exercício.'),
(15, '2025-10-20', 71.2, 1.68, 3, 90, '115x75', 'Relata tontura leve pela manhã.'),
(16, '2025-10-31', 78.6, 1.74, 2, 82, '125x80', 'Sem sintomas. Pressão bem controlada.'),
(17, '2025-11-05', 58.0, 1.61, 1, 76, '110x72', 'Sem queixas. Pele levemente avermelhada.'),
(18, '2025-10-28', 75.3, 1.80, 6, 94, '135x88', 'Episódio leve de coceira após refeição.'),
(19, '2025-10-22', 64.5, 1.67, 3, 88, '122x82', 'Sem dor articular. Mantém uso regular da medicação.'),
(20, '2025-10-27', 80.9, 1.75, 5, 96, '145x92', 'Pressão alta. Paciente relata não uso de medicação.');



-- consulta
INSERT INTO consulta (id_medico, id_paciente, data_consulta, especialidade)
VALUES
(1, 1, '2025-11-04 10:00:00', 'Cardiologia'),
(2, 2, '2025-10-28 14:30:00', 'Endocrinologia'),
(4, 3, '2025-10-22 09:15:00', 'Pneumologia'),
(5, 5, '2025-10-27 16:00:00', 'Psiquiatria'),
(8, 8, '2025-10-21 11:45:00', 'Ortopedia'),
(9, 9, '2025-11-01 08:30:00', 'Clínico Geral'),
(3, 10, '2025-10-23 13:00:00', 'Clínico Geral'),
(12, 11, '2025-10-29 15:15:00', 'Ginecologia'),
(14, 12, '2025-10-24 09:00:00', 'Nutrologia'),
(7, 13, '2025-10-26 10:45:00', 'Neurologia'),
(13, 14, '2025-11-03 10:20:00', 'Ortopedia'),
(15, 15, '2025-10-20 08:00:00', 'Ginecologia'),
(10, 16, '2025-10-31 17:30:00', 'Oftalmologia'),
(11, 17, '2025-11-05 11:00:00', 'Dermatologia'),
(6, 18, '2025-10-28 09:40:00', 'Alergologia'),
(12, 19, '2025-10-22 10:30:00', 'Reumatologia'),
(5, 20, '2025-10-27 14:15:00', 'Clínico Geral');


select * from paciente







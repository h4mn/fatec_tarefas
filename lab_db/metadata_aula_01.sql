#Criar o banco de dados
CREATE DATABASE bdClinicaMedica;

#Colocar o banco de dados em uso
USE bdClinicaMedica;

#Criar as tabelas
##################################################

#(obs: na tabela paciente, pac_complemento varchar(30); tabela medico, med_salario numeric(9,2);
CREATE TABLE especialidade(
esp_codigo INTEGER,
esp_nome VARCHAR(60),
PRIMARY KEY(esp_codigo)
);

CREATE TABLE medico(
med_crm VARCHAR(10),
med_nome VARCHAR(60), 
med_telefone VARCHAR(30),
med_email VARCHAR(60),
med_salario NUMERIC(9,2),
esp_codigo INTEGER,
PRIMARY KEY(med_crm)
);

CREATE TABLE consulta(
con_numero    INTEGER, 
con_data         DATE,
con_hora         VARCHAR(05), 
con_horainicio VARCHAR(05),
con_horafim    VARCHAR(05),
con_historico   VARCHAR(300),
pac_numero     INTEGER,
med_crm          VARCHAR(10),
PRIMARY KEY(con_numero)
);

CREATE TABLE tipoatendimento(
tip_codigo INTEGER,
tip_nome   VARCHAR(30),
PRIMARY KEY(tip_codigo)
);

CREATE TABLE paciente(
pac_numero           INTEGER,
pac_nome              VARCHAR(60),
pac_telefone          VARCHAR(20), 
pac_telefone1        VARCHAR(20), 
pac_telefone2        VARCHAR(20), 
pac_rua                  VARCHAR(60), 
pac_complemento VARCHAR(30), 
pac_end_num         INTEGER,
pac_cep                  VARCHAR(09), 
pac_bairro              VARCHAR(30), 
pac_cidade             VARCHAR(30),
pac_uf                    VARCHAR(02), 
pac_pais                 VARCHAR(40),
tip_codigo              INTEGER,
PRIMARY KEY(pac_numero)
);

#inserir os dados nas tabelas
##################################################

#especialidade
INSERT INTO especialidade VALUES (1, 'Cardiologia'),
(2, 'Angiologia'),
(3, 'Mastologia'),
(4, 'Neurologia'),
(5, 'Oftalmologia'),
(6, 'Pediatria'),
 (7, 'Psiquiatria'),
 (8, 'Clinica Médica');

#tipoatendimento
INSERT INTO tipoatendimento VALUES(1, 'Particular');
INSERT INTO tipoatendimento VALUES(2, 'Plano de saúde');
INSERT INTO tipoatendimento VALUES(3, 'SUS');

#medico
INSERT INTO medico (med_crm, med_nome, med_telefone, med_email, esp_codigo, med_salario)
VALUES 
	('001', 'Valter Santos', '(11) 9 9890 0102', 'valter.santos@clinicamedica.com.br', 8, 4350.89),
   ('002', 'Silvio', '(11) 9 9890 0301', 'Silvio@clinicamedica.com.br', 5, 3600.00),
   ('003', 'Alexandre', '(11) 9 9890 0302', 'Alexandre@clinicamedica.com.br', 3, 5000.00),
   ('004', 'Carlos', '(11) 9 9890 0507', 'Carlos@clinicamedica.com.br', 5, 3600.00),
   ('005', 'Antonio', '(11) 9 9890 0509', 'Antonio@clinicamedica.com.br', 8, 4000.00),
   ('006', 'Osvaldo', '(11) 9 9890 0708', 'Osvaldo@clinicamedica.com.br', 6, 6200.00),
   ('007', 'Humberto', '(11) 9 9890 0705', 'Humberto@clinicamedica.com.br', 3, 5000.00),
   ('008', 'Valdir', '(11) 9 9890 0809', 'Valdir@clinicamedica.com.br', 4, 3600.00),
   ('009', 'Mariana', '(11) 9 9890 0108', 'Mariana@clinicamedica.com.br', 6, 6200.00),
   ('010', 'Marcia', '(11) 9 9890 0806', 'Marcia@clinicamedica.com.br', 1, 2800.00),
   ('011', 'Monica', '(11) 9 9890 0112', 'Monica@clinicamedica.com.br', 2, 2800.00),
   ('012', 'Solange', '(11) 9 9890 0115', 'Solange@clinicamedica.com.br', 8, 4000.00);

#paciente
INSERT INTO paciente (pac_numero, pac_nome, pac_telefone, pac_telefone1, pac_telefone2, pac_rua, pac_complemento, pac_end_num, pac_cep, pac_bairro, pac_cidade, pac_uf, pac_pais, tip_codigo)
VALUES
	(100, 'Flavia', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Paraiso', 'Santo André', 'SP', 'Brasil', 1),
   (101, 'Marli', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 315, 'cep', 'Barra Funda', 'São Paulo', '', 'Brasil', 3),
   (102, 'Ana', 'tel', 'tel1', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Higianólolis', 'Sao Paulo', 'SP', 'Brasil', 3),
   (103, 'Bruno', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Centro', 'São Bernardo do Campo', 'SP', 'Brasil', 1),
   (104, 'Rafael', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Ponte Seca', 'Ribeirao Pires', 'SO', 'Brasil', 1),
   (105, 'Wagner', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Centro', 'Araguaína', 'TO', 'Brasil', 3),
   (106, 'Tereza', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Centro', 'Ontário', 'ON', 'Canadá', 2),
   (107, 'Silvia', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Ouro Fino', 'Ribeirão Pires', 'SP', 'Brasil', 3),
   (108, 'Sueli', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Campestre', 'Santo André', 'SP', 'Brasil', 1),
   (109, 'Angela', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Vila Helena', 'Santo André', 'SP', 'Brasil', 3),
   (110, 'Amanda', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 315, 'cep', '', 'Buenos Aires', '', 'Argentina', 2);

-- consulta

INSERT INTO consulta (con_numero, con_data, con_hora, con_horainicio, con_horafim, con_historico, pac_numero, med_crm)
VALUES
	(1, '2016-08-26', '09:00', NULL, NULL, NULL, 100, '004'),
   (2, '2016-05-15', '14:00', NULL, NULL, NULL, 110, '003'),
   (3, '2016-08-26', '09:30', NULL, NULL, NULL, 100, '006'),
   (4, '2017-02-17', '10:00', NULL, NULL, NULL, 101, '004'),
   (5, '2017-02-17', '11:30', NULL, NULL, NULL, 105, '004'),
   (6, '2017-02-17', '13:30', NULL, NULL, NULL, 106, '006'),
   (7, '2017-02-13', '16:00', NULL, NULL, 'Dores no corpo e febre', 106, '004'),
   (8, '2017-02-14', '15:00', NULL, NULL, 'Dificuldade de enxergar de perto', 100, '005'),
   (9, '2017-02-14', '12:00', NULL, NULL, NULL, 102, '002'),
   (10, '2017-02-15', '15:30', NULL, NULL, 'Dores no corpo, febre, nausea e vômito', 100, '006'),
   (11, '2017-04-20', '11:00', NULL, NULL, NULL, 105, '004'),
   (12, '2016-12-02', '10:00', NULL, NULL, NULL, 100, '004'),
   (13, '2016-12-02', '10:15', NULL, NULL, 'Taquicardia', 103, '001'),
   (14, '2016-12-02', '10:30', NULL, NULL, NULL, 104, '004'),
   (15, '2017-06-10', '09:00', NULL, NULL, NULL, 100, '004'),
   (16, '2017-01-19', '17:00', NULL, NULL, 'Arritimia', 107, '001'),
   (17, '2017-02-27', '15:00', NULL, NULL, NULL, 103, '004'),
   (18, '2017-04-05', '16:00', NULL, NULL, 'Resfriado', 109, '008'),
   (19, '2017-04-20', '11:30', NULL, NULL, 'Taquicardia', 100, '001'),
   (20, '2017-05-12', '15:00', NULL, NULL, 'Dor de cabeça aguda', 102, '008');
   

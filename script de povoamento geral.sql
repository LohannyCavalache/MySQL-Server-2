use clinica_db_lohanny;

insert into medicos (id, nome, data_nascimento, cpf, crm, uf_crm, telefone, endereco) values
(1, 'Helena Amaral', '1990-10-22', '907.472.500-73', '683527', 'SP', '(11) 93513-6236', 'R. Adelino Alvez, 151'),
(2, 'Daniel de Andrade', '1978-03-06', '405.951.510-86', '138962', 'SP', '(11) 92211-9876', 'R. Thomás Deloney, 460'),
(3, 'Francisco Barbosa', '2000-02-05', '932.346.470-89', '757894', 'SP', '(11) 92204-3374', 'R. Cancioneiro Popular, 480'),
(4, 'Marcela Rosa', '2006-02-10', '278.580.450-32', '784795', 'SP', '(11) 93145-5578', 'R. Max Klaussner, 78'),
(5, 'Adriane Ferreira', '1998-10-25', '281.539.550-98', '466896', 'SP', '(11) 93174-7113', 'R. Baltazar Fernandes, 213'),
(6, 'Eliana Barreto', '1980-05-23', '841.888.330-84', '973837', 'SP', '(11) 93443-6750', 'R. Gabriel de Lara, 196'),
(7, 'Elaine Campos', '1991-11-30', '961.731.340-55', '614346', 'SP', '(11) 92357-3423', 'R. Godói Colaço, 280'),
(8, 'Letícia Almeida', '1989-01-21', '496.623.800-51', '632435', 'SP', '(11) 93732-9426', 'R. Pascoal Pais, 336'),
(9, 'José Camargo', '1989-05-13', '696.084.940-36', '364642', 'SP', '(11) 92286-2091', 'R. Roque Petrella, 461'),
(10, 'Rodrigo Castro', '1990-07-17', '061.366.520-13', '816662', 'SP', '(11) 92424-2426', 'R. Francisco Dias Velho, 367');
select * from medicos;

insert into pacientes (id, nome, data_nascimento, endereco, telefone, email, cpf, rg, convenio_id, carteira_convenio) values
(1, 'Theo Oliveira', '2013-02-10', 'R. Melo Coutinho', '(11) 93981-8967', 'theooliveira@gmail.com', '860.945.240-98', '35.744.979-4', null, '58485461461235349'),
(2, 'Ravi Santos', '2000-07-24', 'R. Padre Justino, 444', '(11) 93863-1277', 'santosravi@gmail.com', '918.671.440-69', '45.314.044-0', 3, '37143341618892911'),
(3, 'Bernardo Pereira', '1999-05-19', 'R. James Ensor, 701', '(11) 93971-8170', 'pereiraber@gmai.com', '123.281.720-16', '49.388.203-0', null, '89865973573278936'),
(4, 'Cecília Cavalcanti', '1996-06-06', 'R. Júlio Frank, 3', '(11) 92546-5861', 'ceciliacaval@gmail.com', '254.639.980-27', '14.088.884-6', 1, '86635843959223435'),
(5, 'Maitê Alvez', '2001-12-06', 'R. Vila Caiz, 609', '(11) 92532-3262', 'maiteavs@gmail.com', '585.317.090-24', '45.616.488-1', 2, '36847936731133175'),
(6, 'Enzo Lima', '1997-11-02', 'R. Cipolândia, 256', '(11) 92633-0751', 'enzolimael@gmail.com', '659.853.900-55', '25.619.854-8', null, '89243957158239111'),
(7, 'Júlia Costa', '1999-10-27', 'R. Oliveira Serpa, 10', '(11) 92713-4240', 'costajuliajc@gmail.com', '727.016.000-73', '40.742.067-8', 4, '71963264675252944'),
(8, 'Maria Souza', '1998-03-30', 'R. Zacarias Dias Cortes, 294', '(11) 93455-5334', 'masouza@gmail.com', '091.151.420-19', '23.700.576-1', null, '38415841232816167'),
(9, 'Davi Silva', '2014-05-29', 'R. João Pais Málio, 549', '(11) 92491-2061', 'davisilvadavi@gmail.com', '368.815.550-59', '49.635.493-0', null, '16299171313665742'),
(10, 'Djalma Ferreira', '2000-08-12', 'R. Vicenzo Danti, 76', '(11) 93944-8173','djamlmafe@gmail.com', '318.162.090-40', '14.927.384-8', 1, '86222397835151837');
select * from pacientes;

insert into enfermeiros(id, nome, cpf, cre) values
(1, 'Arthur Alves', '113.707.270-97', '149788'),
(2, 'Lucia Álvares', '879.883.070-88', '749589'),
(3, 'Isabela Borges', '983.227.480-00', '862529'),
(4, 'Sofia Cardoso', '789.651.180-00', '499735'),
(5, 'Joaquim Carvalho', '012.830.690-40', '496674'),
(6, 'Pedro Dias', '237.989.260-18', '929955');
select * from enfermeiros;

insert into quartos(id, numero, tipo_quarto_id) values
(1, '10', 2),
(2, '20', 1),
(3, '30', 3);
select * from quartos;

insert into especialidades_medicos(id, medico_id, especialidade_id) values
(1, 3, 7),
(2, 8, 5),
(3, 9, 2),
(4, 2, 4),
(5, 6, 3),
(6, 1, 6),
(7, 4, 1),
(8, 10, 2),
(9, 5, 4),
(10, 7, 1);
select * from  especialidades_medicos;

insert into consultas(id, data_hora, medico_id, paciente_id, valor, especmedico_id) values
(1, '2017-07-15 19:10:15', 4, 9, '60.00', 1),
(2, '2017-05-29 18:08:38', 1, 4, '120.00', 6),
(3, '2018-05-22 11:33:22', 6, 10, '145.00', 3),
(4, '2020-10-06 10:38:01', 10, 6, '150.00', 2),
(5, '2020-09-24 22:20:53', 7, 1, '60.00', 1),
(6, '2019-08-30 17:09:12', 9, 8, '150.00', 2),
(7, '2019-08-26 06:06:32', 2, 3, '135.00', 4),
(8, '2019-05-14 10:07:26', 5, 5, '135.00', 4),
(9, '2020-12-23 21:55:22', 3, 2, '178.00', 7),
(10, '2017-03-28 18:40:27', 8, 7, '126.00', 5);
select * from consultas;

insert into receitas(id, prescricao, consulta_id) values
(1, '1-Fluoxetina 20mg.........30comp/mes. Uso: 01 Comprimido, via oral, 1x/dia, pela manhã. Uso contínuo. 2-Amitriptilina 25mg......30comp/mes. Uso: 01 Comprimido, via oral, 1x/dia, pela noite. Uso contínuo', 9),
(2, '1-Prednisolona 3mg/ml xarope........60ml. Uso: Tomar 5ml, via oral, pela manhâ, por 5 dias. 2-Salbutamol aerosol 100mcg/jato....200 doses. Uso: Espirrar 2 jatos, a cada 6 horas, por 5 dias.', 5),
(3, '1- Diprogenta creme ................1tb. Uso: Aplicar na cicatriz 2x ao dia por 7 dias. 2-Hidradeep intensive hidratante. Uso: Aplicar no corpo 2x ao dia.', 8),
(4, '1-Cefaliv ..........................01cx. Uso: 01 comprimido via oral, 12/12h se dor. 2-Mavenclad 10mg (cladribina)............12 comprimidos. Uso: Tomar 2 comprimidos no primeiro dia, 1 comprimido do segundo ao quinto dia. Repetir por 12 meses.', 10),
(5, '1-Hidroxicloroquina 400mg...........01cx. Uso: Tomar 01 comp de 12/12h no dia de 1 e 01 comp por dia por 5 dias. 2-Azitromicina 500mg............01cx. Uso: Tomar 01 comp por dia por 10 dias.', 4);
select * from receitas;

insert into internacoes(id, data_entrada, data_prev_alta, data_alta, procedimento, paciente_id, medico_id, quarto_id) values
(1, '2019-07-13', '2019-07-16', '2019-07-18', 'Internada com urgência por estar com falta de ar devido a bronquite.', 4, 1, 3),
(2, '2021-05-08', '2021-05-11', '2021-05-13', 'Internado por braço quebrado.', 2, 3, 2),
(3, '2022-02-08', '2022-02-11', null, 'Internada se queixando de falta de ar.', 4, 6, 3),
(4, '2017-02-09', '2017-02-12', '2017-02-11', 'Internada por infecção grave.', 7, 8, 2),
(5, '2018-09-05', '2018-09-08', '2018-09-11', 'Internado após remoção de tumor cerebral.', 10, 3, 1),
(6, '2022-06-11', '2022-06-14', null, 'Internado por convulsões frequentes.', 10, 3, 1),
(7, '2022-10-29', '2022-11-01', '2022-11-25', 'Internado por doença grave transmitida.', 1, 4, 1);
select *  from internacoes;

insert into enfermeiros_internacoes(id, enfermeiro_id, internacao_id) values
(1, 3, 4),
(2, 5, 4),
(3, 4, 7),
(4, 6, 7),
(5, 2, 3),
(6, 1, 3),
(7, 6, 4),
(8, 6, 4);
select * from  enfermeiros_internacoes;

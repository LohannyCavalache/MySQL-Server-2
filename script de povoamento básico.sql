use clinica_db_lohanny;

insert into tipo_quarto (id, descricao, valor_diaria) values
(1, 'Apartamento', '215.00'),
(2, 'Quarto Duplo', '325.00'),
(3, 'Enfermaria', '198.00');
select * from tipo_quarto;

insert into convenios (id, nome, cnpj, tempo_carencia) values
(1, 'MedVida', '76.815.556/0001-06', '674'),
(2, 'UniMais', '28.556.045/0001-66', '596'),
(3, 'SaudeMais', '76.022.555/0001-04', '637'),
(4, 'VidaMais', '35.239.795/0001-70', '995');
select * from convenios;

insert into especialidades (id, nome) values
(1, 'Pediatria'),
(2, 'Clínica Geral'),
(3, 'Gastroenterologia'),
(4, 'Dermatologia'),
(5, 'Urologia'),
(6, 'Pneumologia'),
(7, 'Neurologia');
select * from especialidades;
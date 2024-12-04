use clinica_db_lohanny;

alter table medicos add em_atividade biT not null;

update medicos set em_atividade = 0 where id = 1;
update medicos set em_atividade = 1 where id = 2;
update medicos set em_atividade = 1 where id = 3;
update medicos set em_atividade = 1 where id = 4;
update medicos set em_atividade = 1 where id = 5;
update medicos set em_atividade = 1 where id = 6;
update medicos set em_atividade = 1 where id = 7;
update medicos set em_atividade = 1 where id = 8;
update medicos set em_atividade = 0 where id = 9;
update medicos set em_atividade = 1 where id = 10;
select * from medicos;

update internacoes set data_alta = '2019-07-16' where id = 1;
update internacoes set data_alta = '2021-05-11' where id = 2;
update internacoes set data_alta = '2022-02-11' where id = 3;
update internacoes set data_alta = '2017-02-12' where id = 4;
update internacoes set data_alta = '2018-09-08' where id = 5;
update internacoes set data_alta = '2022-06-14' where id = 6;
update internacoes set data_alta = '2022-11-01' where id = 7;
select * from internacoes;

update pacientes set convenio_id = null where id = 7;
delete from convenios where id = 4;

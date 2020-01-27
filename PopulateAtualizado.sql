-- Informacao 

insert into evento (nome, descricao, horario, local, hotel, idevento) values 
('Web Summit', 'evento sobre avanços tecnologicos', '10h-18h','centro de congresos de belem', 'hotel epic sana', 001);
insert into evento (nome, descricao, horario, local, hotel, idevento) values 
('Week Games', 'evento nacional de video jogos', '10h-20h','FIL', 'nao tem', 002);

insert into workshop (nomew, horario, idworkshop) values ('inteligencia artificial', '14h-15h', 100);
insert into workshop (nomew, horario, idworkshop) values ('ps6', '10h-11h', 101);

insert into datas (diasevento, diasworkshop, jantar, shuttle, iddatas, evento_idevento, workshop_idworkshop) 
values ('2020-11-07', '2020-11-07', 1, 1, 200, 001, 100);
insert into datas (diasevento, diasworkshop, jantar, shuttle, iddatas, evento_idevento, workshop_idworkshop) 
values ('2020-11-21', '2020-11-21', 0, 1, 201, 002, 101);

insert into cliente (idcliente, nomec, morada, email) values (300, 'Joao Ferreira', 'Cascais', 'joaoferreira04@gmail.com');
insert into cliente (idcliente, nomec, morada, email) values (301, 'Dtr.Ricardo Assis', 'Porto', 'assis.ricardo@hotmail.com');
insert into cliente (idcliente, nomec, morada, email) values (302, 'Mariana Rodrigues', 'Aveiro', 'mariana_rodrigues1996@live.com');
insert into cliente (idcliente, nomec, morada, email) values (303, 'Dtr.Fernando Goncalves', 'Cascais', 'fernandogoncalves@hotmail.com');
insert into cliente (idcliente, nomec, morada, email) values (304, 'Ana Fonseca', 'Coimbra', 'fon.ana.95@gmail.com');


insert into participante (username, password, idparticipante, cliente_idcliente) values 
('joao_ferreira4', 'admin', 400, 300); 
insert into participante (username, password, idparticipante, cliente_idcliente) values 
('m.rodrigues.96', 'admin', 401, 302);
insert into participante (username, password, idparticipante, cliente_idcliente) values 
('fonseca.ana.mendes', 'admin', 402, 304);
 

insert into palestrante (idpalestrante, cliente_idcliente, profissao) values (500, 301, 'professor inteligencia artificial');
insert into palestrante (idpalestrante, cliente_idcliente, profissao) values (501, 303, 'engenheiro informatico');

insert into inscricaoworkpart (participante_idparticipante, certificate, idinscricaoworkpart, workshop_idworkshop) 
values (400, 1, 1002, 100);
insert into inscricaoworkpart (participante_idparticipante, certificate, idinscricaoworkpart, workshop_idworkshop)
values (401, 0, 1001, 101);
insert into inscricaoworkpart (participante_idparticipante, certificate, idinscricaoworkpart, workshop_idworkshop)
values (402, 1, 1000, 100);

insert into inscricao_datasevento (datas_iddatas, participante_idparticipante, jantar, shuttle, certificate) 
values (200, 400, 1, 1, 1);
insert into inscricao_datasevento (datas_iddatas, participante_idparticipante, jantar, shuttle, certificate) 
values (201, 401, 0, 1, 1);
insert into inscricao_datasevento (datas_iddatas, participante_idparticipante, jantar, shuttle, certificate) 
values (200, 402, 1, 0, 1);

insert into inscricaoworkpales (palestrante_idpalestrante, workshop_idworkshop, 
certificate, idinscricaoworkpales) values (500, 101, 1, 800);


commit;

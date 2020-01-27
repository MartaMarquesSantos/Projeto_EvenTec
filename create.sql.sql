create database evento;

use evento;

create table evento(idevento int not null auto_increment, 
nome varchar(45) not null, 
descricao varchar(45) not null, 
horario varchar(45) not null, 
local varchar(45) not null, 
hotel varchar(45) not null, 
primary key (idevento)); 

create table datas(iddatas int not null auto_increment, 
diasevento varchar(45) not null, 
diasworkshop varchar(45) not null,
jantar boolean not null, 
shuttle boolean not null,
evento_idevento int not null,
workshop_idworkshop int not null,
primary key (iddatas));

create table cliente(idcliente int not null auto_increment,
nomec varchar(45) not null,
morada varchar(45) not null,
email varchar (45) not null,
primary key (idcliente));

create table workshop(idworkshop int not null auto_increment, 
nomew varchar(45) not null, 
horario varchar(45) not null,
primary key (idworkshop));

create table participante(idparticipante int not null auto_increment, 
username varchar(45) not null, 
password varchar(45) not null, 
cliente_idcliente int not null,
primary key (idparticipante));

create table palestrante(idpalestrante int not null auto_increment,
profissao varchar(45),
cliente_idcliente int not null,
primary key (idpalestrante));

create table inscricao_datasevento(idInscricao_DatasEvento int not null auto_increment,
jantar boolean not null,
shuttle boolean not null,
certificate boolean not null,
participante_idparticipante int not null,
datas_iddatas int not null,
primary key(idinscricao_datasevento));

create table inscricaoworkpart(idinscricaoworkpart int not null auto_increment,
certificate boolean not null,
workshop_idworkshop int not null,
participante_idparticipante int not null,
primary key(idinscricaoworkpart));

create table inscricaoworkpales(idinscricaoworkpales int not null auto_increment,
certificate boolean not null,
workshop_idworkshop int not null,
palestrante_idpalestrante int not null,
primary key(idinscricaoworkpales));



#foreign keys

alter table datas add constraint datas_fk_evento
            foreign key (evento_idevento) references evento(idevento) 
			ON DELETE NO ACTION ON UPDATE NO ACTION,
            add constraint datas_fk_workshop
            foreign key (workshop_idworkshop) references workshop(idworkshop)
            ON DELETE NO ACTION ON UPDATE NO ACTION;
            
alter table inscricaoworkpart add constraint inscricaoworkpart_fk_participante
			foreign key (participante_idparticipante) references participante(idparticipante) 
			ON DELETE NO ACTION ON UPDATE NO ACTION,
            add constraint inscricaoworkpart_fk_workshop
            foreign key (workshop_idworkshop) references workshop(idworkshop)
            ON DELETE NO ACTION ON UPDATE NO ACTION;
            
alter table inscricaoworkpales add constraint inscricaoworkpales_fk_palestrante
			foreign key (palestrante_idpalestrante) references palestrante(idpalestrante) 
			ON DELETE NO ACTION ON UPDATE NO ACTION,
            add constraint inscricaoworkpales_fk_workshop
            foreign key (workshop_idworkshop) references workshop(idworkshop)
            ON DELETE NO ACTION ON UPDATE NO ACTION;
	
alter table inscricao_datasevento add constraint inscricao_datasevento_fk_participante
			foreign key (participante_idparticipante) references participante(idparticipante)
			ON DELETE NO ACTION ON UPDATE NO ACTION,
            add constraint inscricao_datasevento_fk_datas
            foreign key (datas_iddatas) references datas(iddatas) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table participante add constraint participante_fk_cliente
			foreign key (cliente_idcliente) references cliente(idcliente)
			ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table palestrante add constraint palestrante_fk_cliente
			foreign key (cliente_idcliente) references cliente(idcliente)
			ON DELETE NO ACTION ON UPDATE NO ACTION;
            
create index idx_morada
on cliente (morada);

create index idx_diasevento
on datas (diasevento);

create index idx_diasworkshop
on datas (diasworkshop);

create index idx_jantar
on inscricao_datasevento (jantar);

create index idx_shuttle
on inscricao_datasevento (shuttle);           

create index idx_certificate
on inscricao_datasevento (certificate);  

create index idx_certificate
on inscricaoworkpales (certificate);  

create index idx_certificate
on inscricaoworkpart (certificate);  

create index idx_hotel
on evento (hotel);
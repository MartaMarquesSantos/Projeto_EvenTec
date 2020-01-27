select * from cliente;
#a querie mostra a informacao de todos os clientes

select nome from evento;
#a querie mostra o nome de todos os eventos

select nomec from cliente where nomec like 'Dtr.%';
#a querie mostra os cliente que tem dtr no nome;

select nomec, idcliente from cliente where morada = 'Cascais';
#a querie mostra o nome e id dos clientes que sao de cascais

select username from participante where password = 'admin' and cliente_idcliente<301;
#a querie mostra o(s) username(s) na qual têm "admin" como password e o cliente_idcliente é abaixo de 301

select count(distinct morada) from cliente;
#a querie mostra o numero total de moradas dos clientes, sem valores duplicados

select idparticipante from participante order by username asc;
#a querie mostra o id do participante, enquanto esta está ordenada de forma alfbética ascendente pelo username

select profissao from palestrante where cliente_idcliente between 302 and 304;
#a querie mostra qual a profissão do(s) palestrante(s) na(s) qual(ais) o(s) seu(s) cliente_idcliente(s) está(ão) entre 302 e 304

select morada, count(nomec) from cliente group by morada;
#a querie mostra o numero total de clientes por morada

select nome, local from evento where idevento = '002'; 
#a querie mostra o nome e local do evento com o id 002

select count(jantar) from inscricao_datasevento where jantar = 1;
#a querie mostra  quantas pessoas se inscreveram no jantar do evento

select diasevento from datas;
#a querie mostra os dias do evento

select email from cliente where email like '%gmail%';
#a querie mostra os email que tem gmail

select nome, diasevento from evento left join datas on evento.nome = datas.diasevento;
#a querie mostra o nome dos eventos da tabela eventos e mostra null os dias dos eventos pois nao existe nenhuma condicao igual nas duas tabelas

select idparticipante, participante_idparticipante, certificate from participante join inscricaoworkpart on participante.idparticipante = inscricaoworkpart.participante_idparticipante 
where certificate = 1;
#a querie mostra o id dos participantes que querem certificado

select distinct horario from workshop;
#a querie mostra o horario dos workshops

select diasevento, jantar, shuttle from datas where jantar = 0 or shuttle = 1;
#a querie mostra que dias existe jantar e shuttle ou jantar/shuttle

rename table evento to eventos;
#a queria altera o nome da tabela evento para eventos

select datas.diasevento, evento.nome from datas full join evento on datas.evento_idevento = evento.idevento;
#a querie mostra os eventos e as datas dos eventos

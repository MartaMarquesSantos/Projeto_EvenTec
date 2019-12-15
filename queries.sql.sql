select * from cliente;
#a querie mostra a informacao de todos os clientes

select nome from evento;
#a querie mostra o nome de todos os eventos

select nomec from cliente where nome like 'Dtr.%';
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

select morada, count(nome) from cliente group by morada;
#a querie mostra o numero total de clientes por morada

select nome, local from evento where idevento = '002'; 
#a querie mostra o nome e local do evento com o id 002

select count(jantar) from inscricao_datasevento where jantar = 1;
#a querie mostra  quantas pessoas se inscreveram no jantar do evento

select diasevento from datas;
#a querie mostra os dias do evento

select email from cliente where email like '%gmail%';
#a querie mostra os email que tem gmail


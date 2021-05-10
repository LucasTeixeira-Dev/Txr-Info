mysql -u root -p
show databases;

drop database if exists infoBD;
create database infoBD;
show databases;

use infoBD;
create table servico(
	id_servico int not null auto_increment,
	nome varchar(30) not null unique,
	descricao_s varchar(50)not null,
	valor float(15) not null,
	primary key(id_servico)
);

create table produto(
	id_produto int not null auto_increment,
	nome varchar(30) not null unique,
	descricao_p varchar(50) not null,
	valor float(15) not null,
	primary key(id_produto)
);

create table pedido(
	id_pedido int not null auto_increment,
	id_servico int not null,
	id_produto int not null,
	descricao_pedido varchar(150) not null,
	data varchar(30) not null,
	hora varchar(30) not null,
	status varchar(30) not null,
	valor float(15) not null,
	primary key(id_pedido),
	constraint fk_p_s foreing key (id_servico)
	references servico(id_servico),
	constraint fk_p_p foreing key (id_produto)
	references produto(id_produto)
);

insert into servico values
(1,"Formatação","Limpesa do sistema e reinstalação.","70,00$"),
(2,"FormataçãoPRO","Limpesa do sistema e reinstalação com Backup.","90,00$"),
(3,"Limpeza","Limpesa do Gabinete.","30,00$"),
(4,"Troca de Pasta-Térmica","Desmontagem do cooler do processador para troca da pasta térmica do mesmo.","50,00$"),
(5,"Backup","backup de 10GB.","25,00$");

insert into produto values
(1,"Placa-Mãe","Placa-Mãe Gigabyte 921271M","700,00$"),
(2,"MemóriaRAM","Memória Kingstone 4gb","199.80$"),
(3,"HD","Barracuda 1TB","278,90$"),
(4,"SSD","Barracuda 240GB","350,00$"),
(5,"Placa de Vídeo","GTX 1060Ti","1080,00$");

insert into pedido values
(1,2,4,"04/05/2021","08:23","Em Andamento","440,00$"),
(2,4,0,"04/05/2021","10:55","Em Andamento","50,00$"),
(3,5,0,"04/05/2021","13:30","Entregue","25,00$"),
(4,2,0,"04/05/2021","13:35","Aguardando","90,00$"),
(5,2,0,"04/05/2021","15:47","Aguardando","90,00$");

select * from servico;
select * from produto;
select * from pedido;
show tables;
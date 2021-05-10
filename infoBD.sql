mysql -u root -p
show databases;

drop database if exists infoBD;
create database infoBD;
show databases;

use infoBD;
create table produto(
	id_produto INT NOT NULL auto_increment,
	nome VARCHAR(30) NOT NULL UNIQUE,
	descricao_p VARCHAR(50) NOT NULL,
	valor FLOAT(15) NOT NULL,
	primary key(id_produto)
);

create table servico(
	id_servico INT NOT NULL auto_increment,
	nome VARCHAR(30) NOT NULL,
	descricao_s VARCHAR(50)NOT NULL,
	valor FLOAT(15) NOT NULL,
	primary key(id_servico)
);

create table pedido(
	id_pedido int not null auto_increment,
	id_produto int not null,
	id_servico int not null,
	descricao_pedido varchar(150) not null,
	data varchar(30) not null,
	hora varchar(30) not null,
	status varchar(30) not null,
	valor float(15) not null,
	primary key(id_pedido),
	constraint fk_i_pr foreign key(id_produto)
    references produto(id_produto),
	constraint fk_i_s foreign key (id_servico)
	references servico(id_servico)
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
(1,1,1,"revisão","04/05/2021","08:23","Em Andamento","440,00$"),
(2,2,2,"revisão","04/05/2021","10:55","Em Andamento","50,00$"),
(3,3,3,"revisão","04/05/2021","13:30","Entregue","25,00$"),
(4,4,4,"revisão","04/05/2021","13:35","Aguardando","90,00$"),
(5,5,5,"revisão","04/05/2021","15:47","Aguardando","90,00$");

select * from produto;
select * from servico;
select * from pedido;
show tables;
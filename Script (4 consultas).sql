REM   Script: Script com os 4 comandos
REM   Script dos 4 comandos escolhidos 

create table Construtora  
(  
    codigo_construtora number(5)   not null,  
    nome               varchar(60) not null, 
    nome_fantasia      varchar(60) null, 
    email              varchar(60) not null, 
 
    constraint pk_Construtora primary key (codigo_construtora) 
      
);

create table Obras  
(  
    codigo_obras       numeric(5)   not null, 
    nome               varchar(60)  not null,  
    end_numero         numeric(4)   not null, 
    end_complemento    varchar(60)  not null, 
    end_logradouro     varchar(60)  not null, 
    codigo_construtora numeric(5)   not null, 
 
    constraint pk_Obras primary key (codigo_obras) 
);

create table Trabalhadores  
(  
    cpf          numeric(11)  not null,  
    nome         varchar(60)  not null, 
    salario      numeric(4)   not null, 
    codigo_obras numeric(5)   not null, 
 
    constraint pk_Trabalhadores primary key (cpf) 
);

create table Categorias  
(  
    codigo_categoria  numeric(5)  not null,  
    descricao         varchar(60) not null, 
 
    constraint pk_Categorias  primary key (codigo_categoria) 
);

create table Equipamentos  
(  
    codigo_equipamentos numeric(5)  not null, 
    nome                varchar(60) not null, 
    valor_uso_diario    numeric(5)  not null, 
    codigo_categoria    numeric(5)  not null, 
 
    constraint pk_Equipamentos primary key (codigo_equipamentos) 
);

create table Equip_Obra   
(   
    valor_inicio_uso    date        not null,   
    valor_termino_uso   date        not null,   
    codigo_obras        numeric(5)  not null,   
    codigo_equipamentos numeric(5)  not null   
          
);

create table Construtora_Telefone  
(  
  codigo_construtora numeric(5) not null,  
  telefone           numeric(11) not null,  
  
  constraint pk_Construtora_Telefone primary key (codigo_construtora,telefone)  
  
);

alter table Obras  
add 
( 
    constraint fk_obras_construtoras 
    foreign key (codigo_construtora) 
    references  Construtora (codigo_construtora) 
);

alter table  Trabalhadores  
add 
( 
    constraint fk_trabalhadores_obras 
    foreign key (codigo_obras) 
    references  Obras (codigo_obras) 
);

alter table Equipamentos 
add 
( 
    constraint fk_equipamentos_categoria 
    foreign key (codigo_categoria) 
    references  Categorias (codigo_categoria) 
);

alter table Construtora_Telefone  
add 
( 
    constraint fk_construtora_telefone 
    foreign key (codigo_construtora) 
    references  Construtora (codigo_construtora) 
);

alter table  Equip_Obra 
add 
( 
    constraint fk_equipamento_obra 
    foreign key (codigo_obras) 
    references Obras (codigo_obras) 
     
);

alter table  Equip_Obra 
add 
( 
    constraint fk_equipamento 
    foreign key (codigo_equipamentos) 
    references Equipamentos (codigo_equipamentos) 
     
);

select * from Construtora;

insert into Construtora (codigo_construtora,nome,nome_fantasia,email) values (13550,'Gabriela','Alfa Incorporações','gabrielaconstrutora309@gmail.com');

select * from Construtora 
;

insert into Obras (codigo_obras,nome,end_numero,end_complemento,end_logradouro,codigo_construtora) values (12550,'Condomínio dos Lagos',1224,'Norte','Travessa dos Lagos',13550);

insert into Obras (codigo_obras,nome,end_numero,end_complemento,end_logradouro,codigo_construtora) values (12551,'Condomínio Araras',5623,'Lado A','Avenida Rio Grande',13550);

select * from Obras;

insert into Trabalhadores (cpf,nome,salario,codigo_obras) values (10110110134,'José Chaves', 2200.00,12550);

insert into Trabalhadores (cpf,nome,salario,codigo_obras) values (10210210291,'Pedro Passos', 3502.18, 12550);

insert into Trabalhadores (cpf,nome,salario,codigo_obras) values  (10310310318, 'Maria Aparecida', 2800.87, 12550);

insert into Trabalhadores (cpf,nome,salario,codigo_obras) values (10510510585,'Carlos Emanuel',3250.00,12550);

insert into Trabalhadores (cpf,nome,salario,codigo_obras) values (10610610642,'Tomas Oliveira',2135.62,12550);

insert into Trabalhadores (cpf,nome,salario,codigo_obras) values (10710710790,'Maria Eduarda',3000.00,12551);

insert into Trabalhadores (cpf,nome,salario,codigo_obras) values (10810810820,'João Rodrigues',2350.00,12551);

insert into Trabalhadores (cpf,nome,salario,codigo_obras) values (10910910962,'Carla Azevedo',3550.40,12551);

insert into Trabalhadores (cpf,nome,salario,codigo_obras) values (11011011084,'Marcos Silva',2050.00,12551);

insert into Trabalhadores (cpf,nome,salario,codigo_obras) values (11111111177,'Guilherme Dias',3110.00,12551);

select * from Trabalhadores;

insert into Categorias (codigo_categoria,descricao) values (10220,'Concretagem');

insert into Categorias (codigo_categoria,descricao) values (10221,'Acesso e Elevação');

insert into Categorias (codigo_categoria,descricao) values (10222,'Geradores e Compressores');

insert into Categorias (codigo_categoria,descricao) values (10223,'Andaimes');

insert into Categorias (codigo_categoria,descricao) values (10224,'Ferramenta Elétrica');

select * from Categorias;

insert into Equipamentos (codigo_equipamentos,nome,valor_uso_diario,codigo_categoria) values (30151, 'Betoneira',100.00 ,10220);

insert into Equipamentos (codigo_equipamentos,nome,valor_uso_diario,codigo_categoria)values (30152,'Cortadora de Piso',10.00,10220);

insert into Equipamentos (codigo_equipamentos,nome,valor_uso_diario,codigo_categoria) values (30153,'Mangote', 30.50,10220);

insert into Equipamentos (codigo_equipamentos,nome,valor_uso_diario,codigo_categoria) values (30154,'Guincho', 250.00 ,10221);

insert into Equipamentos (codigo_equipamentos,nome,valor_uso_diario,codigo_categoria) values (30155,'Gerador', 451.00,10222 );

insert into Equipamentos (codigo_equipamentos,nome,valor_uso_diario,codigo_categoria)values (30156,'Piso Metálico', 150.00,10223 );

insert into Equipamentos (codigo_equipamentos,nome,valor_uso_diario,codigo_categoria) values (30157,'Furadeira de bancada', 65.00,10224 );

insert into Equipamentos (codigo_equipamentos,nome,valor_uso_diario,codigo_categoria)values (30158, 'Parafusadeira', 37.00,10224 );

insert into Equipamentos (codigo_equipamentos,nome,valor_uso_diario,codigo_categoria) values (30159,'Plaina' ,25.00,10224 );

select * from Equipamentos;

insert into Equip_Obra (valor_inicio_uso,valor_termino_uso,codigo_obras,codigo_equipamentos) values ('18/mar/2022','24/oct/2022', 12550,30153);

insert into Equip_Obra (valor_inicio_uso,valor_termino_uso,codigo_obras,codigo_equipamentos) values ('20/apr/2022', '02/aug/2022', 12550,30154);

insert into Equip_Obra (valor_inicio_uso,valor_termino_uso,codigo_obras,codigo_equipamentos) values ('06/jul/2021', '18/jul/2021', 12550,30155);

insert into Equip_Obra (valor_inicio_uso,valor_termino_uso,codigo_obras,codigo_equipamentos) values ('04/mar/2022', '20/mar/2022',12550,30156);

insert into Equip_Obra (valor_inicio_uso,valor_termino_uso,codigo_obras,codigo_equipamentos) values ('04/aug/2021', '10/aug/2021', 12551,30152);

insert into Equip_Obra (valor_inicio_uso,valor_termino_uso,codigo_obras,codigo_equipamentos) values ('22/oct/2022', '25/oct/2022',12551,30151);

insert into Equip_Obra (valor_inicio_uso,valor_termino_uso,codigo_obras,codigo_equipamentos) values ('07/mar/2022', '10/mar/2022',12551,30157);

insert into Equip_Obra (valor_inicio_uso,valor_termino_uso,codigo_obras,codigo_equipamentos) values ('12/sep/2022', '21/sep/2022',12551,30158);

insert into Equip_Obra (valor_inicio_uso,valor_termino_uso,codigo_obras,codigo_equipamentos) values ('16/aug/2022', '24/aug/2022', 12551,30159);

insert into Equip_Obra (valor_inicio_uso,valor_termino_uso,codigo_obras,codigo_equipamentos) values ('23/oct/2022', '25/oct/2022',12551,30151);

select * from Equip_Obra;

select * from Construtora_Telefone;

select * from Construtora_Telefone;

select * from Construtora_Telefone;

insert into Construtora_Telefone (codigo_construtora,telefone) values (13550,5133333334);

insert into Construtora_Telefone (codigo_construtora,telefone) values (13550,5133333335);

insert into Construtora_Telefone (codigo_construtora,telefone) values (13550,5133333336);

select * from Construtora_Telefone 
;

select cpf,nome from Trabalhadores 
where salario > 2500.00;

select sum(salario) from Trabalhadores 
where codigo_obras = 12550;

select sum(salario) from Trabalhadores 
where codigo_obras = 12551;

select  nome,salario from Trabalhadores  
order by nome,salario asc 
;

select Equipamentos.codigo_categoria, Equip_Obra.codigo_obras 
from Equipamentos 
inner join Equip_Obra 
on Equipamentos.codigo_equipamentos = Equip_Obra.codigo_equipamentos;


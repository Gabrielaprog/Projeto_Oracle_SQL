REM   Script: Criação das tabelas - Projeto Fase 2 - Banco de dados
REM   Script criação das tabelas

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


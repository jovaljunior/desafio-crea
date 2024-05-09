create sequence profissional_seq start with 1 increment by 1;
create sequence titulo_seq start with 1 increment by 1;
create table Profissional (dataRegistro date, dataVisto date, nascimento date not null, id bigint not null, codigoCREA varchar(255) unique, cpf varchar(255) not null unique, email varchar(255) not null unique, nome varchar(255) not null, senha varchar(255) not null, situacao varchar(255) check (situacao in ('ATIVO','INATIVO','CANCELADO')), telefone varchar(255) not null, tipoCadastro varchar(255) not null check (tipoCadastro in ('VISTO','REGISTRO')), primary key (id));
create table profissional_titulo (profissional_id bigint not null, titulo_id bigint not null);
create table Titulo (id bigint not null, descricao varchar(255) not null, primary key (id));
alter table if exists profissional_titulo add constraint FKgqi967rlfug1b3sejdhmivmpt foreign key (titulo_id) references Titulo;
alter table if exists profissional_titulo add constraint FKlttwqsdrrefevfk5rk078dgi5 foreign key (profissional_id) references Profissional;

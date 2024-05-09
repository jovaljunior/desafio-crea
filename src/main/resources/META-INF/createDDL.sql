create sequence profissional_seq start with 1 increment by 1;
create sequence titulo_seq start with 1 increment by 1;
create table Profissional (dataRegistro date, dataVisto date, nascimento date not null, id bigint not null, codigoCREA varchar(255) unique, cpf varchar(255) not null unique, email varchar(255) not null unique, nome varchar(255) not null, senha varchar(255) not null, situacao varchar(255) check (situacao in ('ATIVO','INATIVO','CANCELADO')), telefone varchar(255) not null, tipoCadastro varchar(255) not null check (tipoCadastro in ('VISTO','REGISTRO')), primary key (id));
create table profissional_titulo (profissional_id bigint not null, titulo_id bigint not null);
create table Titulo (id bigint not null, descricao varchar(255) not null, primary key (id));
alter table if exists profissional_titulo add constraint FKgqi967rlfug1b3sejdhmivmpt foreign key (titulo_id) references Titulo;
alter table if exists profissional_titulo add constraint FKlttwqsdrrefevfk5rk078dgi5 foreign key (profissional_id) references Profissional;
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Civil');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Eletricista');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Mecânico');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Florestal');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Agrônomo');
insert into profissional (id, nome, email, cpf, nascimento, telefone, senha, situacao, tipocadastro) values (nextval('profissional_seq'), 'Joval Júnior', 'jovaljunior@gmail.com', '75013586054', '1981-09-21', '86994512483', 'senha', 'INATIVO', 'REGISTRO');
insert into profissional (id, nome, email, cpf, nascimento, telefone, senha, situacao, tipocadastro) values (nextval('profissional_seq'), 'Elis Santos', 'liss.pi@gmail.com', '91968589074', '1979-08-13', '86994198493', 'senha', 'INATIVO', 'REGISTRO');
insert into profissional (id, nome, email, cpf, nascimento, telefone, senha, situacao, tipocadastro) values (nextval('profissional_seq'), 'Lia Rosa', 'liarosacosta@icloud.com', '91159626014', '2012-10-15', '86994074709', 'senha', 'INATIVO', 'VISTO');
insert into profissional_titulo (profissional_id, titulo_id) values (1, 1);
insert into profissional_titulo (profissional_id, titulo_id) values (1, 5);
insert into profissional_titulo (profissional_id, titulo_id) values (2, 2);
insert into profissional_titulo (profissional_id, titulo_id) values (3, 3);
insert into profissional_titulo (profissional_id, titulo_id) values (3, 4);
create sequence profissional_seq start with 1 increment by 1;
create sequence titulo_seq start with 1 increment by 1;
create table Profissional (dataRegistro date, dataVisto date, nascimento date not null, id bigint not null, codigoCREA varchar(255) unique, cpf varchar(255) not null unique, email varchar(255) not null unique, nome varchar(255) not null, senha varchar(255) not null, situacao varchar(255) check (situacao in ('ATIVO','INATIVO','CANCELADO')), telefone varchar(255) not null, tipoCadastro varchar(255) not null check (tipoCadastro in ('VISTO','REGISTRO')), primary key (id));
create table profissional_titulo (profissional_id bigint not null, titulo_id bigint not null);
create table Titulo (id bigint not null, descricao varchar(255) not null, primary key (id));
alter table if exists profissional_titulo add constraint FKgqi967rlfug1b3sejdhmivmpt foreign key (titulo_id) references Titulo;
alter table if exists profissional_titulo add constraint FKlttwqsdrrefevfk5rk078dgi5 foreign key (profissional_id) references Profissional;
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Civil');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Eletricista');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Mecânico');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Florestal');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Agrônomo');
create sequence profissional_seq start with 1 increment by 1;
create sequence titulo_seq start with 1 increment by 1;
create table Profissional (dataRegistro date, dataVisto date, nascimento date not null, id bigint not null, codigoCREA varchar(255) unique, cpf varchar(255) not null unique, email varchar(255) not null unique, nome varchar(255) not null, senha varchar(255) not null, situacao varchar(255) check (situacao in ('ATIVO','INATIVO','CANCELADO')), telefone varchar(255) not null, tipoCadastro varchar(255) not null check (tipoCadastro in ('VISTO','REGISTRO')), primary key (id));
create table profissional_titulo (profissional_id bigint not null, titulo_id bigint not null);
create table Titulo (id bigint not null, descricao varchar(255) not null, primary key (id));
alter table if exists profissional_titulo add constraint FKgqi967rlfug1b3sejdhmivmpt foreign key (titulo_id) references Titulo;
alter table if exists profissional_titulo add constraint FKlttwqsdrrefevfk5rk078dgi5 foreign key (profissional_id) references Profissional;
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Civil');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Eletricista');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Mecânico');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Florestal');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Agrônomo');
create sequence profissional_seq start with 1 increment by 1;
create sequence titulo_seq start with 1 increment by 1;
create table Profissional (dataRegistro date, dataVisto date, nascimento date not null, id bigint not null, codigoCREA varchar(255) unique, cpf varchar(255) not null unique, email varchar(255) not null unique, nome varchar(255) not null, senha varchar(255) not null, situacao varchar(255) check (situacao in ('ATIVO','INATIVO','CANCELADO')), telefone varchar(255) not null, tipoCadastro varchar(255) not null check (tipoCadastro in ('VISTO','REGISTRO')), primary key (id));
create table profissional_titulo (profissional_id bigint not null, titulo_id bigint not null);
create table Titulo (id bigint not null, descricao varchar(255) not null, primary key (id));
alter table if exists profissional_titulo add constraint FKgqi967rlfug1b3sejdhmivmpt foreign key (titulo_id) references Titulo;
alter table if exists profissional_titulo add constraint FKlttwqsdrrefevfk5rk078dgi5 foreign key (profissional_id) references Profissional;
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Civil');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Eletricista');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Mecânico');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Florestal');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Agrônomo');
create sequence profissional_seq start with 1 increment by 1;
create sequence titulo_seq start with 1 increment by 1;
create table Profissional (dataRegistro date, dataVisto date, nascimento date not null, id bigint not null, codigoCREA varchar(255) unique, cpf varchar(255) not null unique, email varchar(255) not null unique, nome varchar(255) not null, senha varchar(255) not null, situacao varchar(255) check (situacao in ('ATIVO','INATIVO','CANCELADO')), telefone varchar(255) not null, tipoCadastro varchar(255) not null check (tipoCadastro in ('VISTO','REGISTRO')), primary key (id));
create table profissional_titulo (profissional_id bigint not null, titulo_id bigint not null);
create table Titulo (id bigint not null, descricao varchar(255) not null, primary key (id));
alter table if exists profissional_titulo add constraint FKgqi967rlfug1b3sejdhmivmpt foreign key (titulo_id) references Titulo;
alter table if exists profissional_titulo add constraint FKlttwqsdrrefevfk5rk078dgi5 foreign key (profissional_id) references Profissional;
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Civil');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Eletricista');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Mecânico');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Florestal');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Agrônomo');
create sequence profissional_seq start with 1 increment by 1;
create sequence titulo_seq start with 1 increment by 1;
create table Profissional (dataRegistro date, dataVisto date, nascimento date not null, id bigint not null, codigoCREA varchar(255) unique, cpf varchar(255) not null unique, email varchar(255) not null unique, nome varchar(255) not null, senha varchar(255) not null, situacao varchar(255) check (situacao in ('ATIVO','INATIVO','CANCELADO')), telefone varchar(255) not null, tipoCadastro varchar(255) not null check (tipoCadastro in ('VISTO','REGISTRO')), primary key (id));
create table profissional_titulo (profissional_id bigint not null, titulo_id bigint not null);
create table Titulo (id bigint not null, descricao varchar(255) not null, primary key (id));
alter table if exists profissional_titulo add constraint FKgqi967rlfug1b3sejdhmivmpt foreign key (titulo_id) references Titulo;
alter table if exists profissional_titulo add constraint FKlttwqsdrrefevfk5rk078dgi5 foreign key (profissional_id) references Profissional;
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Civil');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Eletricista');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Mecânico');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Florestal');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Agrônomo');
create sequence profissional_seq start with 1 increment by 1;
create sequence titulo_seq start with 1 increment by 1;
create table Profissional (dataRegistro date, dataVisto date, nascimento date not null, id bigint not null, codigoCREA varchar(255) unique, cpf varchar(255) not null unique, email varchar(255) not null unique, nome varchar(255) not null, senha varchar(255) not null, situacao varchar(255) check (situacao in ('ATIVO','INATIVO','CANCELADO')), telefone varchar(255) not null, tipoCadastro varchar(255) not null check (tipoCadastro in ('VISTO','REGISTRO')), primary key (id));
create table profissional_titulo (profissional_id bigint not null, titulo_id bigint not null);
create table Titulo (id bigint not null, descricao varchar(255) not null, primary key (id));
alter table if exists profissional_titulo add constraint FKgqi967rlfug1b3sejdhmivmpt foreign key (titulo_id) references Titulo;
alter table if exists profissional_titulo add constraint FKlttwqsdrrefevfk5rk078dgi5 foreign key (profissional_id) references Profissional;
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Civil');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Eletricista');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Mecânico');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Florestal');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Agrônomo');
create sequence profissional_seq start with 1 increment by 1;
create sequence titulo_seq start with 1 increment by 1;
create table Profissional (dataRegistro date, dataVisto date, nascimento date not null, id bigint not null, codigoCREA varchar(255) unique, cpf varchar(255) not null unique, email varchar(255) not null unique, nome varchar(255) not null, senha varchar(255) not null, situacao varchar(255) check (situacao in ('ATIVO','INATIVO','CANCELADO')), telefone varchar(255) not null, tipoCadastro varchar(255) not null check (tipoCadastro in ('VISTO','REGISTRO')), primary key (id));
create table profissional_titulo (profissional_id bigint not null, titulo_id bigint not null);
create table Titulo (id bigint not null, descricao varchar(255) not null, primary key (id));
alter table if exists profissional_titulo add constraint FKgqi967rlfug1b3sejdhmivmpt foreign key (titulo_id) references Titulo;
alter table if exists profissional_titulo add constraint FKlttwqsdrrefevfk5rk078dgi5 foreign key (profissional_id) references Profissional;
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Civil');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Eletricista');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Mecânico');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Florestal');
insert into titulo (id, descricao) values (nextval('titulo_seq'), 'Engenheiro Agrônomo');

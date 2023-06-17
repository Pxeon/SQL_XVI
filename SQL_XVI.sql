create table usuarios (
  id bigint primary key,
  nome varchar(60) not null,
  funcao varchar(60) not null
);


create table emprestimos (
  id bigint auto_increment primary key,
  id_usuario int,
  id_funcionario int,
  data_hora_emprestimo datetime,
  data_prevista_devolucao date,
  data_hora_devolucao datetime,
  status varchar(60),
  foreign key (id_funcionario) references usuarios(id),
   foreign key (id_usuario) references usuario(id)
);

create table livros (
  livro_id bigint not null PRIMARY KEY,
  titulo varchar(60) not null,
  autor_id int not null,
  foreign key (autor_id) references Autores(autor_id)
);


create table livro_emprestimo (
  emprestimo_id bigint not null,
  livro_id int not null,
  foreign key (emprestimo_id) REFERENCES Emprestimo(id),
  foreign key (livro_id) REFERENCES Livro(id),
  primary key (emprestimo_id, livro_id)
);

CREATE TABLE editoras (
  id bigint auto_increment not null primary key,
  nome varchar(60) not null,
  endereco varchar(60) not null,
  telefone varchar(60) not null,
  email varchar(60)not null
);

CREATE TABLE autores (
  autor_id bigint auto_increment not null primary key,
  nome varchar(60) not null
);

insert into  emprestimos (id, id_usuario, id_funcionario, data_emprestimo, data_devolucao, status)
values (1, 1, 3, '2023-06-16', '2023-06-23', 'emprestimo ativo');

insert into Editoras (nome, endereco, telefone, email)
values ('nome da editora', 'endereço da editora', 'telefone da editora', 'email da editora');

select * from editoras;

alter table editoras
add column nome_editora varchar(60),
add column uf_editora char(2);

update editoras
set nome_editora = 'nome da editora',
    uf_editora = 'SP'
where id = 1;

insert into Autores (nome) values ('autor 1');
insert into Autores (nome) values ('autor 2');

insert into Livros (titulo, autor_id) values ('livro 1', 1);
insert into Livros (titulo, autor_id) values ('livro 2', 2);















create table funcionario (
id_funcionario int auto_increment primary key,
nome varchar(100) not null,
sobrenome varchar(100) not null,
email varchar(100),
endereco varchar(100),
cargo varchar(100)
);

create table turma (
id_turma int auto_increment primary key,
serie int, 
turno varchar(40)
);

create table aluno (
id_aluno int auto_increment primary key,
nome varchar(100) not null,
sobrenome varchar(100) not null,
email varchar(100),
endereco varchar(100),
data_nascimento date,
id_turma int,
 FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

create table disciplina (
id_disciplina int auto_increment primary key,
nome_disciplina varchar(100),
area_conhecimento varchar(100)
);

CREATE TABLE professor ( 
id_professor INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 sobrenome VARCHAR(100) NOT NULL,
 nome_disciplina VARCHAR(100),
 id_funcionario INT,
 area_conhecimento VARCHAR(100),
 FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
 );
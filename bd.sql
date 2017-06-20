
CREATE TABLE TIPO_CONTATO (
cod_tipocontat INTEGER PRIMARY KEY,
descricao_tipocont VARCHAR(50)
);
insert TIPO_CONTATO (cod_tipocontat,descricao_tipocont)
values (1231,'E-mail');

CREATE TABLE CONTATO (
cod_tipocontat INTEGER,
cod_contato INTEGER PRIMARY KEY,
descricao_contato VARCHAR(50),
FOREIGN KEY(cod_tipocontat) REFERENCES TIPO_CONTATO (cod_tipocontat)
);
insert CONTATO (cod_contato,descricao_contato)
values (15235,'joao@hotmail.com');

CREATE TABLE TIPO_ENDERECO (
descricao_endereco CHAR(50),
cod_tipoend INTEGER PRIMARY KEY
);
insert TIPO_ENDERECO (descricao_endereco,cod_tipoend)
values ('ESTADO',54646);


CREATE TABLE ESTADO (
cod_estado INTEGER PRIMARY KEY,
descricao_estado CHAR(3)
);
insert ESTADO (cod_estado,descricao_estado)
values (54646,'ES');

CREATE TABLE CIDADE (
cod_cidade INTEGER PRIMARY KEY,
descricao_cidade VARCHAR(50)
);
insert CIDADE (cod_cidade, descricao_cidade)
values (45646,'Vitória');

CREATE TABLE BAIRRO (
cod_bairro INTEGER PRIMARY KEY,
descricao_bairro VARCHAR(50)
);
insert BAIRRO (cod_bairro,descricao_bairro)
values (6535, 'Laranjeiras');

CREATE TABLE PESSOA_Familiar_individuo_profissional (
nome_completo VARCHAR(50),
data_nasc VARCHAR(10),
Sexo VARCHAR(10),
codigo_pessoa VARCHAR(10) PRIMARY KEY,
grau_de_parentesco VARCHAR(10),
CPF_familar VARCHAR(10),
CPF_individuo VARCHAR(10),
cargo VARCHAR(10)
);
insert PESSOA_Familiar_individuo_profissional (nome_completo,data_nasc,Sexo,codigo_pessoa,grau_de_parentesco,senha,CPF_Familiar,CPF_individuo,cargo,senha)
values ('João Claudio Lisboa',1986-12-20,'M',1234,Pai,19nsjd9,1230456,41526, Médico,13464);

CREATE TABLE seguranca 
senha VARCHAR(10)
);
insert seguranca (senha)
values ('js729327');

CREATE TABLE REMEDIO 
cod_remedio INTEGER PRIMARY KEY,
descricao_remedio VARCHAR(50),
horario_remedio VARCHAR(10)
);
insert REMEDIO (cod_remedio,descricao_remedio,horario_remedio)
values (65464,'Omeprazol', '10:00:00');


CREATE TABLE DOENCA 
cod_doenca INTEGER PRIMARY KEY,
descricao_doenca CHAR(50)
);
insert DOENCA (cod_doenca,descricao_doenca)
values (74558,'Alzheimer');
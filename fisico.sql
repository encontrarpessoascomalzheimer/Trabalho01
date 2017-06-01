-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE CIDADE (
cod_cidade INTEGER PRIMARY KEY,
descricao_cidade CHAR(10)
)

CREATE TABLE TIPO_CONTATO (
cod_tipocontat INTEGER PRIMARY KEY,
descricao_tipocont VARCHAR(10)
)

CREATE TABLE CONTATO (
cod_contato INTEGER PRIMARY KEY,
descricao_contato VARCHAR(10),
cod_tipocontat INTEGER,
FOREIGN KEY(cod_tipocontat) REFERENCES TIPO_CONTATO (cod_tipocontat)
)

CREATE TABLE PERTENCE (
codigo_pessoa INTEGER,
cod_contato INTEGER,
FOREIGN KEY(cod_contato) REFERENCES CONTATO (cod_contato)
)

CREATE TABLE POSSUI3 (
rua VARCHAR(10),
CEP INTEGER,
numero INTEGER,
cod_endereco INTEGER,
codigo_pessoa INTEGER,
cod_tipoend INTEGER,
cod_bairro INTEGER,
PRIMARY KEY(cod_endereco,codigo_pessoa,cod_tipoend,cod_bairro)
)

CREATE TABLE TIPO_ENDERECO (
descricao_endereco VARCHAR(10),
cod_tipoend INTEGER PRIMARY KEY
)

CREATE TABLE ESTADO/CIDADE (
cod_estado INTEGER,
cod_cidade INTEGER,
FOREIGN KEY(cod_cidade) REFERENCES CIDADE (cod_cidade)
)

CREATE TABLE BAIRRO (
cod_bairro INTEGER PRIMARY KEY,
descricao_bairro CHAR(10)
)

CREATE TABLE REMEDIO (
cod_remedio INTEGER PRIMARY KEY,
descricao_remedio VARCHAR(10),
horario_remedio VARCHAR(10)
)

CREATE TABLE INGERE (
cod_remedio INTEGER,
codigo_pessoa INTEGER,
FOREIGN KEY(cod_remedio) REFERENCES REMEDIO (cod_remedio)
)

CREATE TABLE BAIRRO/CIDADE (
cod_bairro INTEGER,
cod_cidade INTEGER,
FOREIGN KEY(cod_bairro) REFERENCES BAIRRO (cod_bairro),
FOREIGN KEY(cod_cidade) REFERENCES CIDADE (cod_cidade)
)

CREATE TABLE PESSOA_Familiar_individuo_profissional+seguranca (
nome_completo VARCHAR(50),
data_nasc INTEGER,
Sexo VARCHAR(10),
codigo_pessoa INTEGER PRIMARY KEY,
CPF_familar INTEGER,
CPF_individuo INTEGER,
cargo VARCHAR(10),
senha VARCHAR(10),
grau_de_parentesco VARCHAR(10)
)

CREATE TABLE DOENCA (
cod_doenca INTEGER PRIMARY KEY,
descricao_doenca VARCHAR(10)
)

CREATE TABLE POSSUI5 (
cod_doenca INTEGER,
codigo_pessoa INTEGER,
FOREIGN KEY(cod_doenca) REFERENCES DOENCA (cod_doenca),
FOREIGN KEY(codigo_pessoa) REFERENCES PESSOA_Familiar_individuo_profissional+seguranca (codigo_pessoa)
)

CREATE TABLE ESTADO (
cod_estado INTEGER PRIMARY KEY,
descricao_estado CHAR(02)
)

ALTER TABLE PERTENCE ADD FOREIGN KEY(codigo_pessoa) REFERENCES PESSOA_Familiar_individuo_profissional+seguranca (codigo_pessoa)
ALTER TABLE ESTADO/CIDADE ADD FOREIGN KEY(cod_estado) REFERENCES ESTADO (cod_estado)
ALTER TABLE INGERE ADD FOREIGN KEY(codigo_pessoa) REFERENCES PESSOA_Familiar_individuo_profissional+seguranca (codigo_pessoa)

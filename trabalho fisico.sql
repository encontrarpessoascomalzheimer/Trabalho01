-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE PESSOA (
nome_completo VARCHAR(10),
Sexo VARCHAR(10),
data_nasc CHAR(08),
CPF CHAR(11),
codigo_pessoa INTEGER PRIMARY KEY
)

CREATE TABLE Familiar (
grau_de_parentesco VARCHAR(10),
codigo_pessoa INTEGER,
FOREIGN KEY(codigo_pessoa) REFERENCES PESSOA (codigo_pessoa)
)

CREATE TABLE profissional (
cargo VARCHAR(10),
codigo_pessoa INTEGER,
FOREIGN KEY(codigo_pessoa) REFERENCES PESSOA (codigo_pessoa)
)

CREATE TABLE seguranca (
senha VARCHAR(10),
codigo_pessoa INTEGER PRIMARY KEY
)

CREATE TABLE TIPO_ENDERECO (
descricao_endereco VARCHAR(10),
cod_tipoend INTEGER PRIMARY KEY
)

CREATE TABLE BAIRRO/CIDADE (
cod_bairro INTEGER,
cod_cidade INTEGER
)

CREATE TABLE ESTADO (
cod_estado INTEGER PRIMARY KEY,
descricao_estado CHAR(02)
)

CREATE TABLE ESTADO/CIDADE (
cod_cidade INTEGER,
cod_estado INTEGER,
FOREIGN KEY(cod_estado) REFERENCES ESTADO (cod_estado)
)

CREATE TABLE PERTENCE (
codigo_pessoa INTEGER,
cod_contato INTEGER,
FOREIGN KEY(codigo_pessoa) REFERENCES PESSOA (codigo_pessoa)
)

CREATE TABLE REMEDIO (
cod_remedio INTEGER PRIMARY KEY,
descricao_remedio VARCHAR(10),
horario_remedio VARCHAR(10)
)

CREATE TABLE TIPO_CONTATO (
cod_tipocontat INTEGER PRIMARY KEY,
descricao_tipocont VARCHAR(10)
)

CREATE TABLE DOENCA (
cod_doenca INTEGER PRIMARY KEY,
descricao_doenca VARCHAR(10)
)

CREATE TABLE individuo (
QR code VARCHAR(10),
codigo_pessoa INTEGER,
FOREIGN KEY(codigo_pessoa) REFERENCES PESSOA (codigo_pessoa)
)

CREATE TABLE POSSUI5 (
cod_doenca INTEGER,
FOREIGN KEY(cod_doenca) REFERENCES DOENCA (cod_doenca)
)

CREATE TABLE INGERE (
cod_remedio INTEGER,
FOREIGN KEY(cod_remedio) REFERENCES REMEDIO (cod_remedio)
)

CREATE TABLE CONTATO (
cod_contato INTEGER PRIMARY KEY,
descricao_contato VARCHAR(10),
cod_tipocontat INTEGER,
FOREIGN KEY(cod_tipocontat) REFERENCES TIPO_CONTATO (cod_tipocontat)
)

CREATE TABLE BAIRRO (
cod_bairro INTEGER PRIMARY KEY,
descricao_bairro VARCHAR(10)
)

CREATE TABLE POSSUI3 (
CEP CHAR(08),
cod_endereco INTEGER,
rua VARCHAR(10),
numero INTEGER,
codigo_pessoa INTEGER,
cod_tipoend INTEGER,
cod_bairro INTEGER,
PRIMARY KEY(cod_endereco,codigo_pessoa,cod_tipoend,cod_bairro)
)

CREATE TABLE CIDADE (
cod_cidade INTEGER PRIMARY KEY,
descricao_cidade VARCHAR(10)
)

ALTER TABLE BAIRRO/CIDADE ADD FOREIGN KEY(cod_bairro) REFERENCES BAIRRO (cod_bairro)
ALTER TABLE BAIRRO/CIDADE ADD FOREIGN KEY(cod_cidade) REFERENCES CIDADE (cod_cidade)
ALTER TABLE ESTADO/CIDADE ADD FOREIGN KEY(cod_cidade) REFERENCES CIDADE (cod_cidade)
ALTER TABLE PERTENCE ADD FOREIGN KEY(cod_contato) REFERENCES CONTATO (cod_contato)

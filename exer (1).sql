DROP DATABASE IF EXISTS TRABALHO;
CREATE DATABASE TRABALHO;
USE TRABALHO;

CREATE TABLE TIPO_CONTATO (
 cod_tipocontat VARCHAR(50),
 descricao_tipocont VARCHAR(50)
 );
 insert TIPO_CONTATO (cod_tipocontat,descricao_tipocont)
 values (1231,'E-mail'),
 (1234,'telefone fixo'),
 (8787,'celular'),
 (0828, 'E-mail'),
 (0182,'telefone fixo');
 
 CREATE TABLE CONTATO (
 cod_contato INTEGER PRIMARY KEY,
 descricao_contato VARCHAR(50),
 cod_tipocontat VARCHAR(50)
 );
 insert CONTATO (cod_contato,descricao_contato, cod_tipocontat)
 values (15235,'joao@hotmail.com', 'e-mail'),
 (01829,1616162,'telefone fixo'),
 (5261,617281,'celular'),
 (7325,'maria@gmail.com','e-mail'),
 (732,'820398', 'telefone fixo');
 
 CREATE TABLE TIPO_ENDERECO (
 descricao_endereco CHAR(50),
 cod_tipoend INTEGER PRIMARY KEY
 );
 insert TIPO_ENDERECO (descricao_endereco,cod_tipoend)
 values ('CASA',54646),
 ('APARTAMENTO',83920),
 ('CASA',0923),
 ('CASA',9238),
 ('APARTAMENTO',8391);
 
 
 CREATE TABLE ESTADO (
 cod_estado INTEGER PRIMARY KEY,
 descricao_estado CHAR(3)
 );
 insert ESTADO (cod_estado,descricao_estado)
 values (54646,'ES'),
 (7128,'MA'),
 (1921,'SP'),
 (271,'RS'),
 (219,'RJ');
 
 CREATE TABLE CIDADE (
 cod_cidade INTEGER PRIMARY KEY,
 descricao_cidade VARCHAR(50)
 );
 insert CIDADE (cod_cidade, descricao_cidade)
 values (45646,'Vitória'),
 (1271,'serra'),
 (3728,'guaruja'),
 (128,'guarapari'),
 (1281,'santos');
 
 CREATE TABLE BAIRRO (
 cod_bairro INTEGER PRIMARY KEY,
 descricao_bairro VARCHAR(50)
 );
 insert BAIRRO (cod_bairro,descricao_bairro)
 values (6535, 'Laranjeiras'),
 (2718,'jacaraipe'),
 (721,'laranjeiras'),
 (029,'são joão'),
 (2829,'santa rita');
 
 CREATE TABLE PESSOA (
 nome_completo VARCHAR(50),
 data_nasc datetime,
 Sexo VARCHAR(10),
 CPF INTEGER(11),
 codigo_pessoa INTEGER PRIMARY KEY
 );
 insert PESSOA (nome_completo,data_nasc,Sexo,CPF, codigo_pessoa)
 values ('João Claudio Lisboa','1986-12-20','M',5669,8584515 ),
 ('Maria Carla Oliveira','1985-10-10','F',1910,28265),
 ('Joana da Fonseca',' 1974-08-02','F',3289,552152),
 ('Carlos Rocha','1970-01-20','M',2819,4516542),
 ('Lucas Camargo','1980-02-02','M',1289,44522);
 
 CREATE TABLE FAMILIAR (
 grau_de_parentesco VARCHAR(10),
 codigo_pessoa INTEGER
 );
 insert FAMILIAR (grau_de_parentesco, codigo_pessoa)
 values ('PAI', 65465),
 ('MAE',8282),
 ('FILHO',8129),
 ('TIA',8321),
 ('NETO',8293);
 
 CREATE TABLE PROFISSIONAL (
 cargo VARCHAR(10),
 codigo_pessoa INTEGER
 );
 insert PROFISSIONAL (cargo,codigo_pessoa)
 values ('médico',1612),
 ('Policial',2918),
 ('médico',382),
 ('médico',2812),
 ('policial',1829);
 
 CREATE TABLE INDIVIDUO (
 QR_code VARCHAR(10),
 codigo_pessoa INTEGER
 );
 insert INDIVIDUO (QR_code, codigo_pessoa)
 values ('4564ds',54654),
 ('1829b',18291),
 ('637gh',7198),
 ('la1278',1289),
 ('obn2',182);
 
 
 CREATE TABLE seguranca (
 senha VARCHAR(10),
 codigo_pessoa INTEGER
 );
 insert seguranca (senha,codigo_pessoa)
 values ('js727',545),
 ('ls219',283),
 ('jw88',291),
 ('l091',1289),
 ('lj91',120);
 
 CREATE TABLE REMEDIO ( 
 cod_remedio INTEGER PRIMARY KEY,
 descricao_remedio VARCHAR(50),
 horario_remedio VARCHAR(10)
 );
 insert REMEDIO (cod_remedio,descricao_remedio,horario_remedio)
 values (65464,'Omeprazol', '10:00:00'),
 (21728,'Torsilax','20:00:00'),
 (0128,'Luftal', '21:00:00'),
 (018,'Omeprazol', '13:00:00'),
 (1021,'Diazepam','10:00:00');
 
 
 CREATE TABLE DOENCA ( 
 cod_doenca INTEGER PRIMARY KEY,
 descricao_doenca CHAR(50)
 );
 insert DOENCA (cod_doenca,descricao_doenca)
 values (74558,'Alzheimer'),
 (1182,'hipertensão'),
 (1728,'diabetes'),
 (0812,'pressão baixa'),
 (0172,'Alzheimer'); 
 
 create table resto_endereco(
  cod_endereco INTEGER PRIMARY KEY,
  numero int,
  rua char(10),
  cep int);
  insert resto_endereco(cod_endereco, numero, rua, cep)
  values (654862, '08', 'Sri Lanka', '2562155'),
  (43256,'06', 'Brasil','5245645'),
  (545215,'78', 'Souza','752456321'),
  (74455,'71','Santana','545621458'),
  (8596596,'12', 'Moura','54896154');

 
 SELECT * FROM TIPO_CONTATO;
 SELECT * FROM CONTATO;
 SELECT * FROM TIPO_ENDERECO;
 SELECT * FROM ESTADO;
 SELECT * FROM CIDADE;
 SELECT * FROM BAIRRO;
 SELECT * FROM PESSOA;
 SELECT * FROM FAMILIAR;
 SELECT * FROM PROFISSIONAL;
 SELECT * FROM INDIVIDUO;
 SELECT * FROM SEGURANCA;
 SELECT * FROM REMEDIO;
 SELECT * FROM DOENCA;
 select * from resto_endereco;
 
   select seguranca.senha as cargos, codigo
  from PROFISSIONAL 
   right outer join seguranca
  on(familiar.codigo_pessoa=seguranca.codigo_pessoa);
  
   select profissional.cargo as cargos, senha
  from profissional 
  left outer join seguranca
  on(profissional.codigo_pessoa=seguranca.codigo_pessoa);
  
select nome_completo, qr_code
from pessoa
inner join individuo
on(pessoa.codigo_pessoa=individuo.codigo_pessoa);


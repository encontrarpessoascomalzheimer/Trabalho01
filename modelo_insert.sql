CREATE TABLE TIPO_CONTATO (
 cod_tipocontat INTEGER PRIMARY KEY,
 descricao_tipocont VARCHAR(50)
 );
 insert TIPO_CONTATO (cod_tipocontat,descricao_tipocont)
 values (1231,'E-mail');
 
 CREATE TABLE CONTATO (
 cod_tipocontat VARCHAR(10),
 cod_contato INTEGER PRIMARY KEY,
 descricao_contato VARCHAR(50)
 );
 insert CONTATO (cod_contato,descricao_contato, cod_tipocontat)
 values (15235,'joao@hotmail.com', 'telefone');
 
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
 
 CREATE TABLE PESSOA (
 nome_completo VARCHAR(50),
 data_nasc datetime,
 Sexo VARCHAR(10),
 CPF INTEGER(11),
 codigo_pessoa INTEGER PRIMARY KEY
 );
 insert PESSOA (nome_completo,data_nasc,Sexo,codigo_pessoa,CPF)
 values ('João Claudio Lisboa','1986-12-20','M',1234,565669);
 
 CREATE TABLE FAMILIAR (
 grau_de_parentesco VARCHAR(10),
 codigo_pessoa INTEGER
 );
 insert FAMILIAR (grau_de_parentesco, codigo_pessoa)
 values ('PAI', 65465);
 
 CREATE TABLE PROFISSIONAL (
 cargo VARCHAR(10),
 codigo_pessoa INTEGER
 );
 insert PROFISSIONAL (cargo,codigo_pessoa)
 values ('médico',1612);
 
 CREATE TABLE INDIVIDUO (
 QR_code VARCHAR(10),
 codigo_pessoa INTEGER
 );
 insert INDIVIDUO (QR_code, codigo_pessoa)
 values ('4564ds',54654);
 
 
 CREATE TABLE seguranca (
 senha VARCHAR(10),
 codigo_pessoa INTEGER
 );
 insert seguranca (senha,codigo_pessoa)
 values ('js727',545);
 
 CREATE TABLE REMEDIO ( 
 cod_remedio INTEGER PRIMARY KEY,
 descricao_remedio VARCHAR(50),
 horario_remedio VARCHAR(10)
 );
 insert REMEDIO (cod_remedio,descricao_remedio,horario_remedio)
 values (65464,'Omeprazol', '10:00:00');
 
 
 CREATE TABLE DOENCA ( 
 cod_doenca INTEGER PRIMARY KEY,
 descricao_doenca CHAR(50)
 );
 insert DOENCA (cod_doenca,descricao_doenca)
 values (74558,'Alzheimer'); 
 
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
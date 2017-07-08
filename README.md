# TRABALHO 01
Trabalho desenvolvido durante a disciplina de Banco de Dados.

# Sumário

### 1.COMPONENTES<br>
Milena Gomes e Luíza Alves.<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados "Encontrar pessoas com alzheimer". O projeto foi desenvolvido pensando no alto indice de pessoas desaparecidas por problemas relacionados a doenças que não conseguem ser encontradas devido ao esquecimento causado pelo alzheimer ou algum disturbio mental. A idéia é criar um banco de dados onde familiares podem cadastrar a pessoa com a doença e caso ela desapareça a policia poderá entrar em contato com a familia utilizando as informações contidas nele. Isso facilitaria o encontro da familia com a pessoa desaparecida. <br>

### 3.MINI-MUNDO<br>

  <br>
    Pesquisas realizadas em alguns estados no Brasil identificou que é registrado um alto índice de pessoas 
desaparecidas, o maior número delas são pessoas que sofrem de alzheimer ou algum distúrbio
mental. <br>
    A polícia civil do estado do Espirito Santo, desenvolveu um meio de localizar com maior velocidade as 
famílias, quando ser encontrado alguém que se perdeu, ou esqueceu suas informações pessoais.<br>
    A localização ocorre da seguinte forma, se alguém da família que possuir alguma pesssoa com alzheimer ou qualquer 
 distúrbio mental diagnosticado por um médico, pode fazer um cadastro no site ou procurar uma delegacia/hospital
 mais próximo para esse cadastro, nele deverá conter dados de familiares responsáveis e da pessoa que precisará
 do serviço.<br>
     Nos dados o individuo, conterá nome completo, data de nascimento, sexo,
 endereço (CEP, bairro, cidade, estado, rua e número da residência), CPF, dados clinicos e deve ser anexada 
  uma foto para identificação, nos dados dos responsáveis deve ser preenchido individualmente,
 nome completo, grau de parentesco, cpf, telefone, endereço (CEP, bairro, cidade, estado, 
 rua e o número de residência) e local de trabalho com endereço ( CEP, bairro, cidade, estado,
 rua e o número do local de trabalho) e telefone.<br>
    No final do cadastro, o responsável ira receber um QR CODE seguro (onde terá um código que quando precisar 
 será lido pela policia),  que deverá ser usada pela pessoa que precisará do serviço, assim, caso a pessoa
 desapareça, seja encontrada e levada a uma delegacia ou um policial mais próximo, a polícia terá o código para lero QR CODE
 e para entrar no sistema e ver os dados e encontarar a familia. <br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/balsamiq1.png) <br>
Link protótipo completo: https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/trabalho.pdf <br>

### 5.MODELO CONCEITUAL<br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/conceitual%20final.png)
 
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: Jefferson Napomuceno e Flavia Lordes.
    [Grupo02]: Thainara Amaral e Julio Cezar.

#### 5.2 DECISÕES DE PROJETO <br>
    TABELA TIPO_ENDEREÇO: Nessa tabela decidimos separar o tipo de endereço bairro, cidade e estado, pois iria existir uma repetição de     nomes de bairro, cidade e estados. <br>
    TABELA TIPO_CONTATO: Nessa tabela decidimos separar o tipo de contato, ou seja, telefone fixo, celular, e-mail, rede social, etc,       pois também irá haver uma repetição do tipo de contato. <br>
    TABELA SEGURANCA: Essa tabela foi criada com objetivo de armazenar os dados de segurança, como login e senha.
   
    
   
   

#### 5.3 DESCRIÇÃO DOS DADOS 
   TIPO_CONTATO <br>
   cod_tipocontat: chave primária simples, precisa-se de um código que identifique qual o tipo de contato utilizado como único (e-          mail,telefone,celular).<br>
   descricao_tipocont:atributo simples, atributo simples, precisa-se ligar o codigo a um tipo de contato.
    
   CONTATO <br>
   cod_contato:chave primária simples, o contato precisa ter um código que o identifique como único.<br>
   descricao_Contato:atributo simples, precisa-se explicar o código do contato, qual o tipo utilizado.
   
   PESSOA <br>
   nome_completo:,atributo simples, deve-se associar o nome ao código da pessoa.<br>
   sexo:atributo simples, precisa-se identificar o sexo da pessoa que utilizará o sistema.<br>
   data_nasc: atributo simples, precisa-se saber a data de nascimento da pessoa que utilizará o sistema<br>
   
   SEGURANCA <br>
   codigo_pessoa: chave primária, precisa-se de um codigo para identificar a pessoa como única.<br>
   senha: atributo simples, atribuir senha a um familiar ou profissional.<br>
   
   FAMILIAR <br>
   grau_de_parentesco: atributo simples, identifica o grau de parentesco do familiar do individuo.<br>
   CPF_familiar: atributo simples, precisa-se do CPF do familiar. <br>
   
   INDIVIDUO <br>
   CPF_individuo: atributo simples, precisa-se do CPF do individuo.<br>
   
   PROFISSIONAL <br>
   cargo: atributo simples, identifica-se o cargo do profissional.<br>
   
   TIPO_ENDERECO <br>
   cod_tipoend: chave primária, serve para identificar o tipo de endereço como único.<br>
   descricao_endereco: atributo simples, atribui o codigo do endereço ao tipo dele.<br>
   
   BAIRRO <br>
   descricao_bairro: atributo simples, precisa-se saber o bairro que a pessoa mora.<br>
   cod_bairro: chave primária, existem vários bairros e é preciso identifica-lo como único.<br>

   ESTADO <br>
   cod_estado: chave primária, o estado precisa ter um código que o identifique como único.<br>
   descricao_estado: atributo simples, precisa-se atribuir um nome de estado a um código.<br>
    
   CIDADE <br>
   cod_cidade: chave primária, a cidade precisa ter um código que a identifique como única.<br>
   descricao_cidade: atributo simples, precisa-se atribuir um nome de cidade a um código.<br>
   
   REMEDIO <br>
   cod_remedio: chave primária, o remedio precisa de um código que o identifique como único.<br>
   descricao_remedio:atributo simples, atribui o codigo do remedio a qual o tipo dele.<br>
   horario_remedio: atributo simples, precisa-se do horario do uso do medicamento.<br>
   
   DOENCA <br>
   cod_doenca:chave primária, a doença precisa de um código que a identifique como única.<br>
   descricao_doenca:atributo simples, atribui o codigo de doenca ao tipo de doenca.<br>
   
 
 

### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/logico%20final.png)
### 7	MODELO FÍSICO<br>
Link do modelo físico completo: https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/modelo_fisico.sql
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
Print do exemplo: <br>
![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/1.PNG) <br>
Link do insert completo: https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/INSERTNOVO.sql<br>

#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/1.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/10.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/11.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/12.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/13.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/2.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/novo.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/4.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/5.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/6.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/7.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/8.PNG) <br>

![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/9.PNG) <br>

        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
![Alt text]()

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
Exemplo do resultado da consulta: <br>
![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/exemplolike.PNG) <br>
Link do INSERT+LIKE completo: https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/LIKE.sql
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

Link do UPDATE E DELETE completo: https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/ATUALIZACAOEEXCLUSAO.sql
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>

#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
Exemplo do resultado da consulta: <br>
![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/g1.PNG) <br>
Link do INSERT+GROUP BY completo: https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/GROUPBY.sql
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>

#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>

#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
Exemplo do resultado da subconsulta: <br>
![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/EXEMPLOSUB.PNG) <br>
Link de SUBCONSULTAS completo: https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/SUBCONSULTA.sql

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>

### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida )
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

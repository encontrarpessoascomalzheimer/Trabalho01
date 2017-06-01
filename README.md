# TRABALHO 01
Trabalho desenvolvido durante a disciplina de Banco de Dados.

# Sumário

### 1.COMPONENTES<br>
Milena Gomes e Luíza Alves.<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados "Encontrar pessoas com alzheimer". O projeto foi desenvolvido pensando no alto indice de pessoas desaparecidas por problemas relacionados a doenças que não conseguem ser encontradas devido ao esquecimento causado pelo alzheimer. A idéia é criar um banco de dados onde familiares podem cadastrar a pessoa com a doença e caso ela desapareça a policia poderá entrar em contato com a familia utilizando as informações contidas nele. Isso facilitaria o encontro da familia com a pessoa desaparecida. <br>

### 3.MINI-MUNDO<br>

Descritivo do projeto:<br>
    Pesquisas realizadas em alguns estados no Brasil identificou que é registrado um alto índice de pessoas 
desaparecidas, o maior número delas são pessoas que sofrem de algum problema de perda de memória ou distúrbio
mental. <br>
    A polícia civil do estado do Espirito Santo, desenvolveu um meio de localizar com maior velocidade as 
famílias, quando aparecer alguém que se perdeu, ou esqueceu suas informações pessoais.<br>
    A localização ocorre da seguinte forma, toda família que possuir alguém com alzheimer ou qualquer 
 distúrbio mental diagnosticado por um médico, pode fazer um cadastro no site ou procurar uma delegacia/hospital
 mais próximo para esse cadastro, nele conterá dados de familiares responsáveis e da pessoaque precisará
 do serviço.<br>
     Nos dados da pessoa responsável pelo cadastro, conterá nome completo, data de nascimento, sexo,
 endereço (CEP, bairro, cidade, estado, rua e número da residência), CPF e deve ser anexada 
  uma foto para identificação, nos dados dos responsáveis deve ser preenchido individualmente,
 nome completo, grau de parentesco, cpf, telefone, endereço (CEP, bairro, cidade, estado, 
 rua e o número de residência) e local de trabalho com endereço ( CEP, bairro, cidade, estado,
 rua e o número do local de trabalho) e telefone.<br>
    No final do cadastro, o responsável ira receber um QR CODE seguro (onde terá todas as 
 informações dadas no ato do cadastro), que deverá ser usada pela pessoa que precisará 
 do serviço, assim, caso a pessoa desapareça, seja encontrada e levada a uma delegacia 
 ou um policial mais próximo, a polícia terá o código para ler o QR CODE e ter todos os 
 dados para fazer o contatocom a família. <br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Link balsamiq:https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/trabalho.pdf<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")


### 5.MODELO CONCEITUAL<br>
    a) NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/conceitual%20final.png)
 

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: Jefferson e Flavia
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    Modelos
    
    a) Campo endereço: em nosso projeto optamos por varias tabelas para bairro, cidade e estado.<br>
    Campo de contato: decidimos separar, colocando duas tabelas.<br>
    b) Fizemos isso para não ouver muita repetição desnecessária<br>

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    ENDEREÇo: Tabela que armazena os endereços colocamos um código para identificar. <br>
    CONTATO: Tem duas tabelas para identificar o tipo de contato(telefone fixo, celular e email) e a outra tabela vai conter esses daodos.<br>


### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/logico%20final.png)
### 7	MODELO FÍSICO<br>
![Alt text](https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/fisico.sql)
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
Código com Insert nas tabelas:
https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/parte1_insert%2Bcreate.png
https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/parte2.png
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
Teste de criação do database e insert:
https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/TESTE1CREATE.png
https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/TESTE001.png
https://github.com/encontrarpessoascomalzheimer/Trabalho01/blob/master/TESTE002.png

        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários


        Entrega até este ponto em (data a ser definida)
        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em (data a ser definida)
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida )
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

# 📝 **Questões de Fixação – Capítulo 1: Criação do Banco de Dados e Tabelas**

## **1️⃣ Questões Dissertativas**

1. **Por que a criação correta de um banco de dados é fundamental para um sistema?**
   - Explique a importância de um banco de dados bem estruturado e como isso pode impactar o desempenho e a integridade das informações em um sistema como o SGSA.
2. **Qual a diferença entre `CREATE DATABASE` e `USE` no MySQL?**
   - Dê exemplos práticos de uso desses comandos e explique a função de cada um.
3. **Explique o conceito de Chave Primária e sua importância dentro de uma tabela.**
   - Utilize um exemplo de uma tabela de alunos e demonstre como uma chave primária é utilizada para identificar registros unicamente.
4. **Como funciona a relação entre tabelas utilizando chaves estrangeiras (`FOREIGN KEY`)?**
   - Dê um exemplo prático de uma relação 1:N entre duas tabelas, explicando a necessidade desse tipo de relacionamento.
5. **O que considerar ao escolher um tipo de dado para uma coluna?**
   - Cite pelo menos três fatores que devem ser levados em conta ao definir o tipo de dado de uma coluna em uma tabela do MySQL.

------

## **2️⃣ Questões de Múltipla Escolha** *(Apenas uma alternativa correta)*

1. **Qual comando é utilizado para criar um banco de dados no MySQL?**
   -  `NEW DATABASE SGSA;`
   -  `CREATE DATABASE SGSA;`
   -  `MAKE DATABASE SGSA;`
   -  `INIT DATABASE SGSA;`
2. **O que acontece se tentarmos inserir um valor repetido em uma coluna marcada como `PRIMARY KEY`?**
   -  O banco de dados aceita o valor sem restrições
   -  Apenas um alerta é gerado, mas a operação ocorre normalmente
   -  O banco de dados impede a inserção e retorna um erro
   -  O valor duplicado é automaticamente alterado pelo MySQL
3. **O comando `USE SGSA;` no MySQL tem a função de:**
   -  Criar um novo banco de dados
   -  Selecionar um banco de dados para realizar operações
   -  Apagar um banco de dados existente
   -  Conectar um banco de dados ao servidor remoto
4. **Qual das opções abaixo define corretamente uma Chave Estrangeira (`FOREIGN KEY`)?**
   -  Um identificador único que diferencia registros dentro da própria tabela
   -  Uma coluna usada para armazenar apenas valores NULL
   -  Um campo que referencia uma chave primária em outra tabela
   -  Uma coluna que pode armazenar qualquer tipo de dado, sem restrições
5. **Qual dos seguintes tipos de dados é mais adequado para armazenar uma data de nascimento?**
   -  `VARCHAR(10)`
   -  `TEXT`
   -  `DATE`
   -  `ENUM`

------

## **3️⃣ Questões de Caixa de Seleção** *(Múltiplas respostas corretas)*

1. **Quais das opções abaixo são benefícios de utilizar um banco de dados relacional como o MySQL?**
   -  Organização eficiente dos dados
   -  Facilidade na recuperação de informações
   -  Exclusividade para pequenos volumes de dados
   -  Suporte a integridade referencial
2. **Quais dos comandos abaixo fazem parte do subconjunto DDL (Data Definition Language)?**
   -  `CREATE TABLE`
   -  `ALTER TABLE`
   -  `DROP TABLE`
   -  `SELECT * FROM Alunos`
   -  `INSERT INTO Alunos VALUES (...)`
3. **Quais afirmações sobre Chaves Estrangeiras são verdadeiras?**
   -  Elas estabelecem relacionamentos entre tabelas
   -  Devem referenciar uma chave primária em outra tabela
   -  Podem conter valores duplicados na tabela original
   -  Só podem ser usadas em bancos de dados NoSQL

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os conceitos sobre **criação de bancos de dados e tabelas** com suas respectivas definições:

| **ID** | **Conceito**        | **Descrição**                                                |
| ------ | ------------------- | ------------------------------------------------------------ |
| 1      | **CREATE DATABASE** | 📌 Comando para criar um novo banco de dados no MySQL         |
| 2      | **USE**             | 📌 Define qual banco de dados será utilizado para operações   |
| 3      | **CREATE TABLE**    | 📌 Comando para criar uma nova tabela dentro do banco de dados |
| 4      | **PRIMARY KEY**     | 📌 Chave que identifica unicamente cada registro em uma tabela |
| 5      | **FOREIGN KEY**     | 📌 Chave que cria um relacionamento entre tabelas             |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. **Toda tabela no MySQL precisa ter uma chave primária (`PRIMARY KEY`).**
   -  Verdadeiro
   -  Falso
2. **O comando `CREATE DATABASE SGSA;` cria um novo banco de dados chamado SGSA.**
   -  Verdadeiro
   -  Falso
3. **Uma Chave Estrangeira (`FOREIGN KEY`) pode conter valores que não existem na tabela referenciada.**
   -  Verdadeiro
   -  Falso
4. **Os tipos de dados no MySQL devem ser escolhidos cuidadosamente para otimizar o armazenamento e desempenho.**
   -  Verdadeiro
   -  Falso
5. **O comando `ALTER TABLE` pode ser utilizado para modificar a estrutura de uma tabela existente no MySQL.**
   -  Verdadeiro
   -  Falso

------

### ✅ **Conclusão**

Essas questões foram cuidadosamente elaboradas para reforçar o aprendizado do **Capítulo 1 - Criação do Banco de Dados e Tabelas**. Elas cobrem conceitos fundamentais, boas práticas e aplicação prática do MySQL.

📢 **Agora é hora de aplicar seus conhecimentos!** 🚀

**Responda às questões, revise os conceitos abordados e fortaleça sua base no MySQL!** 👨‍💻
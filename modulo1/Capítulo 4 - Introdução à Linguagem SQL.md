# 📚 Módulo 1: Fundamentos de Banco de Dados

# 📖 Capítulo 4 - Introdução à Linguagem SQL

> 🧠 *"Os dados falam, mas é o SQL que lhes dá voz."* – Desconhecido

------

## 🎯 **Objetivo do Capítulo**

Neste capítulo, você aprenderá:

✅ O que é **SQL (Structured Query Language)** e sua importância.

✅ A história e evolução do SQL.

✅ Os principais comandos SQL e sua divisão em subconjuntos (DDL, DML, DQL, DCL e TCL).

✅ Exemplos práticos aplicados ao **SGSA (Sistema de Gerenciamento de Sala de Aula)**.

✅ Como escrever consultas básicas e compreender sua sintaxe.

Ao final deste capítulo, você terá uma compreensão sólida sobre os fundamentos do SQL e estará pronto para começar a escrever consultas no MySQL.

------

## 🔍 **4.1 O que é SQL?**

A **SQL (Structured Query Language)** é a linguagem padrão para interação com bancos de dados relacionais. Seu principal objetivo é **consultar, inserir, atualizar e excluir dados**, além de definir e administrar estruturas de armazenamento.

✔ **Interoperabilidade** – A SQL pode ser utilizada em diversos bancos de dados, como MySQL, PostgreSQL, SQL Server e Oracle.

✔ **Facilidade de aprendizado** – Com uma sintaxe simples e intuitiva, SQL é acessível mesmo para iniciantes.

✔ **Poder e flexibilidade** – Permite manipular grandes volumes de dados de forma eficiente.

🎯 **Exemplo básico de consulta:**

```sql
SELECT nome, idade FROM alunos WHERE turma = '3A';
```

Esse comando retorna os nomes e idades dos alunos da turma 3A.

------

## 📜 **4.2 História e Evolução do SQL**

A SQL foi criada na década de **1970** por pesquisadores da IBM, especialmente **Edgar F. Codd**, que desenvolveu o modelo relacional. A partir dessa teoria, surgiram os primeiros bancos relacionais e a SQL como linguagem padrão para interagir com esses sistemas.

🔹 **1970** – Edgar Codd publica os princípios do modelo relacional.

🔹 **1974** – Primeira versão da SQL na IBM.

🔹 **1986** – SQL se torna um padrão ANSI (American National Standards Institute).

🔹 **1990+** – Popularização e evolução dos bancos relacionais, como MySQL, PostgreSQL e SQL Server.

Atualmente, a SQL continua sendo essencial no mundo dos dados, sendo utilizada em **análises de negócios, aplicações web, inteligência artificial e ciência de dados**.

------

## 🏗️ **4.3 Principais Comandos SQL**

Os comandos SQL são divididos em **cinco subconjuntos principais**:

### 📌 **4.3.1 DDL (Data Definition Language)**

Usado para definir a estrutura do banco de dados, criando e alterando tabelas.

🔹 **Principais comandos:**

- `CREATE TABLE` – Criação de tabelas.
- `ALTER TABLE` – Modificação de tabelas.
- `DROP TABLE` – Exclusão de tabelas.

🎯 **Exemplo no SGSA:**

```sql
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade TINYINT NOT NULL,
    turma VARCHAR(10) NOT NULL
);
```

### 📌 **4.3.2 DML (Data Manipulation Language)**

Usado para inserir, atualizar e remover dados das tabelas.

🔹 **Principais comandos:**

- `INSERT INTO` – Insere registros.
- `UPDATE` – Atualiza registros existentes.
- `DELETE` – Remove registros.

🎯 **Exemplo no SGSA:**

```sql
INSERT INTO alunos (nome, idade, turma) VALUES ('João Silva', 16, '3A');
UPDATE alunos SET idade = 17 WHERE nome = 'João Silva';
DELETE FROM alunos WHERE idade < 14;
```

### 📌 **4.3.3 DQL (Data Query Language)**

Usado para consultar e recuperar informações do banco.

🔹 **Principais comandos:**

- `SELECT` – Realiza buscas nos dados.
- `WHERE` – Filtra registros.
- `ORDER BY` – Ordena os resultados.
- `GROUP BY` – Agrupa registros semelhantes.

🎯 **Exemplo no SGSA:**

```sql
SELECT nome, turma FROM alunos WHERE idade >= 15 ORDER BY nome;
```

### 📌 **4.3.4 DCL (Data Control Language)**

Usado para controle de permissões de usuários no banco.

🔹 **Principais comandos:**

- `GRANT` – Concede permissões.
- `REVOKE` – Revoga permissões.

🎯 **Exemplo no SGSA:**

```sql
GRANT SELECT ON alunos TO 'professor';
REVOKE DELETE ON alunos FROM 'professor';
```

### 📌 **4.3.5 TCL (Transaction Control Language)**

Usado para gerenciar transações dentro do banco.

🔹 **Principais comandos:**

- `COMMIT` – Confirma mudanças.
- `ROLLBACK` – Desfaz alterações.
- `SAVEPOINT` – Define pontos de recuperação.

🎯 **Exemplo no SGSA:**

```sql
START TRANSACTION;
UPDATE alunos SET idade = 18 WHERE nome = 'Ana Souza';
ROLLBACK; -- Reverte a mudança
```

------

## ⚡ **4.4 Sintaxe Básica do SQL**

A sintaxe do SQL segue um padrão intuitivo:

✅ **Seleção de dados:**

```sql
SELECT coluna1, coluna2 FROM tabela WHERE condição;
```

✅ **Inserção de dados:**

```sql
INSERT INTO tabela (coluna1, coluna2) VALUES ('valor1', 'valor2');
```

✅ **Atualização de dados:**

```sql
UPDATE tabela SET coluna1 = 'novo_valor' WHERE condição;
```

✅ **Exclusão de dados:**

```sql
DELETE FROM tabela WHERE condição;
```

------

## 🏁 **Conclusão**

Neste capítulo, aprendemos:

✅ O que é **SQL** e sua importância no mundo dos dados.

✅ A evolução da **linguagem SQL** desde os anos 70.

✅ Os principais comandos SQL e suas categorias (**DDL, DML, DQL, DCL e TCL**).

✅ Exemplos práticos aplicados ao **SGSA (Sistema de Gerenciamento de Sala de Aula)**.

📌 **Nos próximos capítulos, aprofundaremos as consultas SQL e suas aplicações avançadas!** 🚀
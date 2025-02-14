# 🏛 **Módulo 2: DDL - Data Definition Language**

## 📖 **Capítulo 1 - Criação do Banco de Dados e Tabelas**

> **"A base de qualquer grande construção começa com um alicerce sólido. No mundo dos bancos de dados, esse alicerce é a modelagem correta das tabelas. Um banco bem projetado não apenas armazena dados, mas os organiza de forma lógica, segura e eficiente."**

------

## 📌 **Objetivo do capítulo**

Este capítulo explora os conceitos essenciais para a **criação de bancos de dados e tabelas** no **MySQL**. Você aprenderá:

- ✅ **O que é um banco de dados e por que ele é essencial**.
- ✅ **Como criar um banco de dados no MySQL e definir corretamente suas tabelas**.
- ✅ **A importância das chaves primárias e estrangeiras para garantir integridade**.
- ✅ **Os diferentes tipos de dados e como escolher o mais adequado para cada campo**.
- ✅ **As melhores práticas para projetar a estrutura inicial de um banco de dados eficiente**.

Ao final deste capítulo, você será capaz de construir a **base do SGSA (Sistema de Gerenciamento de Sala de Aula)** de forma estruturada e otimizada. 🎓

------

## 🏗 **1.1 O que é um Banco de Dados e por que ele é essencial?**

### 📌 **Definição de Banco de Dados**

Um **banco de dados** é uma coleção organizada de informações que podem ser armazenadas, recuperadas e gerenciadas de maneira eficiente. Ele permite **acessar, modificar e estruturar dados de forma lógica**, garantindo segurança e integridade.

### 📌 **A importância dos Bancos de Dados**

Imagine um sistema escolar que precisa armazenar informações sobre alunos, professores, turmas e frequência. Se essas informações fossem guardadas em **planilhas ou documentos de texto**, rapidamente haveria **erros, duplicações e dificuldade de acesso**.

💡 **Com um banco de dados bem projetado, podemos:**
- ✔ Organizar dados de forma eficiente 📊
- ✔ Evitar inconsistências e duplicações ❌
- ✔ Facilitar consultas e geração de relatórios 📑
- ✔ Garantir segurança e controle de acesso 🔒

🔎 **Exemplo:**
 No **SGSA**, todas as informações sobre alunos serão armazenadas no banco de dados. Assim, um coordenador poderá consultar rapidamente **quantos alunos estão matriculados em determinada turma** ou **quantos dias um aluno faltou durante o mês**.

------

## 🛠️ **1.2 Criando um Banco de Dados no MySQL**

### 📌 **Comando `CREATE DATABASE`**

No MySQL, utilizamos o comando **`CREATE DATABASE`** para criar um novo banco de dados.

🔎 **Sintaxe:**

```sql
CREATE DATABASE nome_do_banco;
```

🔎 **Exemplo prático:** Criando o banco de dados do SGSA

```sql
CREATE DATABASE SGSA;
```

✔ Esse comando cria um **banco de dados chamado SGSA**, que será usado para armazenar todas as tabelas do sistema.

💡 **Dica:**

- Sempre utilize nomes **curtos e significativos** para os bancos de dados.
- **Evite espaços** no nome (prefira `_` ou `CamelCase`, como `Escola_DB` ou `escolaDB`).

### 📌 **Selecionando um Banco de Dados**

Antes de criar tabelas, precisamos definir em qual banco de dados as operações serão realizadas. Para isso, usamos o comando **`USE`**.

🔎 **Exemplo:**

```sql
USE SGSA;
```

✔ Agora, todas as tabelas e comandos SQL serão executados dentro do banco **SGSA**.

------

## 🏛 **1.3 Criando Tabelas no MySQL**

### 📌 **O que são Tabelas?**

As **tabelas** são os elementos fundamentais de um banco de dados. Cada tabela armazena um **tipo específico de informação**, organizada em **colunas** e **linhas**.

**Exemplo:** No SGSA, teremos tabelas para armazenar **alunos, professores, turmas e frequência**.

| **id_aluno** | **nome** | **matrícula** | **turma_id** |
| ------------ | -------- | ------------- | ------------ |
| 1            | João     | 12345         | 2            |
| 2            | Maria    | 54321         | 3            |

### 📌 **Criando uma Tabela no MySQL**

Para criar uma tabela, utilizamos o comando **`CREATE TABLE`**.

🔎 **Sintaxe:**

```sql
CREATE TABLE nome_da_tabela (
    nome_coluna1 tipo_dado restrições,
    nome_coluna2 tipo_dado restrições,
    ...
);
```

🔎 **Exemplo:** Criando a tabela **Alunos** no SGSA

```sql
CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

------

## 🔗 **1.4 Chaves Primárias e Estrangeiras**

### 📌 **O que são Chaves Primárias?**

A **Chave Primária (`PRIMARY KEY`)** é um campo que identifica **unicamente cada registro** na tabela. Nenhum valor pode ser repetido ou ficar em branco.

🔎 **Exemplo:**

```sql
id_aluno INT PRIMARY KEY AUTO_INCREMENT
```

✔ **Cada aluno terá um ID único, gerado automaticamente**.

### 📌 **O que são Chaves Estrangeiras?**

A **Chave Estrangeira (`FOREIGN KEY`)** estabelece um **relacionamento** entre tabelas.

🔎 **Exemplo:** Relacionando **Turmas** e **Alunos**

```sql
CREATE TABLE Turmas (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome_turma VARCHAR(50) NOT NULL
);

CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

- ✔ **Cada turma pode ter vários alunos** (relação 1:N).
- ✔ A chave estrangeira **`turma_id`** em **Alunos** referencia **`id_turma`** em **Turmas**.

------

## 🛠️ **1.5 Escolhendo os Tipos de Dados Corretos**

### 📌 **Principais Tipos de Dados no MySQL**

| Tipo de Dado    | Descrição                          | Exemplo                     |
| --------------- | ---------------------------------- | --------------------------- |
| `INT`           | Números inteiros                   | `123`                       |
| `VARCHAR(n)`    | Texto curto (até **n** caracteres) | `"Maria"`                   |
| `TEXT`          | Texto longo                        | `"Aluno destaque da turma"` |
| `DATE`          | Datas no formato `YYYY-MM-DD`      | `2024-06-15`                |
| `ENUM('A','B')` | Valores predefinidos               | `'A'` ou `'B'`              |

💡 **Dica:** Sempre escolha o **tipo de dado adequado** para cada campo.

------

## 🎓 **Conclusão**

- ✔ **Criamos o banco de dados SGSA e tabelas essenciais.**
- ✔ **Definimos corretamente chaves primárias e estrangeiras.**
- ✔ **Escolhemos os melhores tipos de dados para cada coluna.**
- ✔ **Aprendemos as boas práticas para um banco de dados eficiente.**

Agora que a base está pronta, podemos avançar para **modificar e gerenciar essas tabelas!** 🚀

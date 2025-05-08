# 📚 Módulo 1: Fundamentos de Banco de Dados

# 📖 Capítulo 2 - Modelagem Relacional

> 🧠 *"Organizar dados sem um modelo bem definido é como construir um prédio sem fundação."* – C.J. Date

------

## 🎯 **Objetivo do Capítulo**

Neste capítulo, você aprenderá:

✅ O conceito fundamental de **modelagem relacional** 

✅ A importância da modelagem para **garantir integridade e eficiência** 

✅ Como identificar e criar **entidades, atributos e relacionamentos** 

✅ O conceito e a aplicação de **chaves primárias e estrangeiras** 

✅ As regras de **normalização** (1FN, 2FN e 3FN) 

✅ A construção de um **Diagrama Entidade-Relacionamento (DER)**

Ao final deste capítulo, você terá uma base sólida sobre como projetar um banco de dados relacional eficiente e escalável.

------

## 🔍 **2.1 O que é Modelagem Relacional?**

A **modelagem relacional** é o processo de estruturar e organizar os dados de um banco de dados de forma eficiente, garantindo integridade e consistência. Esse modelo foi introduzido por **Edgar F. Codd** em 1970 e tornou-se o padrão para a maioria dos bancos de dados modernos.

A modelagem relacional organiza os dados em **tabelas** que possuem **relacionamentos entre si**, substituindo a redundância de informações por conexões eficientes.

🔹 **Exemplo prático** Imagine um sistema escolar onde cada professor anota os alunos e suas notas em planilhas separadas. Com o tempo, essas planilhas acumulam informações duplicadas e tornam a busca por dados complexa.

Agora, imagine que temos um **banco de dados relacional** estruturado com tabelas conectadas:

📌 **Tabela ALUNOS:**

| id_aluno | nome  | turma |
| -------- | ----- | ----- |
| 1        | João  | 3A    |
| 2        | Ana   | 3B    |
| 3        | Pedro | 3A    |

📌 **Tabela DISCIPLINAS:**

| id_disciplina | nome_disciplina |
| ------------- | --------------- |
| 1             | Matemática      |
| 2             | História        |

📌 **Tabela NOTAS:**

| id_nota | id_aluno | id_disciplina | nota |
| ------- | -------- | ------------- | ---- |
| 1       | 1        | 1             | 8.5  |
| 2       | 2        | 2             | 7.0  |

Dessa forma, evitamos **redundância**, melhoramos a **performance** e garantimos **integridade dos dados**.

------

## 🏗️ **2.2 Entidades, Atributos e Relacionamentos**

### 📌 **2.2.1 Entidades**

Uma **entidade** representa um **objeto do mundo real** que precisa ser armazenado no banco de dados. Cada entidade se torna uma **tabela**.

🔹 **Exemplos de entidades:**

- ALUNO (representa um estudante)
- PROFESSOR (representa um docente)
- DISCIPLINA (representa uma matéria escolar)

### 📌 **2.2.2 Atributos**

Cada entidade possui **atributos**, que são as **informações sobre a entidade**.

🔹 **Exemplos de atributos para a entidade ALUNO:**

| Atributo | Descrição           |
| -------- | ------------------- |
| id_aluno | Identificador único |
| nome     | Nome do aluno       |
| turma    | Turma do aluno      |

### 📌 **2.2.3 Relacionamentos**

Os relacionamentos definem **como as entidades se conectam**. Eles podem ser:

🔹 **1 para 1 (1:1):** Um aluno tem **um** responsável legal. 

🔹 **1 para Muitos (1:N):** Um professor leciona para **várias** turmas.

 🔹 **Muitos para Muitos (N:M):** Um aluno pode estar matriculado em **várias** disciplinas.

**Exemplo:**

📌 **Relacionamento ENTRE ALUNOS E TURMAS (1:N)**

- Um aluno pertence a uma única turma.
- Uma turma pode ter vários alunos.

📌 **Relacionamento ENTRE ALUNOS E DISCIPLINAS (N:M)**

- Um aluno pode cursar várias disciplinas.
- Uma disciplina pode ser cursada por vários alunos.
- Para representar essa relação, usamos uma tabela intermediária: **MATRÍCULA**

| id_matricula | id_aluno | id_disciplina |
| ------------ | -------- | ------------- |
| 1            | 1        | 1             |
| 2            | 1        | 2             |
| 3            | 2        | 1             |

Dessa forma, evitamos duplicação e garantimos a integridade do banco.

------

## 🔑 **2.3 Chaves Primárias e Estrangeiras**

### 🔹 **2.3.1 Chave Primária (PRIMARY KEY)**

É o **identificador único** de uma tabela.

**Exemplo:**

- Na tabela **ALUNOS**, o **id_aluno** é a chave primária.

### 🔹 **2.3.2 Chave Estrangeira (FOREIGN KEY)**

É uma **referência à chave primária** de outra tabela.

**Exemplo:**

- Na tabela **NOTAS**, o campo **id_aluno** é uma **chave estrangeira** que referencia a tabela **ALUNOS**.

------

## 🏆 **2.4 Normalização de Dados**

A normalização evita **redundância e inconsistências**. As três primeiras formas normais são:

### 📌 **Primeira Forma Normal (1FN)**

🔹 Cada célula contém apenas **um valor**. Nada de listas dentro de uma célula!

### 📌 **Segunda Forma Normal (2FN)**

🔹 O banco já está na 1FN e **todos os atributos dependem da chave primária**.

### 📌 **Terceira Forma Normal (3FN)**

🔹 O banco está na 2FN e **não existem atributos que dependam de outros atributos** que não sejam a chave primária.

------

## 🎨 **2.5 Criando um Diagrama Entidade-Relacionamento (DER)**

O **DER** representa visualmente as entidades e seus relacionamentos.

🔹 **Exemplo de DER para um sistema escolar:**

- ALUNO (id_aluno, nome, turma)
- TURMA (id_turma, nome_turma)
- DISCIPLINA (id_disciplina, nome_disciplina)
- NOTA (id_nota, id_aluno, id_disciplina, nota)

Isso nos dá uma visão clara das interações do sistema.

------

## 🏁 **Conclusão**

Neste capítulo, aprendemos:

✅ O que é **modelagem relacional** e sua importância

✅ Como definir **entidades, atributos e relacionamentos**

✅ O papel das **chaves primárias e estrangeiras**

✅ O processo de **normalização dos dados**

✅ Como criar um **DER para organizar o banco de dados**

📌 **Nos próximos capítulos, começaremos a implementação prática desse modelo!** 🚀
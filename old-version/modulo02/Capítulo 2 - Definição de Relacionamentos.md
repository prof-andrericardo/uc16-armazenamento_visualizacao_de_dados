# 🏗️ Módulo 2: DDL - Data Definition Language

## 🔗 Capítulo 2 - Definição de Relacionamentos

> 🧠 *"Em um banco de dados relacional, não basta apenas armazenar dados; é essencial garantir que as conexões entre as tabelas sejam coerentes e integrem corretamente as informações. Relacionamentos bem definidos garantem um sistema eficiente e confiável."*

No SGSA, as tabelas não funcionam isoladamente. Elas se conectam para estruturar um banco de dados **coerente, normalizado e seguro**. Neste capítulo, exploraremos **como definir relacionamentos entre tabelas** utilizando **chaves primárias, chaves estrangeiras e constraints** para garantir a **integridade referencial**.

------

## 📌 1. Introdução aos Relacionamentos em Banco de Dados

Um banco de dados relacional funciona por meio de **tabelas interligadas**. Para que a conexão entre elas seja segura e otimizada, utilizamos **chaves primárias e chaves estrangeiras**.

### 🔹 **O que é uma Chave Primária (PRIMARY KEY)?**

A chave primária é um campo (ou conjunto de campos) que **identifica de maneira única** cada registro dentro de uma tabela.

**Exemplo:** Definição de `id_aluno` como chave primária na tabela `Alunos`:

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL
);
```

✔️ **Garante unicidade** dentro da tabela. ✔️ **Impede valores nulos**. ✔️ **Otimiza buscas e organização dos dados**.

------

### 🔹 **O que é uma Chave Estrangeira (FOREIGN KEY)?**

A chave estrangeira é um campo que **faz referência** a uma chave primária de outra tabela, criando um relacionamento entre elas.

**Exemplo:** Ligando a tabela `Alunos` à tabela `Turmas`:

```sql
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL
);

CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    turma_id INT NOT NULL,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ON DELETE CASCADE
);
```

✔️ **Garante que cada aluno esteja vinculado a uma turma existente**. ✔️ **Impede referências inválidas**. ✔️ **Facilita consultas e cruzamento de informações**.

------

## 📌 2. Tipos de Relacionamento entre Tabelas

Os bancos de dados relacionais seguem padrões de relacionamento entre tabelas. No SGSA, utilizamos principalmente:

### 🔹 **1:1 (Um para Um)**

Cada registro de uma tabela está **associado a apenas um registro** em outra tabela.

**Exemplo:** Um coordenador tem **um e apenas um** usuário associado.

```sql
CREATE TABLE Coordenadores (
    id_coordenador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    usuario_id INT UNIQUE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id_usuario)
);
```

### 🔹 **1:N (Um para Muitos)**

Um registro em uma tabela **pode estar vinculado a vários registros** em outra tabela.

**Exemplo:** Uma turma pode conter vários alunos, mas cada aluno pertence a apenas uma turma.

```sql
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL
);

CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    turma_id INT NOT NULL,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ON DELETE CASCADE
);
```

### 🔹 **N:N (Muitos para Muitos)**

Quando vários registros de uma tabela podem estar associados a vários registros de outra tabela. Isso é feito por meio de uma **tabela intermediária**.

**Exemplo:** Uma disciplina pode ser ministrada em várias turmas, e uma turma pode ter várias disciplinas.

```sql
CREATE TABLE Disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL
);

CREATE TABLE Turmas_Disciplinas (
    turma_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    PRIMARY KEY (turma_id, disciplina_id),
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ON DELETE CASCADE,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE CASCADE
);
```

------

## 📌 3. Integridade Referencial e Constraints

As constraints garantem a consistência dos dados. No SGSA, utilizamos:

✔️ **`ON DELETE CASCADE`** → Exclui registros relacionados automaticamente. ✔️ **`ON DELETE SET NULL`** → Define valores como `NULL` quando um registro relacionado é excluído. ✔️ **`ON DELETE RESTRICT`** → Impede a exclusão de registros referenciados.

**Exemplo:** Um professor está associado a uma disciplina, e caso a disciplina seja excluída, o campo `disciplina_id` no professor será definido como `NULL`.

```sql
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    disciplina_id INT,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE SET NULL
);
```

------

## 🏁 Conclusão

Definir corretamente os relacionamentos é fundamental para garantir a integridade dos dados e a eficiência do SGSA. Ao utilizar **chaves primárias e estrangeiras**, garantimos que as informações estejam sempre consistentes, reduzindo erros e otimizando as consultas.

> 🔜 No próximo capítulo, exploraremos **boas práticas e otimização na definição de tabelas**! 🚀

📌 **Pratique os exemplos no MySQL e analise como os relacionamentos afetam a integridade dos dados!**
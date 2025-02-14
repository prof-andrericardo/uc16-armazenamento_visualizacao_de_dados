# 🏛 **Módulo 2: DDL - Data Definition Language**

## 📖 **Capítulo 3 - Prática: Criando o Banco de Dados do SGSA**

> **"A teoria nos ensina o caminho, mas é a prática que nos leva até lá. Construir um banco de dados bem estruturado é como erguer os alicerces de um grande edifício: quanto mais sólida a base, mais eficiente será o sistema."**

------

## 📌 **Objetivo do capítulo**

Neste capítulo, vamos colocar em prática tudo o que aprendemos sobre **bancos de dados relacionais**, criando a **estrutura inicial do SGSA** no MySQL. Você aprenderá:

✅ **Como estruturar o banco de dados do SGSA** desde sua concepção.
 ✅ **Criar e configurar tabelas essenciais**, garantindo integridade e eficiência.
 ✅ **Implementar chaves primárias e estrangeiras** para modelagem de relacionamentos.
 ✅ **Aplicar boas práticas de design de banco de dados**, pensando na escalabilidade e manutenção do SGSA.

Ao final deste capítulo, você terá um **banco de dados funcional**, pronto para armazenar informações sobre alunos, professores, turmas e eventos acadêmicos. 🎓

------

## 🏗 **3.1 Estruturando o Banco de Dados do SGSA**

### 📌 **Planejamento e Modelagem**

Antes de começar a codificar, é essencial **definir a estrutura do banco de dados**. O SGSA precisa armazenar informações sobre **alunos, professores, turmas, disciplinas, chamadas e ocorrências**.

💡 **O que considerar ao estruturar o banco?**
 ✔ **Quais entidades (tabelas) são necessárias?**
 ✔ **Quais informações cada entidade precisa armazenar?**
 ✔ **Como as entidades se relacionam entre si?**
 ✔ **Como garantir a integridade e evitar redundância de dados?**

### 📌 **Diagrama Conceitual do SGSA**

O **modelo conceitual** do SGSA contém as seguintes entidades principais:

- **Alunos** (armazenam informações dos estudantes)
- **Professores** (dados dos docentes)
- **Turmas** (agrupamento de alunos)
- **Disciplinas** (matérias lecionadas)
- **Chamada** (registros de presença e faltas)
- **Ocorrências** (eventos disciplinares)

🔎 **Exemplo de modelagem no DER (Diagrama Entidade-Relacionamento)**

📌 **Relacionamentos principais:**
 ✔ **Um aluno pertence a apenas uma turma** (1:N).
 ✔ **Uma turma pode ter vários alunos** (1:N).
 ✔ **Um professor pode lecionar várias disciplinas** (N:M).
 ✔ **Cada disciplina é ministrada por um ou mais professores** (N:M).
 ✔ **Uma chamada está associada a um aluno e uma disciplina** (N:M).
 ✔ **Uma ocorrência pode envolver um aluno e um professor** (1:N).

------

## 🛠️ **3.2 Criando o Banco de Dados e as Tabelas**

Agora que temos a estrutura definida, vamos começar a implementação no MySQL!

### 📌 **Criando o Banco de Dados**

O primeiro passo é **criar o banco de dados do SGSA**.

🔎 **Comando SQL para criar o banco de dados:**

```sql
CREATE DATABASE SGSA;
```

✔ Agora temos o banco de dados pronto para receber tabelas.

💡 **Dica:** Sempre utilize **nomes significativos** e **evite caracteres especiais** nos nomes dos bancos e tabelas.

### 📌 **Selecionando o Banco de Dados**

Antes de criar tabelas, precisamos dizer ao MySQL que queremos trabalhar com o banco **SGSA**.

```sql
USE SGSA;
```

✔ Agora, todas as operações serão executadas dentro do banco **SGSA**.

------

## 📂 **3.3 Criando as Tabelas Principais**

Agora vamos criar as tabelas do **SGSA**, garantindo que sigam boas práticas de modelagem.

### 📌 **Tabela: `Alunos`**

Esta tabela armazenará os dados dos alunos, incluindo informações como **nome, matrícula e turma**.

```sql
CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

✔ **Cada aluno tem um ID único**.
 ✔ **A matrícula deve ser única** (campo `UNIQUE`).
 ✔ **O campo `turma_id` cria uma relação com a tabela `Turmas`**.

------

### 📌 **Tabela: `Turmas`**

Aqui serão armazenadas as informações sobre as turmas da escola.

```sql
CREATE TABLE Turmas (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome_turma VARCHAR(50) NOT NULL
);
```

✔ **Cada turma tem um identificador único (`id_turma`)**.
 ✔ **A coluna `nome_turma` define o nome da turma**.

------

### 📌 **Tabela: `Professores`**

A tabela `Professores` armazenará informações sobre os docentes.

```sql
CREATE TABLE Professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);
```

✔ **Cada professor tem um identificador único (`id_professor`)**.

------

### 📌 **Tabela: `Disciplinas`**

Cada disciplina será armazenada nesta tabela.

```sql
CREATE TABLE Disciplinas (
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina VARCHAR(100) NOT NULL
);
```

✔ **Cada disciplina tem um identificador único (`id_disciplina`)**.

------

### 📌 **Tabela: `Professores_Disciplinas` (Relacionamento N:M)**

Como **um professor pode ensinar várias disciplinas**, e **uma disciplina pode ser ministrada por vários professores**, criamos uma **tabela intermediária** para essa relação.

```sql
CREATE TABLE Professores_Disciplinas (
    id_professor INT,
    id_disciplina INT,
    PRIMARY KEY (id_professor, id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina)
);
```

✔ **Tabela de relacionamento entre `Professores` e `Disciplinas`**.
 ✔ **Utiliza chaves estrangeiras para garantir integridade**.

------

### 📌 **Tabela: `Chamada`**

Esta tabela armazena as presenças dos alunos em cada aula.

```sql
CREATE TABLE Chamada (
    id_chamada INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT,
    disciplina_id INT,
    data_aula DATE NOT NULL,
    presenca ENUM('Presente', 'Ausente', 'Justificado') NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina)
);
```

✔ **A presença do aluno é registrada para cada aula**.
 ✔ **Enum define valores fixos para a presença** (`Presente`, `Ausente`, `Justificado`).

------

### 📌 **Tabela: `Ocorrencias`**

Registra eventos disciplinares no ambiente escolar.

```sql
CREATE TABLE Ocorrencias (
    id_ocorrencia INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT,
    professor_id INT,
    descricao TEXT NOT NULL,
    data_ocorrencia DATE NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (professor_id) REFERENCES Professores(id_professor)
);
```

✔ **Cada ocorrência é vinculada a um aluno e um professor**.

------

## 🎓 **Conclusão**

✔ **Criamos o banco de dados do SGSA e suas tabelas principais.**
 ✔ **Definimos chaves primárias e estrangeiras para garantir a integridade dos dados.**
 ✔ **Aplicamos boas práticas de modelagem para evitar redundância e inconsistências.**
 ✔ **Agora, estamos prontos para inserir e manipular dados no SGSA!** 🚀
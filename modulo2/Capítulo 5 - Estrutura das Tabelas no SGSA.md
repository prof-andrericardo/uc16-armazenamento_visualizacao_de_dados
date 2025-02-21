# 🏗️ Módulo 2: DDL - Data Definition Language

## 📊 Capítulo 5 - Estrutura das Tabelas no SGSA

> 🧠 *"A organização eficiente das tabelas é a base para um banco de dados funcional, escalável e seguro."*

No SGSA, as tabelas foram modeladas para armazenar e organizar informações escolares de maneira eficiente. Este capítulo apresenta a estrutura de cada tabela, seus campos, tipos de dados e restrições, garantindo **consistência e integridade dos dados**.

------

## 📌 1. Estrutura Geral das Tabelas

O banco de dados do SGSA é composto por diversas tabelas interconectadas, cada uma com uma função específica. Abaixo, temos um resumo das principais tabelas e seus objetivos:

| Tabela                 | Objetivo                                            |
| ---------------------- | --------------------------------------------------- |
| `Turmas`               | Armazena informações sobre as turmas escolares.     |
| `Alunos`               | Contém os dados dos alunos matriculados.            |
| `Professores`          | Registra informações sobre os professores.          |
| `Disciplinas`          | Lista as disciplinas ministradas na escola.         |
| `Turmas_Disciplinas`   | Relaciona as disciplinas às turmas.                 |
| `Registro_Chamada`     | Armazena registros de presença dos alunos.          |
| `Registro_Ocorrencias` | Guarda informações sobre ocorrências disciplinares. |

Cada tabela contém campos específicos, chaves primárias e, quando necessário, chaves estrangeiras para garantir os relacionamentos entre os dados.

------

## 📌 2. Estrutura Detalhada das Tabelas

A seguir, apresentamos a definição detalhada de cada tabela no SGSA, incluindo os principais campos e suas restrições.

### 🔹 **Tabela `Turmas`**

```sql
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    turno ENUM('Matutino', 'Vespertino', 'Noturno') NOT NULL
);
```

✔ **Armazena informações sobre cada turma, como nome e turno.**

------

### 🔹 **Tabela `Alunos`**

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    turma_id INT NOT NULL,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ON DELETE CASCADE
);
```

✔ **Registra os alunos e os vincula a uma turma.**

------

### 🔹 **Tabela `Professores`**

```sql
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
```

✔ **Armazena informações sobre os professores.**

------

### 🔹 **Tabela `Disciplinas`**

```sql
CREATE TABLE Disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES Professores(id_professor) ON DELETE SET NULL
);
```

✔ **Lista as disciplinas e permite vinculação com um professor.**

------

### 🔹 **Tabela Intermediária `Turmas_Disciplinas`**

```sql
CREATE TABLE Turmas_Disciplinas (
    turma_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    PRIMARY KEY (turma_id, disciplina_id),
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ON DELETE CASCADE,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE CASCADE
);
```

✔ **Relaciona as disciplinas com as turmas, criando um vínculo N:N.**

------

### 🔹 **Tabela `Registro_Chamada`**

```sql
CREATE TABLE Registro_Chamada (
    id_chamada INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    data_aula DATE NOT NULL,
    presenca ENUM('Presente', 'Ausente', 'Justificado') NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno) ON DELETE CASCADE,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE CASCADE
);
```

✔ **Registra a presença dos alunos nas aulas.**

------

### 🔹 **Tabela `Registro_Ocorrencias`**

```sql
CREATE TABLE Registro_Ocorrencias (
    id_ocorrencia INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    data_ocorrencia DATE NOT NULL,
    tipo_ocorrencia VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno) ON DELETE CASCADE,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE CASCADE
);
```

✔ **Registra ocorrências disciplinares dos alunos.**

------

## 📌 3. Boas Práticas na Estruturação das Tabelas

Para garantir um banco de dados eficiente e organizado, algumas práticas foram seguidas na criação das tabelas:

✔ **Uso de `AUTO_INCREMENT`** para gerar identificadores únicos automaticamente.

✔ **Definição de `FOREIGN KEY`** para garantir integridade referencial. 

✔ **Uso de `ENUM`** para padronizar valores fixos, como status de presença. 

✔ **Uso de `ON DELETE CASCADE` e `ON DELETE SET NULL`** para controlar exclusões de registros interdependentes.

------

## 🏁 Conclusão

As tabelas do SGSA foram projetadas para suportar o funcionamento eficiente do sistema escolar. Cada tabela foi estruturada para **armazenar informações de maneira organizada, garantir integridade dos dados e facilitar consultas rápidas**.

📌 **A estruturação correta das tabelas é essencial para um banco de dados escalável e confiável. Pratique a criação dessas tabelas no MySQL e explore suas relações!**

> 🔜 No próximo módulo, exploraremos a **DML - Data Manipulation Language**, aprendendo a inserir, atualizar e excluir dados no banco SGSA! 🚀
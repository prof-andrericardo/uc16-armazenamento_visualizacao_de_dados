# 🏗️ Módulo 2: DDL - Data Definition Language

## 🚀 Capítulo 3 - Prática: Criando o Banco de Dados do SGSA

> 💡 *"Um sistema bem projetado começa com um banco de dados bem estruturado. A prática da modelagem e implementação de um banco de dados é essencial para garantir eficiência e integridade na manipulação dos dados."*

Agora que compreendemos os fundamentos da DDL e a definição de relacionamentos entre tabelas, é hora de colocar esse conhecimento em prática! Neste capítulo, vamos **criar o banco de dados SGSA** e implementar todas as suas tabelas, constraints e relacionamentos.

------

## 📌 1. Criando o Banco de Dados SGSA

Antes de criarmos as tabelas, precisamos definir e configurar o banco de dados que armazenará todas as informações do sistema.

### 🎯 **Criando o Banco de Dados**

```sql
CREATE DATABASE IF NOT EXISTS SGSA;
```

✔️ O uso de `IF NOT EXISTS` impede erros caso o banco de dados já exista.

Para utilizar esse banco, executamos:

```sql
USE SGSA;
```

Este comando define o banco SGSA como o atual, permitindo que os comandos seguintes sejam executados dentro dele.

------

## 📌 2. Criando as Tabelas

Vamos criar todas as tabelas principais do SGSA, garantindo que cada uma esteja corretamente estruturada.

### 🏫 **Tabela `Turmas`**

```sql
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    turno ENUM('Matutino', 'Vespertino', 'Noturno') NOT NULL
);
```

✔️ Definimos `id_turma` como chave primária. ✔️ `turno` usa `ENUM` para garantir que apenas valores válidos sejam inseridos.

------

### 🎓 **Tabela `Alunos`**

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    turma_id INT NOT NULL,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ON DELETE CASCADE
);
```

✔️ `FOREIGN KEY` vincula alunos a turmas. ✔️ `ON DELETE CASCADE` garante que se uma turma for excluída, seus alunos também serão.

------

### 🧑‍🏫 **Tabela `Professores`**

```sql
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
```

✔️ `email` é `UNIQUE`, impedindo duplicidades.

------

### 📚 **Tabela `Disciplinas`**

```sql
CREATE TABLE Disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES Professores(id_professor) ON DELETE SET NULL
);
```

✔️ `ON DELETE SET NULL` garante que, se um professor for removido, as disciplinas permanecem no sistema.

------

### 📅 **Tabela `Registro_Chamada`**

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

✔️ `ENUM` em `presenca` evita valores inválidos. ✔️ `ON DELETE CASCADE` assegura exclusão automática de chamadas ao remover alunos ou disciplinas.

------

### 🚨 **Tabela `Registro_Ocorrencias`**

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

✔️ `descricao` usa `TEXT` para armazenar ocorrências detalhadas. ✔️ `ON DELETE CASCADE` garante remoção consistente.

------

### 📝 **Tabela `Lembrete_Licao`**

```sql
CREATE TABLE Lembrete_Licao (
    id_licao INT AUTO_INCREMENT PRIMARY KEY,
    disciplina_id INT NOT NULL,
    descricao TEXT NOT NULL,
    data_entrega DATE NOT NULL,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE CASCADE
);
```

✔️ `descricao` usa `TEXT` para armazenar detalhes das lições. ✔️ `ON DELETE CASCADE` remove lições ao excluir disciplinas.

------

## 📌 3. Garantindo a Integridade e Consistência dos Dados

### 🔹 **Boas Práticas**

- Sempre defina **chaves primárias** para garantir unicidade.
- Use **chaves estrangeiras** para manter integridade referencial.
- Utilize constraints como `NOT NULL`, `UNIQUE` e `ENUM` para evitar valores inconsistentes.
- Prefira `ON DELETE CASCADE` apenas quando a exclusão automática de registros for desejável.

### 🔹 **Executando e Testando a Estrutura**

Após criar todas as tabelas, podemos visualizar a estrutura com:

```sql
SHOW TABLES;
```

E para verificar detalhes das tabelas:

```sql
DESCRIBE Alunos;
```

------

## 🏁 Conclusão

Criamos com sucesso o **banco de dados SGSA**, garantindo que todas as tabelas estejam bem estruturadas e interligadas corretamente. Cada escolha de estrutura foi feita considerando **eficiência, integridade referencial e escalabilidade**.

> 🔜 No próximo capítulo, abordaremos **operações de manipulação de dados (DML)**, incluindo inserção, atualização e exclusão de registros. 🚀

📌 **Teste cada comando no MySQL Workbench para consolidar seu aprendizado!**
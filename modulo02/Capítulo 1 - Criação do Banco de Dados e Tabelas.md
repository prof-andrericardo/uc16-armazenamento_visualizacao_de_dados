# 📌 **Módulo 2: DDL - Data Definition Language**

### 🏗️ **Capítulo 1 - Criação do Banco de Dados e Tabelas**

> 🧠 *"A base de qualquer sistema bem estruturado começa com um banco de dados bem projetado. Assim como um edifício precisa de alicerces sólidos, um banco de dados precisa de tabelas bem definidas."*

No desenvolvimento do **SGSA - Sistema de Gerenciamento de Sala de Aula**, a estruturação correta do banco de dados é fundamental para garantir **eficiência, integridade e escalabilidade**. Neste capítulo, vamos explorar **como criar o banco de dados e suas tabelas**, abordando boas práticas e exemplos detalhados.

------

## 🎯 **1. Introdução ao DDL - Data Definition Language**

A **DDL (Data Definition Language)** é um subconjunto da linguagem SQL responsável por definir a estrutura do banco de dados. Com ela, podemos:

✅ Criar e excluir bancos de dados.

✅ Criar, modificar e excluir tabelas.

✅ Definir **chaves primárias**, **chaves estrangeiras** e **restrições** (**constraints**).

As principais instruções **DDL** são:

| Comando           | Descrição                                     |
| ----------------- | --------------------------------------------- |
| `CREATE DATABASE` | Cria um banco de dados.                       |
| `DROP DATABASE`   | Exclui um banco de dados.                     |
| `CREATE TABLE`    | Cria uma nova tabela.                         |
| `ALTER TABLE`     | Modifica a estrutura de uma tabela existente. |
| `DROP TABLE`      | Exclui uma tabela do banco de dados.          |
| `TRUNCATE`        | Remove todos os registros da tabela           |

Agora, vamos **criar e estruturar o banco de dados do SGSA**! 🚀

------

## 🏛️ **2. Criando o Banco de Dados SGSA**

Antes de criarmos as tabelas, precisamos criar o banco de dados. No MySQL, utilizamos o comando:

```sql
CREATE DATABASE SGSA;
```

🔹 Esse comando cria um banco de dados chamado **SGSA**. Mas, antes de executar, precisamos verificar se ele já existe para evitar erros:

```sql
CREATE DATABASE IF NOT EXISTS SGSA;
```

> ✅ *Boa prática:* Sempre utilize `IF NOT EXISTS` para evitar erros ao criar bancos de dados que já existem.

Para utilizar esse banco, devemos executar:

```sql
USE SGSA;
```

Agora, estamos prontos para definir as tabelas do sistema! 🎯

------

## 📌 **3. Criando as Tabelas do SGSA**

### 🏫 **3.1 Tabela `Alunos`**

A tabela `Alunos` armazena os dados essenciais dos alunos matriculados.

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    turma_id INT NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15),
    CONSTRAINT fk_turma FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ON DELETE CASCADE
);
```

**📌 Explicação:**
 ✔️ `id_aluno`: Identificador único do aluno (chave primária, auto incremento).
 ✔️ `nome`: Nome completo do aluno (**VARCHAR** com tamanho **100**).
 ✔️ `matricula`: Código único do aluno (**UNIQUE**, garantindo que não haja duplicações).
 ✔️ `turma_id`: Referência à turma do aluno (**FOREIGN KEY** ligando a tabela `Turmas`).
 ✔️ `data_nascimento`: Data de nascimento (**DATE**).
 ✔️ `email`: E-mail único (**UNIQUE** para evitar duplicatas).
 ✔️ `telefone`: Campo opcional para número de contato.
 ✔️ `ON DELETE CASCADE`: Se a turma for excluída, os alunos associados também serão excluídos.

------

### 🎓 **3.2 Tabela `Professores`**

Armazena informações sobre os professores.

```sql
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    disciplina_id INT NOT NULL,
    telefone VARCHAR(15),
    CONSTRAINT fk_disciplina FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE SET NULL
);
```

**📌 Explicação:**
 ✔️ `email`: **Obrigatório e único** para identificação do professor.
 ✔️ `disciplina_id`: **Chave estrangeira** para a disciplina ministrada.
 ✔️ `ON DELETE SET NULL`: Se uma disciplina for excluída, a referência no professor será removida, mas ele permanecerá no sistema.

------

### 🏫 **3.3 Tabela `Turmas`**

As turmas agrupam os alunos e têm informações específicas.

```sql
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    turno ENUM('Matutino', 'Vespertino', 'Noturno') NOT NULL
);
```

**📌 Explicação:**
 ✔️ `turno`: Usa **ENUM**, garantindo que só valores válidos sejam inseridos.

------

### 📚 **3.4 Tabela `Disciplinas`**

```sql
CREATE TABLE Disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL
);
```

------

### 📅 **3.5 Tabela `Registro_Chamada`**

Registra a presença dos alunos.

```sql
CREATE TABLE Registro_Chamada (
    id_chamada INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    data_aula DATE NOT NULL,
    presenca ENUM('Presente', 'Ausente', 'Justificado') NOT NULL,
    CONSTRAINT fk_chamada_aluno FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno) ON DELETE CASCADE,
    CONSTRAINT fk_chamada_disciplina FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE CASCADE
);
```

**📌 Explicação:**
 ✔️ `presenca`: Campo **ENUM** para evitar valores inválidos.
 ✔️ **`ON DELETE CASCADE`**: Se um aluno ou disciplina for removido, o registro da chamada também será.

------

### 🚨 **3.6 Tabela `Registro_Ocorrencias`**

```sql
CREATE TABLE Registro_Ocorrencias (
    id_ocorrencia INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    data_ocorrencia DATE NOT NULL,
    tipo_ocorrencia VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    CONSTRAINT fk_ocorrencia_aluno FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno) ON DELETE CASCADE,
    CONSTRAINT fk_ocorrencia_disciplina FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE CASCADE
);
```

------

### 📝 **3.7 Tabela `Lembrete_Licao`**

```sql
CREATE TABLE Lembrete_Licao (
```

-----

## 🗑️ **4. O Comando `TRUNCATE`: Limpando Dados de uma Tabela**

O comando **`TRUNCATE TABLE`** é utilizado para **remover todos os registros de uma tabela rapidamente**, sem apagar sua estrutura. Ele é mais eficiente que um `DELETE` sem cláusula `WHERE`, pois **não gera logs individuais de exclusão** e **não aciona triggers**.

### 🔍 **Sintaxe do `TRUNCATE`**

```sql
TRUNCATE TABLE nome_da_tabela;
```

✔️ Remove todos os registros da tabela.

✔️ Mantém a estrutura da tabela intacta.

✔️ **Reinicia o contador AUTO_INCREMENT** (diferente de `DELETE`).

------

### 🚀 **4.1 Exemplo Prático: Limpando a Tabela `Registro_Chamada`**

Imagine que precisamos **resetar os registros de chamada do SGSA**, mas mantendo a tabela para novos registros. Podemos usar:

```sql
TRUNCATE TABLE Registro_Chamada;
```

> 🛑 **Cuidado!** Esse comando remove todos os dados **definitivamente**. Diferente de `DELETE`, ele **não pode ser revertido com `ROLLBACK`**.

------

### 🔄 **4.2 Diferença entre `DELETE` e `TRUNCATE`**

| Comando                             | O que faz?                              | Mantém estrutura? | Reinicia `AUTO_INCREMENT`? | Pode ser revertido (`ROLLBACK`)?   |
| ----------------------------------- | --------------------------------------- | ----------------- | -------------------------- | ---------------------------------- |
| `DELETE FROM tabela`                | Remove registros **específicos**        | ✅ Sim             | ❌ Não                      | ✅ Sim (se dentro de uma transação) |
| `DELETE FROM tabela WHERE condição` | Remove registros que atendem a condição | ✅ Sim             | ❌ Não                      | ✅ Sim                              |
| `TRUNCATE TABLE tabela`             | Remove **todos** os registros da tabela | ✅ Sim             | ✅ Sim                      | ❌ Não                              |

> 🔹 *Use `TRUNCATE` quando precisar limpar rapidamente a tabela inteira, sem necessidade de reverter.*
> 🔹 *Use `DELETE` quando quiser apagar registros específicos e manter o histórico das operações no log de transações.*

------

## 🏁 **Conclusão Geral do Capítulo 1**

> 🔥 *"Um banco de dados bem estruturado é a espinha dorsal de qualquer sistema confiável. Ao definir tabelas corretamente, garantimos não apenas a organização dos dados, mas também sua integridade e desempenho a longo prazo."*

Neste capítulo, exploramos **a criação do banco de dados SGSA**, desde a estruturação inicial até a definição detalhada de suas tabelas e relacionamentos.

✅ Aprendemos a **criar o banco de dados** utilizando `CREATE DATABASE`.

✅ Estabelecemos as **principais tabelas do sistema**, incluindo `Alunos`, `Professores`, `Turmas`, `Disciplinas`, `Registro_Chamada`, `Registro_Ocorrencias` e `Lembrete_Licao`.

✅ Definimos **chaves primárias e estrangeiras**, garantindo a integridade referencial e um banco de dados bem normalizado.

✅ Aplicamos **boas práticas** na escolha de tipos de dados, constraints e regras de exclusão (`ON DELETE CASCADE` e `ON DELETE SET NULL`).

✅ Exploramos os comandos **`DELETE` e `TRUNCATE`**, compreendendo suas diferenças e melhores momentos para aplicação.

### 🚀 **O Que Vem a Seguir?**

Agora que temos a **estrutura inicial** do banco de dados, o próximo passo será **modificar tabelas e aplicar boas práticas de modelagem** usando o comando `ALTER TABLE`. Isso nos permitirá **adicionar, remover ou modificar colunas e constraints** conforme necessário, garantindo que o SGSA continue evoluindo de forma estruturada.

> **📌 Dica:** Antes de avançar, teste os comandos apresentados, analise os relacionamentos e pense sobre **como cada tabela se conecta ao propósito do SGSA**. Uma base sólida é essencial para um sistema eficiente!

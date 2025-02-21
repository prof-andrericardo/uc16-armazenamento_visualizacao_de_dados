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

✔️ **Garante unicidade** dentro da tabela.
✔️ **Impede valores nulos**.
✔️ **Otimiza buscas e organização dos dados**.

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

✔️ **Garante que cada aluno esteja vinculado a uma turma existente**.
✔️ **Impede referências inválidas**.
✔️ **Facilita consultas e cruzamento de informações**.

------

## 📌 2. Estrutura dos Relacionamentos no SGSA

Os relacionamentos do SGSA seguem um modelo claro de **conexão entre tabelas** para garantir **integridade e eficiência**. A tabela a seguir resume os principais relacionamentos:

| Tabela Principal | Tabela Relacionada | Tipo de Relacionamento | Chave Estrangeira |
|-----------------|-----------------|-------------------|----------------|
| `Turmas`       | `Alunos`        | 1:N               | `turma_id`    |
| `Professores`  | `Disciplinas`   | 1:N               | `professor_id` |
| `Disciplinas`  | `Turmas`        | N:M               | `Turmas_Disciplinas` (tabela intermediária) |
| `Alunos`       | `Registro_Chamada` | 1:N            | `aluno_id` |
| `Alunos`       | `Registro_Ocorrencias` | 1:N        | `aluno_id` |

Esses relacionamentos asseguram que **cada entidade do SGSA esteja corretamente vinculada**, permitindo consultas eficientes e prevenindo inconsistências nos dados.

------

## 📌 3. Criando Tabelas Intermediárias para Relacionamentos N:N

Em alguns casos, um relacionamento **muitos-para-muitos (N:N)** exige uma **tabela intermediária**. No SGSA, a relação entre **Turmas e Disciplinas** é um exemplo.

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
✔️ Permite que uma **turma tenha várias disciplinas e vice-versa**.  
✔️ Mantém a integridade referencial por meio de **chaves estrangeiras**.  
✔️ Facilita consultas e controle de carga horária dos professores.  

------

## 📌 4. Integridade Referencial e Constraints

As constraints garantem a consistência dos dados. No SGSA, utilizamos:

✔️ **`ON DELETE CASCADE`** → Exclui registros relacionados automaticamente.
✔️ **`ON DELETE SET NULL`** → Define valores como `NULL` quando um registro relacionado é excluído.
✔️ **`ON DELETE RESTRICT`** → Impede a exclusão de registros referenciados.

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

Além disso, o comando `ALTER TABLE` permite modificar tabelas já existentes, tornando o banco de dados **flexível e adaptável a mudanças futuras**.

📌 **Os relacionamentos do SGSA foram planejados para garantir coerência e eficiência na gestão de dados escolares. Para um resumo detalhado das tabelas, consulte o documento `tabelasSGSA.md`!**

> 🔜 No próximo capítulo, exploraremos **boas práticas e otimização na definição de tabelas**! 🚀

📌 **Pratique os exemplos no MySQL e analise como os relacionamentos afetam a integridade dos dados!**

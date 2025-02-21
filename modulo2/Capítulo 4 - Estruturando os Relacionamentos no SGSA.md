# 🏗️ Módulo 2: DDL - Data Definition Language

## 🔗 Capítulo 4 - Estruturando os Relacionamentos no SGSA

> 🧠 *"Relacionamentos bem definidos em um banco de dados garantem integridade, segurança e eficiência na recuperação de informações."*

No SGSA, os relacionamentos entre tabelas desempenham um papel fundamental na organização dos dados escolares. Este capítulo apresenta de maneira detalhada **como os relacionamentos entre as tabelas foram estruturados** e como isso impacta o funcionamento do sistema.

------

## 📌 1. Relações Fundamentais no SGSA

No banco de dados do SGSA, cada entidade se relaciona com outras de forma bem definida para garantir **integridade referencial e eficiência no acesso aos dados**. A seguir, temos um resumo dos relacionamentos principais:

| Tabela Principal | Tabela Relacionada     | Tipo de Relacionamento | Chave Estrangeira                           |
| ---------------- | ---------------------- | ---------------------- | ------------------------------------------- |
| `Turmas`         | `Alunos`               | 1:N                    | `turma_id`                                  |
| `Professores`    | `Disciplinas`          | 1:N                    | `professor_id`                              |
| `Disciplinas`    | `Turmas`               | N:M                    | `Turmas_Disciplinas` (tabela intermediária) |
| `Alunos`         | `Registro_Chamada`     | 1:N                    | `aluno_id`                                  |
| `Alunos`         | `Registro_Ocorrencias` | 1:N                    | `aluno_id`                                  |

Esses relacionamentos garantem que os dados se conectem corretamente, evitando inconsistências.

------

## 📌 2. Implementação Prática dos Relacionamentos

Para que os relacionamentos funcionem corretamente, utilizamos **chaves primárias e estrangeiras**, além de **constraints** como `ON DELETE CASCADE`, `ON DELETE SET NULL` e `ON DELETE RESTRICT`.

### 🔹 **1:1 - Relacionamento Um para Um**

Em alguns casos, uma entidade pode estar relacionada exclusivamente a outra. No SGSA, isso pode ser visto no vínculo entre **Coordenadores e Usuários**.

```sql
CREATE TABLE Coordenadores (
    id_coordenador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    usuario_id INT UNIQUE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id_usuario)
);
```

✔ **Garante que cada coordenador tenha um único usuário associado.**

------

### 🔹 **1:N - Relacionamento Um para Muitos**

O relacionamento **um para muitos** ocorre quando um registro em uma tabela pode estar associado a vários registros em outra. Exemplo: **uma turma pode ter vários alunos, mas cada aluno pertence a apenas uma turma.**

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    turma_id INT NOT NULL,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ON DELETE CASCADE
);
```

✔ **Se uma turma for excluída, os alunos também são removidos automaticamente.**

------

### 🔹 **N:M - Relacionamento Muitos para Muitos**

Quando várias entidades podem estar relacionadas entre si, criamos uma **tabela intermediária**. Exemplo: **uma disciplina pode ser ministrada em várias turmas, e uma turma pode ter várias disciplinas.**

```sql
CREATE TABLE Turmas_Disciplinas (
    turma_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    PRIMARY KEY (turma_id, disciplina_id),
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ON DELETE CASCADE,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE CASCADE
);
```

✔ **Permite múltiplas relações entre turmas e disciplinas de forma eficiente.**

------

## 📌 3. Garantindo Integridade Referencial

As **constraints** são fundamentais para garantir que os dados do SGSA sejam consistentes e evitem registros órfãos.

### 🔹 **Uso de `ON DELETE CASCADE`**

- Remove automaticamente registros vinculados quando o registro principal é apagado.
- Exemplo: Ao excluir uma turma, todos os alunos relacionados também serão removidos.

### 🔹 **Uso de `ON DELETE SET NULL`**

- Define como `NULL` uma chave estrangeira quando o registro referenciado é excluído.
- Exemplo: Se uma disciplina for removida, o campo `disciplina_id` no professor pode ser definido como `NULL` para preservar o histórico.

```sql
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    disciplina_id INT,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE SET NULL
);
```

✔ **Evita que professores sejam excluídos ao remover uma disciplina.**

### 🔹 **Uso de `ON DELETE RESTRICT`**

- Impede a exclusão de registros que possuam dependências.
- Exemplo: Um aluno não pode ser excluído se houver registros na tabela `Registro_Chamada` vinculados a ele.

```sql
CREATE TABLE Registro_Chamada (
    id_chamada INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno) ON DELETE RESTRICT
);
```

✔ **Evita perda de registros históricos de presença.**

------

## 🏁 Conclusão

Os relacionamentos no banco de dados do SGSA foram cuidadosamente planejados para garantir **consistência, flexibilidade e eficiência**. A definição correta das chaves estrangeiras e constraints permite **consultas rápidas e integridade dos dados**.

📌 **Os relacionamentos do SGSA foram estruturados para atender às necessidades do sistema escolar. Com essa modelagem, garantimos um banco de dados confiável e bem estruturado.**

> 🔜 No próximo módulo, exploraremos **DML - Data Manipulation Language**, onde aprenderemos como manipular os dados inseridos nessas tabelas! 🚀

📌 **Teste os exemplos no MySQL para visualizar como os relacionamentos afetam os dados no SGSA!**
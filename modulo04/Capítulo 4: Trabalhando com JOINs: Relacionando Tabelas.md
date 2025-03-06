# 🏆 Módulo 4: DQL - Data Query Language

## 📖 Capítulo 4: Trabalhando com `JOINs`: Relacionando Tabelas

> *“Os dados são valiosos, mas sua verdadeira riqueza está na conexão entre eles.”* - Anônimo

### 📌 4.1 Introdução aos `JOINs`

Em bancos de dados relacionais, as informações são distribuídas em **múltiplas tabelas** para garantir a **organização, integridade e eficiência** no armazenamento de dados. Entretanto, em muitas situações, precisamos consultar dados que estão espalhados entre essas tabelas.

É aí que entram os **`JOINs`**, operadores SQL que permitem combinar registros de diferentes tabelas **baseando-se em uma relação comum** entre elas.

No contexto do **SGSA (Sistema de Gerenciamento de Sala de Aula)**, o uso de `JOINs` é essencial para consultas como:

✅ Listar os alunos junto com suas respectivas turmas.
 ✅ Exibir todas as chamadas realizadas, incluindo os detalhes dos alunos e disciplinas.
 ✅ Gerar relatórios que combinem informações de diversas tabelas.

Este capítulo abordará os principais tipos de `JOINs`, explicando como e quando utilizá-los, sempre com exemplos aplicados ao **SGSA**.

------

### 📌 4.2 Estrutura das Tabelas Utilizadas

Antes de iniciarmos as consultas, vejamos a estrutura das tabelas envolvidas no **SGSA**:

#### **📍 Tabela `Alunos`**

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

#### **📍 Tabela `Turmas`**

```sql
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    turno ENUM('Matutino', 'Vespertino', 'Noturno') NOT NULL
);
```

#### **📍 Tabela `Disciplinas`**

```sql
CREATE TABLE Disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES Professores(id_professor)
);
```

#### **📍 Tabela `Professores`**

```sql
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);
```

#### **📍 Tabela `Registro_de_Chamada`**

```sql
CREATE TABLE Registro_de_Chamada (
    id_chamada INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    disciplina_id INT,
    data_aula DATE NOT NULL,
    presenca ENUM('Presente', 'Ausente', 'Justificado') NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina)
);
```

Com essas tabelas, podemos utilizar os `JOINs` para criar consultas que combinem dados de diferentes tabelas.

------

### 📌 4.3 Tipos de `JOINs` e Como Utilizá-los

#### **4.3.1 `INNER JOIN` (Junção Interna)**

O `INNER JOIN` retorna apenas os registros que possuem correspondência nas duas tabelas envolvidas na junção.

#### **📍 Exemplo 1: Listando Alunos e suas Turmas**

```sql
SELECT Alunos.nome, Alunos.matricula, Turmas.nome_turma
FROM Alunos
INNER JOIN Turmas ON Alunos.turma_id = Turmas.id_turma;
```

✅ **Saída esperada:**

| nome          | matricula | nome_turma |
| ------------- | --------- | ---------- |
| Ana Souza     | 2023001   | 3A         |
| João Oliveira | 2023002   | 2B         |
| Pedro Martins | 2023003   | 3A         |

📌 **Explicação:**

- A junção ocorre pelo campo `turma_id`, que está presente tanto em `Alunos` quanto em `Turmas`.
- Apenas os alunos que possuem uma turma cadastrada aparecerão no resultado.

------

#### **4.3.2 `LEFT JOIN` (Junção à Esquerda)**

O `LEFT JOIN` retorna **todos os registros da tabela da esquerda** e os correspondentes da tabela da direita. Se não houver correspondência, os valores da tabela da direita aparecerão como `NULL`.

#### **📍 Exemplo 2: Listando Todas as Turmas e Seus Alunos**

```sql
SELECT Turmas.nome_turma, Alunos.nome
FROM Turmas
LEFT JOIN Alunos ON Turmas.id_turma = Alunos.turma_id;
```

✅ **Saída esperada:**

| nome_turma | nome          |
| ---------- | ------------- |
| 3A         | Ana Souza     |
| 2B         | João Oliveira |
| 3A         | Pedro Martins |
| 1C         | NULL          |

📌 **Explicação:**

- Todas as turmas aparecem na listagem, mesmo aquelas que **ainda não possuem alunos matriculados**.
- Quando uma turma não tem alunos, o valor correspondente na coluna `nome` será `NULL`.

------

#### **4.3.3 `RIGHT JOIN` (Junção à Direita)**

O `RIGHT JOIN` é semelhante ao `LEFT JOIN`, mas retorna **todos os registros da tabela da direita**, mostrando `NULL` para registros sem correspondência na tabela da esquerda.

#### **📍 Exemplo 3: Listando Disciplinas e Seus Professores**

```sql
SELECT Disciplinas.nome_disciplina, Professores.nome
FROM Disciplinas
RIGHT JOIN Professores ON Disciplinas.professor_id = Professores.id_professor;
```

✅ **Saída esperada:**

| nome_disciplina | nome         |
| --------------- | ------------ |
| Matemática      | Prof. Carlos |
| História        | Prof. Maria  |
| NULL            | Prof. José   |

📌 **Explicação:**

- Todos os professores aparecem na lista, mesmo aqueles que **ainda não possuem disciplinas atribuídas**.

------

### **📌 Conclusão**

Neste capítulo, aprendemos: ✅ A importância dos `JOINs` para relacionar tabelas em um banco de dados.
 ✅ Como utilizar `INNER JOIN`, `LEFT JOIN` e `RIGHT JOIN` para combinar dados.
 ✅ Exemplos práticos aplicados ao **SGSA**, simulando consultas do dia a dia.

No próximo capítulo, exploraremos **subconsultas (`Subqueries`) e auto-relacionamentos**, permitindo consultas ainda mais sofisticadas!

🚀 *Pratique criando consultas com diferentes `JOINs` e veja como os dados se relacionam no MySQL!*
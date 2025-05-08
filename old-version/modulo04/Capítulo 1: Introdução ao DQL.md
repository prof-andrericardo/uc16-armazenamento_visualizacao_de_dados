# 🏆 Módulo 4: DQL - Data Query Language

## 📖 Capítulo 1: Introdução ao DQL

> "Os dados contam histórias; cabe a nós aprender a interpretá-las." - Anônimo

### 📌 1.1 O que é DQL e sua Importância?

A **Linguagem de Consulta de Dados (DQL - Data Query Language)** é um subconjunto do SQL usado para recuperar informações de bancos de dados relacionais. Diferente de outras partes do SQL, como DML (Data Manipulation Language) e DDL (Data Definition Language), o **DQL não altera os dados nem a estrutura do banco**, mas permite que os usuários **consultem, filtrem, organizem e analisem informações de maneira eficiente**.

No contexto do **SGSA (Sistema de Gerenciamento de Sala de Aula)**, o **DQL** será essencial para gerar relatórios de chamadas, ocorrências e desempenho acadêmico. Com ele, os professores e coordenadores poderão:

✅ Consultar a lista de alunos de uma turma; ✅ Identificar quais alunos faltaram a uma aula específica; ✅ Listar alunos com maior número de ocorrências disciplinares; ✅ Obter um relatório de notas e desempenho escolar.

### 📌 1.2 Estrutura do Comando `SELECT`

O comando **`SELECT`** é a principal instrução do DQL e é utilizado para recuperar informações armazenadas em tabelas.

#### **📌 Sintaxe Básica:**

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela;
```

📌 **Explicação:**

- `SELECT`: Indica que estamos fazendo uma **consulta** ao banco.
- `coluna1, coluna2`: Define quais colunas devem ser exibidas.
- `FROM nome_da_tabela`: Especifica **de qual tabela** os dados serão extraídos.

#### **📌 Exemplo 1: Listando todos os alunos cadastrados**

Vamos supor que temos a seguinte tabela `Alunos` no SGSA:

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

Agora, para visualizar **todos os alunos cadastrados**, utilizamos:

```sql
SELECT * FROM Alunos;
```

**🔎 Explicação:**

- O `*` indica que **todas as colunas** da tabela `Alunos` serão exibidas.
- O comando retorna a **lista completa** de alunos registrados.

✅ **Saída esperada:**

| id_aluno | nome          | matricula | turma_id |
| -------- | ------------- | --------- | -------- |
| 1        | Ana Souza     | 2023001   | 2        |
| 2        | João Oliveira | 2023002   | 1        |
| 3        | Pedro Martins | 2023003   | 2        |

------

### 📌 1.3 Selecionando Colunas Específicas

Em muitos casos, não precisamos de **todas as colunas** da tabela, mas apenas de algumas informações específicas. Para isso, basta **substituir o `\*` pelos nomes das colunas desejadas**.

#### **📌 Exemplo 2: Exibindo apenas os nomes e matrículas dos alunos**

```sql
SELECT nome, matricula FROM Alunos;
```

✅ **Saída esperada:**

| nome          | matricula |
| ------------- | --------- |
| Ana Souza     | 2023001   |
| João Oliveira | 2023002   |
| Pedro Martins | 2023003   |

🔹 Esse tipo de consulta **reduz a carga do banco de dados** e melhora o desempenho, já que evita a exibição de colunas desnecessárias.

------

### 📌 1.4 Aplicando Filtros com `WHERE`

O **`WHERE`** permite filtrar os dados com base em condições específicas.

#### **📌 Exemplo 3: Listar apenas os alunos da turma 2**

```sql
SELECT nome, matricula FROM Alunos WHERE turma_id = 2;
```

✅ **Saída esperada:**

| nome          | matricula |
| ------------- | --------- |
| Ana Souza     | 2023001   |
| Pedro Martins | 2023003   |

📌 **Explicação:**

- `WHERE turma_id = 2`: Filtra os registros e **exibe apenas os alunos cuja turma seja a número 2**.

#### **📌 Exemplo 4: Filtrar alunos cujo nome comece com 'A'**

Para isso, usamos **`LIKE`**:

```sql
SELECT * FROM Alunos WHERE nome LIKE 'A%';
```

✅ **Saída esperada:**

| id_aluno | nome      | matricula | turma_id |
| -------- | --------- | --------- | -------- |
| 1        | Ana Souza | 2023001   | 2        |

📌 **Explicação:**

- `LIKE 'A%'`: Retorna **todos os alunos cujos nomes começam com 'A'**.
- `%` é um **curinga** que representa **qualquer sequência de caracteres**.

------

### 📌 1.5 Ordenando Resultados com `ORDER BY`

O **`ORDER BY`** permite **classificar os resultados** da consulta.

#### **📌 Exemplo 5: Ordenando alunos por nome (A-Z)**

```sql
SELECT nome, matricula FROM Alunos ORDER BY nome ASC;
```

✅ **Saída esperada:**

| nome          | matricula |
| ------------- | --------- |
| Ana Souza     | 2023001   |
| João Oliveira | 2023002   |
| Pedro Martins | 2023003   |

📌 **Explicação:**

- `ASC`: Ordena de **forma crescente (A-Z)**.
- Se quisermos **ordem decrescente (Z-A)**, usamos `DESC`.

#### **📌 Exemplo 6: Ordenar alunos da turma 2 por matrícula (Decrescente)**

```sql
SELECT nome, matricula FROM Alunos WHERE turma_id = 2 ORDER BY matricula DESC;
```

✅ **Saída esperada:**

| nome          | matricula |
| ------------- | --------- |
| Pedro Martins | 2023003   |
| Ana Souza     | 2023001   |

📌 **Explicação:**

- Primeiro, **filtramos os alunos da turma 2**.
- Depois, ordenamos pela matrícula de **forma decrescente**.

------

## **📌 Conclusão**

Neste capítulo, aprendemos: ✅ O que é DQL e como ele é usado para consultar dados. ✅ Como utilizar `SELECT` para recuperar informações do SGSA. ✅ Como aplicar **filtros (`WHERE`) e ordenações (`ORDER BY`)**.

No próximo capítulo, veremos **funções agregadas e agrupamento de dados (`GROUP BY`, `HAVING`)**, essenciais para relatórios avançados!

🚀 *Continue explorando e testando suas consultas no MySQL!*
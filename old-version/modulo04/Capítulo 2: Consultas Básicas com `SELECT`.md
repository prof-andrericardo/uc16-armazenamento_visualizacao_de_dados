# 🏆 Módulo 4: DQL - Data Query Language

## 📖 Capítulo 2: Consultas Básicas com `SELECT`

> "A informação é poder. Saber como recuperá-la da maneira certa é essencial para transformar dados em conhecimento." - Anônimo

### 📌 2.1 Introdução às Consultas com `SELECT`

A **Linguagem de Consulta de Dados (DQL - Data Query Language)** permite a recuperação de informações armazenadas em um banco de dados. O comando mais importante dessa linguagem é o **`SELECT`**, que possibilita a extração de registros de tabelas relacionais.

No **SGSA (Sistema de Gerenciamento de Sala de Aula)**, o comando `SELECT` será usado para **visualizar alunos, professores, turmas, chamadas e ocorrências disciplinares**. Ao longo deste capítulo, aprenderemos a:

✅ Realizar consultas simples utilizando `SELECT`. ✅ Filtrar registros utilizando `WHERE`. ✅ Ordenar resultados com `ORDER BY`. ✅ Utilizar alias para melhorar a legibilidade das consultas. ✅ Aplicar operadores de comparação e lógicos.

Acompanhe os exemplos práticos a seguir e teste cada consulta no seu ambiente MySQL.

------

### 📌 2.2 Estrutura Básica do Comando `SELECT`

A estrutura padrão do comando `SELECT` é:

```sql
SELECT coluna1, coluna2, ... FROM nome_da_tabela;
```

📌 **Explicação:**

- `SELECT`: Indica que estamos realizando uma **consulta** ao banco de dados.
- `coluna1, coluna2, ...`: Especifica **quais colunas** queremos visualizar.
- `FROM nome_da_tabela`: Indica de **qual tabela** os dados serão extraídos.

#### **📍 Exemplo 1: Listando Todos os Alunos**

Vamos considerar a tabela `Alunos` do SGSA:

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

Para listar **todos os alunos cadastrados**, usamos:

```sql
SELECT * FROM Alunos;
```

✅ **Saída esperada:**

| id_aluno | nome          | matricula | turma_id |
| -------- | ------------- | --------- | -------- |
| 1        | Ana Souza     | 2023001   | 2        |
| 2        | João Oliveira | 2023002   | 1        |
| 3        | Pedro Martins | 2023003   | 2        |

------

### 📌 2.3 Selecionando Colunas Específicas

Em muitos casos, queremos visualizar apenas **algumas colunas** da tabela, evitando a exibição de dados desnecessários.

#### **📍 Exemplo 2: Exibindo Apenas Nome e Matrícula**

```sql
SELECT nome, matricula FROM Alunos;
```

✅ **Saída esperada:**

| nome          | matricula |
| ------------- | --------- |
| Ana Souza     | 2023001   |
| João Oliveira | 2023002   |
| Pedro Martins | 2023003   |

🔹 **Dica:** Essa abordagem melhora a performance, pois reduz a quantidade de dados retornados pelo banco.

------

### 📌 2.4 Utilizando Alias para Melhorar a Legibilidade (`AS`)

Alias (`AS`) são utilizados para dar **nomes temporários** a colunas e tabelas, tornando a saída da consulta mais compreensível.

#### **📍 Exemplo 3: Renomeando Colunas na Saída**

```sql
SELECT nome AS 'Nome do Aluno', matricula AS 'Número de Matrícula' FROM Alunos;
```

✅ **Saída esperada:**

| Nome do Aluno | Número de Matrícula |
| ------------- | ------------------- |
| Ana Souza     | 2023001             |
| João Oliveira | 2023002             |
| Pedro Martins | 2023003             |

📌 **Explicação:**

- `AS 'Nome do Aluno'`: Renomeia a coluna `nome` para uma descrição mais amigável.
- `AS 'Número de Matrícula'`: Torna o nome da coluna `matricula` mais descritivo.

------

### 📌 2.5 Filtrando Dados com `WHERE`

O operador `WHERE` permite aplicar **filtros** e retornar apenas registros que atendam a determinada condição.

#### **📍 Exemplo 4: Listando Alunos da Turma 2**

```sql
SELECT nome, matricula FROM Alunos WHERE turma_id = 2;
```

✅ **Saída esperada:**

| nome          | matricula |
| ------------- | --------- |
| Ana Souza     | 2023001   |
| Pedro Martins | 2023003   |

📌 **Explicação:**

- `WHERE turma_id = 2`: Retorna apenas os alunos **cuja turma seja a número 2**.

#### **📍 Exemplo 5: Filtrando Alunos pelo Nome (`LIKE`)**

Para encontrar **alunos cujo nome começa com 'A'**, utilizamos:

```sql
SELECT * FROM Alunos WHERE nome LIKE 'A%';
```

✅ **Saída esperada:**

| id_aluno | nome      | matricula | turma_id |
| -------- | --------- | --------- | -------- |
| 1        | Ana Souza | 2023001   | 2        |

📌 **Explicação:**

- `LIKE 'A%'`: Retorna **todos os alunos cujo nome começa com 'A'**.
- `%` representa **qualquer sequência de caracteres** após a letra 'A'.

------

### 📌 2.6 Ordenando Resultados com `ORDER BY`

O `ORDER BY` permite **classificar os registros** retornados por uma consulta.

#### **📍 Exemplo 6: Ordenando Alunos por Nome (A-Z)**

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
- Para **ordem decrescente (Z-A)**, usamos `DESC`.

------

## **📌 Conclusão**

Neste capítulo, aprendemos: ✅ Como utilizar `SELECT` para recuperar informações do SGSA. ✅ Como aplicar **filtros (`WHERE`) e ordenações (`ORDER BY`)**. ✅ Como utilizar alias para melhorar a legibilidade das consultas.

No próximo capítulo, exploraremos **funções agregadas e agrupamento de dados (`GROUP BY`, `HAVING`)**, essenciais para relatórios avançados!

🚀 *Pratique suas consultas no MySQL para reforçar o aprendizado!*
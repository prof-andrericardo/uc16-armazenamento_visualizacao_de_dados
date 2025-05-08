# 🏆 Módulo 4: DQL - Data Query Language

## 📖 Capítulo 3: Funções Agregadas e Agrupamento de Dados

> "Os dados sozinhos não têm significado; a verdadeira sabedoria vem da análise e interpretação das informações." - Anônimo

### 📌 3.1 Introdução às Funções Agregadas

No contexto de **bancos de dados relacionais**, as **funções agregadas** desempenham um papel essencial ao permitir a análise e resumo de grandes volumes de dados. Elas são usadas para **realizar cálculos em um conjunto de registros e retornar um único valor consolidado**.

As funções agregadas mais comuns incluem:

✅ `COUNT()` – Conta o número de registros. 

✅ `SUM()` – Retorna a soma de um conjunto de valores. 

✅ `AVG()` – Calcula a média de um conjunto de valores. 

✅ `MAX()` – Retorna o maior valor de uma coluna. 

✅ `MIN()` – Retorna o menor valor de uma coluna.

Essas funções são frequentemente utilizadas em conjunto com a cláusula **`GROUP BY`**, que permite agrupar registros por categorias específicas e realizar análises mais detalhadas sobre os dados armazenados.

No **SGSA (Sistema de Gerenciamento de Sala de Aula)**, essas funcionalidades são indispensáveis para:

- Obter estatísticas sobre a frequência dos alunos.
- Identificar quais alunos têm maior número de ocorrências disciplinares.
- Calcular médias de desempenho acadêmico.
- Analisar padrões de comportamento e desempenho ao longo do tempo.

------

### 📌 3.2 Utilização das Funções Agregadas

As funções agregadas são utilizadas dentro de uma **consulta SQL `SELECT`**, geralmente em conjunto com **agrupamentos (`GROUP BY`) ou filtros (`WHERE` e `HAVING`)**.

#### **📍 Exemplo 1: Contando o Número de Alunos**

A tabela `Alunos` contém informações sobre os estudantes cadastrados no sistema. Para contar **quantos alunos estão cadastrados**, utilizamos:

```sql
SELECT COUNT(*) AS total_alunos FROM Alunos;
```

✅ **Saída esperada:**

| total_alunos |
| ------------ |
| 350          |

📌 **Explicação:**

- `COUNT(*)` conta **todos os registros** da tabela `Alunos`.
- `AS total_alunos` renomeia a coluna para facilitar a leitura do resultado.

------

#### **📍 Exemplo 2: Obtendo a Média de Faltas por Disciplina**

Se quisermos calcular a **média de faltas por disciplina**, podemos utilizar a função `AVG()`:

```sql
SELECT disciplina_id, AVG(presencas) AS media_faltas
FROM Registro_de_Chamada
WHERE presenca = 'Ausente'
GROUP BY disciplina_id;
```

✅ **Saída esperada:**

| disciplina_id | media_faltas |
| ------------- | ------------ |
| 1             | 3.2          |
| 2             | 4.7          |
| 3             | 2.5          |

📌 **Explicação:**

- `AVG(presencas)`: Calcula a **média de faltas**.
- `GROUP BY disciplina_id`: Agrupa os registros por disciplina.
- `WHERE presenca = 'Ausente'`: Filtra apenas registros de faltas.

------

#### **📍 Exemplo 3: Identificando o Aluno com Mais Ocorrências**

Para descobrir **qual aluno tem o maior número de ocorrências disciplinares**, usamos `MAX()`:

```sql
SELECT aluno_id, MAX(qtd_ocorrencias) AS maior_qtd_ocorrencias
FROM (
    SELECT aluno_id, COUNT(*) AS qtd_ocorrencias
    FROM Registro_de_Ocorrencias
    GROUP BY aluno_id
) AS ocorrencias;
```

✅ **Saída esperada:**

| aluno_id | maior_qtd_ocorrencias |
| -------- | --------------------- |
| 25       | 8                     |

📌 **Explicação:**

- O **subselect** primeiro **conta** o número de ocorrências por aluno.
- Em seguida, `MAX()` identifica **o aluno com maior número de ocorrências**.

------

### 📌 3.3 Agrupamento de Dados com `GROUP BY`

A cláusula **`GROUP BY`** permite agrupar registros **com base em uma coluna específica**, o que possibilita a análise de tendências e padrões nos dados.

#### **📍 Exemplo 4: Contando Alunos por Turma**

```sql
SELECT turma_id, COUNT(*) AS total_alunos
FROM Alunos
GROUP BY turma_id;
```

✅ **Saída esperada:**

| turma_id | total_alunos |
| -------- | ------------ |
| 1        | 45           |
| 2        | 50           |
| 3        | 55           |

📌 **Explicação:**

- `COUNT(*)`: Conta o total de alunos em cada turma.
- `GROUP BY turma_id`: Agrupa os resultados por **turma**.

------

### 📌 3.4 Filtrando Agrupamentos com `HAVING`

A cláusula **`HAVING`** é usada para **filtrar os grupos criados pelo `GROUP BY`**, de forma semelhante ao `WHERE`, mas aplicada aos agrupamentos.

#### **📍 Exemplo 5: Encontrando Turmas com Mais de 50 Alunos**

```sql
SELECT turma_id, COUNT(*) AS total_alunos
FROM Alunos
GROUP BY turma_id
HAVING COUNT(*) > 50;
```

✅ **Saída esperada:**

| turma_id | total_alunos |
| -------- | ------------ |
| 3        | 55           |

📌 **Explicação:**

- `HAVING COUNT(*) > 50`: Filtra apenas as turmas com **mais de 50 alunos**.

------

## **📌 Conclusão**

Neste capítulo, aprendemos: 

✅ Como utilizar funções agregadas (`COUNT()`, `SUM()`, `AVG()`, `MAX()`, `MIN()`). 

✅ Como agrupar registros com `GROUP BY`. 

✅ Como filtrar agrupamentos utilizando `HAVING`.

Esses conceitos são fundamentais para **análises estatísticas em bancos de dados**, permitindo extrair insights valiosos para a gestão acadêmica.

No próximo capítulo, exploraremos **consultas avançadas com múltiplas tabelas usando `JOINs`**!

🚀 *Pratique suas consultas no MySQL e torne-se um especialista em análise de dados!*
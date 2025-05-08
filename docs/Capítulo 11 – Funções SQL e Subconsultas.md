# 📘 Capítulo 11 – Funções SQL e Subconsultas

> 📊 *“O valor de um dado está na resposta que ele pode nos dar.”*
>  — **IAra, a guardiã do SGSA**

------

## 🧭 Introdução Didática

Até aqui, você aprendeu a consultar, filtrar, organizar, proteger e manipular dados do SGSA. Agora chegou o momento de aprender a **analisar e transformar dados** por meio de **funções SQL** e **subconsultas**.

Neste capítulo, você aprenderá a:

- Utilizar **funções agregadoras**, matemáticas, de texto e de data;
- Criar **subconsultas** (consultas dentro de outras consultas);
- Gerar **relatórios estatísticos reais**, como:
  - total de alunos por turma;
  - média de presença;
  - ocorrências por aluno;
  - listagens dinâmicas com filtros calculados.

------

## 📂 Missão do Capítulo

🎯 **"Você agora é responsável por gerar relatórios estratégicos do SGSA. Sua missão é consultar, agrupar e analisar os dados para apoiar decisões escolares."**

------

## 📌 O que são Funções SQL?

📘 Funções SQL são comandos que **executam operações** em colunas de dados. Elas são usadas para **análises, cálculos e transformações**.

------

## 🎯 Funções de Agregação (Resumo de Dados)

| Função    | O que faz                       | Exemplo Prático                          |
| --------- | ------------------------------- | ---------------------------------------- |
| `COUNT()` | Conta quantos registros existem | Quantos alunos existem em cada turma     |
| `SUM()`   | Soma os valores numéricos       | Soma de valores (ex: notas, quantidades) |
| `AVG()`   | Calcula a média                 | Média de presenças ou notas              |
| `MAX()`   | Retorna o maior valor           | Última data de ocorrência, maior nota    |
| `MIN()`   | Retorna o menor valor           | Primeira aula do mês, menor nota         |

------

### 🧪 Exemplo 1 – Total de alunos por turma

```sql
SELECT id_turma, COUNT(*) AS total_alunos
FROM alunos
GROUP BY id_turma;
```

> 🎓 Explicação:
>
> - `COUNT(*)` conta todos os alunos;
> - `GROUP BY id_turma` agrupa por turma;
> - `AS total_alunos` renomeia a coluna para melhor leitura.

------

### 🧪 Exemplo 2 – Data da primeira e última aula

```sql
SELECT MIN(data) AS primeira_aula, MAX(data) AS ultima_aula
FROM aulas;
```

> 📅 Resultado mostra os limites do calendário de aulas.

------

### 🧪 Exemplo 3 – Média de presenças por aluno

```sql
SELECT id_aluno, AVG(status = 'presente') AS media_presenca
FROM chamadas
GROUP BY id_aluno;
```

> 🧠 Interpretação: MySQL considera `status = 'presente'` como 1 (verdadeiro), e o resto como 0 — a média mostra a taxa de presença.

------

## 🔡 Funções de Texto

| Função     | O que faz                      | Exemplo                      |
| ---------- | ------------------------------ | ---------------------------- |
| `LENGTH()` | Retorna o número de caracteres | Quantidade de letras no nome |
| `CONCAT()` | Junta textos                   | Nome completo                |
| `UPPER()`  | Transforma em maiúsculo        | Padrão para exibição         |
| `LOWER()`  | Transforma em minúsculo        | Comparações ou normalização  |

------

### 🧪 Exemplo 4 – Nome completo dos alunos

```sql
SELECT CONCAT(nome, ' ', sobrenome) AS nome_completo
FROM alunos;
```

------

## 📅 Funções de Data e Hora

| Função              | O que faz                               | Exemplo                       |
| ------------------- | --------------------------------------- | ----------------------------- |
| `NOW()`             | Retorna a data e hora atual do servidor | Log de atualização            |
| `CURDATE()`         | Retorna apenas a data atual             | Comparações com datas futuras |
| `YEAR()`, `MONTH()` | Extrai partes da data                   | Filtrar por ano ou mês        |

------

### 🧪 Exemplo 5 – Filtrar ocorrências do mês atual

```sql
SELECT * FROM ocorrencias
WHERE MONTH(data) = MONTH(CURDATE())
  AND YEAR(data) = YEAR(CURDATE());
```

------

## 🔁 Funções com GROUP BY e HAVING

### 🧪 Exemplo 6 – Professores que deram mais de 5 aulas

```sql
SELECT id_professor, COUNT(*) AS total_aulas
FROM aulas
GROUP BY id_professor
HAVING COUNT(*) > 5;
```

> 💡 `HAVING` é usado quando queremos **filtrar após o GROUP BY**, diferente do `WHERE`.

------

## 🧠 O que são Subconsultas?

📘 Subconsulta (ou subquery) é uma **consulta dentro de outra consulta**, usada para refinar a busca.

| Onde pode ser usada? | Exemplo                           |
| -------------------- | --------------------------------- |
| `WHERE`              | `... WHERE id IN (SELECT ...)`    |
| `FROM`               | `... FROM (SELECT ...) AS tabela` |
| `SELECT`             | `... SELECT (SELECT COUNT(...))`  |

------

### 🧪 Exemplo 7 – Alunos com ocorrências

```sql
SELECT nome
FROM alunos
WHERE id_aluno IN (
  SELECT id_aluno
  FROM ocorrencias
);
```

> ✅ Retorna nomes de alunos que **aparecem na tabela de ocorrências**.

------

### 🧪 Exemplo 8 – Subconsulta como tabela temporária

```sql
SELECT turma, total
FROM (
  SELECT id_turma AS turma, COUNT(*) AS total
  FROM alunos
  GROUP BY id_turma
) AS resumo;
```

> 🔍 A subconsulta no `FROM` gera uma “tabela virtual” para análise externa.

------

## 🧪 Boas Práticas e Erros Comuns

✅ **Boas práticas:**

- Use `AS` para dar nomes claros às colunas agregadas;
- Verifique o contexto: use `WHERE` antes de agrupar e `HAVING` depois de `GROUP BY`;
- Subconsultas devem retornar 1 valor se forem comparadas com `=`, ou múltiplos valores se usadas com `IN`.

⚠️ **Erros comuns:**

- Colocar `AVG()` em campo textual;
- Usar `WHERE` para filtrar agregações (em vez de `HAVING`);
- Não usar alias (`AS`) em subconsultas.

------

## 💬 Exemplo Real do SGSA – Relatório de participação

📘 Mostrar alunos que participaram de mais de 10 aulas

```sql
SELECT a.nome, COUNT(c.id_chamada) AS total_presencas
FROM chamadas AS c
JOIN alunos AS a ON a.id_aluno = c.id_aluno
WHERE c.status = 'presente'
GROUP BY a.id_aluno
HAVING COUNT(c.id_chamada) > 10;
```

------

## 🎓 Conclusão Reflexiva

As funções e subconsultas transformam dados brutos em **informações valiosas para a gestão da escola**. Com elas, o SGSA se torna capaz de **responder perguntas** e **gerar inteligência pedagógica**, como índices de frequência, relatórios de participação, ou mesmo alertas de baixa assiduidade.

*“Os dados contam histórias. Aprender SQL é aprender a escutá-las.”*

------

## 🧠 Seção de Fixação de Conteúdo

### ✅ 1. Questão Dissertativa

**Explique com suas palavras a diferença entre WHERE e HAVING. Dê exemplos de situações onde cada um deve ser usado.**

------

### 🔘 2. Múltipla Escolha

**Qual das funções retorna a média dos valores de uma coluna numérica?**

-  COUNT()
-  SUM()
- ✔️ AVG()
-  MAX()

------

### ☑️ 3. Caixa de Seleção

**Quais são exemplos de funções agregadoras?**

- ✔️ COUNT()
- ✔️ SUM()
- ✔️ AVG()
- ✔️ MIN()
- ❌ CONCAT()

------

### 🔗 4. Associação de Colunas

| Comando / Função | Finalidade                                            |
| ---------------- | ----------------------------------------------------- |
| `GROUP BY`       | (   ) Agrupar registros por uma coluna                |
| `HAVING`         | (   ) Filtrar resultados agregados                    |
| `CONCAT()`       | (   ) Unir textos em uma nova coluna                  |
| `SUBQUERY`       | (   ) Consulta interna que fornece valores para outra |
| `LENGTH()`       | (   ) Retorna número de caracteres de um campo texto  |

------

### ✔️ 5. Verdadeiro ou Falso

1. Funções como `AVG()` e `COUNT()` só funcionam com `GROUP BY`. ( )
2. Subconsultas podem ser usadas no WHERE. ( )
3. `HAVING` é usado após o agrupamento. ( )
4. `NOW()` retorna o valor de uma data armazenada na tabela. ( )

-  V V V V
-  V F V F
-  F V V F
-  F F V V

------

## 📚 Referências Complementares

- 📘 [Documentação MySQL – Funções e Subqueries](https://dev.mysql.com/doc/refman/8.0/en/functions.html)
- 🎥 [Curso em Vídeo – SQL Avançado](https://www.youtube.com/playlist?list=PLHz_AreHm4dmGuLII3tsvryMMD7VgcT7x)
- 💬 [Stack Overflow em Português – Subconsultas](https://pt.stackoverflow.com/questions/tagged/subquery)

------

```markdown
#### ⏪ [Capítulo Anterior](<Capítulo 10 – Segurança e Controle de Acesso no MySQL.md>)
#### 🏠 [Início](../README.md)
#### ⏩ [Próximo Capítulo](<Capítulo 12 – Projeto Final: Implementação Completa do SGSA.md>)
```
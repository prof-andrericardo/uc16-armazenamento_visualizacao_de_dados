# 📘 Capítulo 6 – Consultando Dados com SELECT e Filtros (DQL)

> 🔍 *“Consultar dados é como fazer perguntas ao banco. Quanto mais precisa for a pergunta, mais valiosa será a resposta.”*
>  — **IAra, a guardiã do SGSA**

------

## 🧭 Introdução Didática

Depois de aprender a **criar** e **manipular** dados com os comandos DDL e DML, chegou a hora de aprender a **consultar informações** de forma eficaz.

Neste capítulo, você estudará a **DQL – Data Query Language**, a linguagem de consulta do SQL. Com ela, será possível **extrair exatamente os dados que você precisa**, utilizando **filtros**, **ordenadores**, **limitações** e **condições lógicas**. Dominar o `SELECT` é essencial para gerar relatórios, buscar históricos, montar dashboards e manter o SGSA funcionando com eficiência.

------

## 📂 Missão do Capítulo

🎯 **"Você agora é responsável por gerar relatórios do SGSA. Sua missão é consultar informações com precisão, criando comandos SELECT eficientes para turmas, alunos, ocorrências e lições."**

------

## 📌 O que é DQL?

📘 **DQL – Data Query Language** é o subconjunto da linguagem SQL usado para **consultar dados** nas tabelas de um banco de dados. Seu principal comando é o `SELECT`, que pode ser combinado com várias cláusulas para refinar os resultados.

------

## 🧠 Estrutura Básica do SELECT

```sql
SELECT colunas
FROM tabela
[WHERE condição]
[ORDER BY coluna ASC|DESC]
[LIMIT número];
```

| Cláusula   | Função                                                       |
| ---------- | ------------------------------------------------------------ |
| `SELECT`   | Escolhe quais colunas serão exibidas                         |
| `FROM`     | Informa de qual tabela os dados serão consultados            |
| `WHERE`    | Filtra os registros com base em uma condição                 |
| `ORDER BY` | Organiza os resultados em ordem crescente (ASC) ou decrescente (DESC) |
| `LIMIT`    | Limita o número de resultados exibidos                       |

------

## 📊 Começando pelo SGSA: A tabela `turmas`

### 🎯 Preparação:

Se ainda não houver dados, vamos inserir algumas turmas:

```sql
INSERT INTO turmas (nome_turma) VALUES
  ('1A'), ('1B'), ('2A'), ('2B'), ('3A'), ('3B');
```

------

### 📘 Exemplo 1 – Selecionando tudo da tabela `turmas`

```sql
SELECT * FROM turmas;
```

> 🔍 Exibe todas as colunas e todos os registros da tabela `turmas`.

📌 O `*` significa “todas as colunas”. Use com cuidado, pois pode retornar mais dados do que o necessário.

------

### 📘 Exemplo 2 – Selecionando colunas específicas

```sql
SELECT id_turma, nome_turma
FROM turmas;
```

> ✅ Mostra apenas as colunas `id_turma` e `nome_turma`, omitindo outras (caso existam).

------

## 🎯 Filtrando com WHERE

### 📘 Exemplo 3 – Buscar apenas a turma '2B'

```sql
SELECT * FROM turmas
WHERE nome_turma = '2B';
```

> 🧠 O `WHERE` define uma **condição lógica** para filtrar linhas. Aqui, retorna apenas a linha onde `nome_turma = '2B'`.

------

### 🔧 Operadores de comparação mais usados:

| Operador | Função         | Exemplo              |
| -------- | -------------- | -------------------- |
| =        | Igualdade      | `nome_turma = '2A'`  |
| != ou <> | Diferente      | `nome_turma != '1A'` |
| >        | Maior que      | `id_turma > 3`       |
| <        | Menor que      | `id_turma < 4`       |
| >=       | Maior ou igual | `id_turma >= 2`      |
| <=       | Menor ou igual | `id_turma <= 5`      |

------

### 📘 Exemplo 4 – Buscar todas as turmas com `id_turma` maior que 3

```sql
SELECT * FROM turmas
WHERE id_turma > 3;
```

> 💡 Exibe apenas os registros cujos IDs são maiores que 3.

------

## 🔄 Ordenando Resultados com ORDER BY

### 📘 Exemplo 5 – Listar turmas em ordem alfabética

```sql
SELECT * FROM turmas
ORDER BY nome_turma ASC;
```

> 🔠 Ordena as turmas de A → Z. O `ASC` é opcional (é o padrão).

------

### 📘 Exemplo 6 – Listar turmas por ID decrescente

```sql
SELECT * FROM turmas
ORDER BY id_turma DESC;
```

> 🔽 Ordena os resultados da maior turma para a menor (`DESC` = descendente).

------

## 🎚️ Limitando Resultados com LIMIT

### 📘 Exemplo 7 – Mostrar apenas as 3 primeiras turmas

```sql
SELECT * FROM turmas
LIMIT 3;
```

> ⛔ Exibe somente os 3 primeiros registros da tabela.

------

## 🔎 WHERE com operadores especiais

### 📘 Exemplo 8 – WHERE com BETWEEN (intervalo)

```sql
SELECT * FROM turmas
WHERE id_turma BETWEEN 2 AND 4;
```

> 🔍 Filtra as turmas com ID entre 2 e 4 (inclusive).

------

### 📘 Exemplo 9 – WHERE com IN (lista de opções)

```sql
SELECT * FROM turmas
WHERE nome_turma IN ('1A', '2B', '3A');
```

> ✅ Retorna apenas as turmas listadas.

------

### 📘 Exemplo 10 – WHERE com LIKE (texto parcial)

```sql
SELECT * FROM turmas
WHERE nome_turma LIKE '3%';
```

> 🔎 Retorna turmas que começam com “3” (ex: 3A, 3B).
>  O `%` funciona como **coringa** de qualquer texto.

------

## 🧪 Boas Práticas e Erros Comuns

✅ **Boas práticas:**

- Use `SELECT colunas` ao invés de `SELECT *` para melhorar performance;
- Nomeie as colunas corretamente em consultas complexas;
- Sempre teste suas condições `WHERE` com um `SELECT` antes de usar `UPDATE` ou `DELETE`.

⚠️ **Erros comuns:**

- Usar `WHERE` com operadores incorretos (`==` ao invés de `=`);
- Esquecer aspas em valores de texto: `nome = João` → ❌ deve ser `'João'`;
- Confundir `ORDER BY` com `WHERE`.

------

## 💬 Exemplo SGSA – Gerando um relatório de turmas

> O coordenador deseja listar todas as turmas do 3º ano em ordem alfabética:

```sql
SELECT * FROM turmas
WHERE nome_turma LIKE '3%'
ORDER BY nome_turma ASC;
```

> 🔍 Consulta simples e eficiente que mostra só o que ele precisa.

------

## 🎓 Conclusão Reflexiva

A DQL transforma a base de dados em fonte de conhecimento. Com o `SELECT` e os filtros certos, você é capaz de **enxergar padrões, gerar relatórios e apoiar decisões pedagógicas**. Sem ela, o banco de dados seria apenas uma caixa trancada — com ela, ele vira um mapa completo da realidade escolar.

*“Fazer SELECT é fazer perguntas. A qualidade da pergunta define o valor da resposta.”*

------

## 🧠 Seção de Fixação de Conteúdo

### ✅ 1. Questão Dissertativa

**Explique com suas palavras o que é a cláusula `WHERE`, e dê dois exemplos de uso diferentes.**

------

### 🔘 2. Múltipla Escolha

**Qual comando SQL exibe todas as colunas da tabela `alunos`?**

-  SELECT * FROM alunos;
-  SHOW alunos;
-  LIST alunos;
-  SELECT alunos *;

------

### ☑️ 3. Caixa de Seleção

**Quais operadores podem ser usados com `WHERE`?**

-  =
-  BETWEEN
-  IN
-  LIKE
-  WITH

------

### 🔗 4. Associação de Colunas

| Comando / Cláusula | Finalidade                                                   |
| ------------------ | ------------------------------------------------------------ |
| `SELECT`           | (   ) Consulta dados de uma ou mais colunas                  |
| `WHERE`            | (   ) Filtra registros com base em condições                 |
| `ORDER BY`         | (   ) Organiza o resultado por ordem crescente ou decrescente |
| `LIMIT`            | (   ) Restringe a quantidade de resultados exibidos          |

------

### ✔️ 5. Verdadeiro ou Falso

1. O comando `LIKE 'A%'` retorna nomes que começam com A. ( )
2. `SELECT *` é mais eficiente que listar colunas específicas. ( )
3. `BETWEEN 1 AND 5` retorna valores de 1 até 5, inclusive. ( )
4. `ORDER BY` só pode ser usado com números. ( )

-  V V F F
-  V F V F
-  V F V V
-  F F V F

------

## 📚 Referências Complementares

- 📘 [Documentação Oficial MySQL – SELECT](https://dev.mysql.com/doc/refman/8.0/en/select.html)
- 🎥 [Curso em Vídeo – SQL SELECT e Filtros](https://www.youtube.com/playlist?list=PLHz_AreHm4dmGuLII3tsvryMMD7VgcT7x)
- 💬 [Stack Overflow em Português – Consultas SQL](https://pt.stackoverflow.com/questions/tagged/sql)

------

#### ⏪ [Capítulo Anterior](<Capítulo 05 – Manipulando Dados com INSERT, UPDATE e DELETE.md>)
#### 🏠 [Início](../README.md)
#### ⏩ [Próximo Capítulo](<./Capítulo 07 – JOINs e Relacionamentos entre Tabelas.md>)

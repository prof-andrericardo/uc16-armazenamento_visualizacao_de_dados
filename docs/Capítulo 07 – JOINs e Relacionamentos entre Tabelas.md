# 📘 Capítulo 7 – JOINs e Relacionamentos entre Tabelas (DQL Avançado)

> 🔗 *“Relacionar tabelas é como conectar peças de um quebra-cabeça: só enxergamos o todo quando as ligações estão corretas.”*
>  — **IAra, a guardiã do SGSA**

------

## 🧭 Introdução Didática

Até agora, você aprendeu a **criar tabelas**, **inserir dados**, **fazer consultas simples** com `SELECT`, e **filtrar com WHERE`. Mas em bancos de dados relacionais como o do SGSA, **os dados estão distribuídos em várias tabelas interligadas**.

👉 Para acessar essas informações de forma combinada e inteligente, precisamos aprender a usar o comando **`JOIN`**.

Este capítulo vai guiá-lo pela **lógica dos relacionamentos**, pelas **tipagens de JOIN**, e por **exemplos graduais e didáticos** com tabelas reais do SGSA.

------

## 📂 Missão do Capítulo

🎯 **"Você agora é o Analista Relacional do SGSA. Sua missão é extrair informações combinando dados de várias tabelas, com precisão e integridade, por meio de consultas JOIN."**

------

## 🧱 Entendendo os Relacionamentos entre Tabelas

### 🔗 Como as tabelas se relacionam no SGSA?

```plaintext
TURMAS(1)───(∞)ALUNOS
         └───(∞)AULAS───(1)PROFESSORES
                     └───(∞)CHAMADAS───(1)ALUNOS
```

📌 Cada turma pode ter vários alunos;
 📌 Cada aula está associada a uma turma e um professor;
 📌 Cada chamada registra presença de um aluno em uma aula.

------

## 🧠 O que é JOIN?

O comando `JOIN` permite **combinar dados de duas ou mais tabelas** que possuem relacionamentos entre si através de **chaves primárias e estrangeiras**.

------

## 🔍 Sintaxe Geral do JOIN

```sql
SELECT colunas
FROM tabela1
JOIN tabela2 ON tabela1.campo = tabela2.campo;
```

| Parte          | Explicação                                             |
| -------------- | ------------------------------------------------------ |
| `SELECT`       | Define quais colunas aparecerão no resultado           |
| `FROM tabela1` | Tabela base (geralmente a que tem a chave estrangeira) |
| `JOIN tabela2` | Segunda tabela que será relacionada                    |
| `ON`           | Condição de ligação entre os campos relacionados       |

------

## 📘 Exemplo 1 – JOIN entre `alunos` e `turmas`

### 🎯 Objetivo: mostrar o nome do aluno e sua turma

```sql
SELECT alunos.nome, turmas.nome_turma
FROM alunos
JOIN turmas ON alunos.id_turma = turmas.id_turma;
```

📘 Explicação linha por linha:

- `SELECT alunos.nome, turmas.nome_turma`: seleciona o nome do aluno e o nome da turma;
- `FROM alunos`: a tabela `alunos` é a base da consulta;
- `JOIN turmas`: queremos combinar com a tabela `turmas`;
- `ON alunos.id_turma = turmas.id_turma`: a chave estrangeira conecta aluno à turma.

📌 Esse tipo de JOIN é chamado de **INNER JOIN** (implícito), e retorna apenas os alunos **que estão vinculados a uma turma**.

------

## 🧪 Exemplo 2 – JOIN entre `aulas`, `turmas` e `professores`

### 🎯 Objetivo: mostrar data da aula, turma e nome do professor

```sql
SELECT aulas.data, turmas.nome_turma, professores.nome
FROM aulas
JOIN turmas ON aulas.id_turma = turmas.id_turma
JOIN professores ON aulas.id_professor = professores.id_professor;
```

📘 Explicação:

- Consulta encadeada com dois `JOINs`;
- Relaciona `aulas → turmas` e `aulas → professores`;
- Permite exibir o contexto completo da aula.

------

## ⚠️ INNER JOIN x LEFT JOIN

| Tipo de JOIN | O que retorna                                                |
| ------------ | ------------------------------------------------------------ |
| `INNER JOIN` | Somente registros que têm correspondência nas duas tabelas   |
| `LEFT JOIN`  | Todos os registros da tabela da esquerda, e os correspondentes (ou NULL) da direita |

------

## 📘 Exemplo 3 – LEFT JOIN entre `turmas` e `alunos`

### 🎯 Objetivo: listar todas as turmas, mesmo que ainda não tenham alunos

```sql
SELECT turmas.nome_turma, alunos.nome
FROM turmas
LEFT JOIN alunos ON alunos.id_turma = turmas.id_turma;
```

📘 Explicação:

- Mostra todas as turmas, mesmo que a turma **não tenha nenhum aluno ainda**;
- As colunas do `alunos` aparecerão como `NULL` se não houver relação.

------

## 🧪 Exemplo 4 – Consulta com apelidos (AS)

### 🎯 Objetivo: melhorar a legibilidade dos resultados

```sql
SELECT a.nome AS aluno, t.nome_turma AS turma
FROM alunos AS a
JOIN turmas AS t ON a.id_turma = t.id_turma;
```

📘 Aqui usamos `AS` para criar apelidos para colunas e tabelas. Isso facilita consultas longas ou leitura de resultados.

------

## 🧪 Exemplo 5 – JOIN com múltiplas tabelas e filtro

### 🎯 Objetivo: mostrar alunos, aula e status de presença

```sql
SELECT a.nome, au.data, c.status
FROM chamadas AS c
JOIN alunos AS a ON c.id_aluno = a.id_aluno
JOIN aulas AS au ON c.id_aula = au.id_aula
WHERE au.data = '2025-04-01';
```

📘 Consulta cruzando **três tabelas**:

- `chamadas` relaciona `alunos` e `aulas`;
- O `WHERE` filtra apenas a data desejada.

------

## ✅ Dicas e Boas Práticas

✅ **Boas práticas:**

- Use `JOIN` com condições bem definidas (evita resultados errados);
- Prefira `INNER JOIN` quando só quiser dados com relação direta;
- Use `LEFT JOIN` para detectar dados ausentes (ex: turmas sem alunos).

⚠️ **Erros comuns:**

- Esquecer a cláusula `ON` (gera erro);
- Relacionar colunas erradas (`id_professor` com `id_turma`, por exemplo);
- Obter dados duplicados ao fazer `JOIN` com tabelas 1:N sem filtro adequado.

------

## 💬 Exemplo Real do SGSA

📘 *“Listar todos os alunos, sua turma, e as aulas que tiveram no mês de abril de 2025, com nome do professor e presença registrada”*

```sql
SELECT a.nome AS aluno,
       t.nome_turma AS turma,
       p.nome AS professor,
       au.data AS data_aula,
       c.status AS presenca
FROM chamadas AS c
JOIN alunos AS a ON c.id_aluno = a.id_aluno
JOIN aulas AS au ON c.id_aula = au.id_aula
JOIN turmas AS t ON a.id_turma = t.id_turma
JOIN professores AS p ON au.id_professor = p.id_professor
WHERE au.data BETWEEN '2025-04-01' AND '2025-04-30';
```

🎯 Esta consulta entrega um relatório completo, cruzando 5 tabelas!

------

## 🎓 Conclusão Reflexiva

O `JOIN` transforma o banco em um sistema de informação verdadeiramente conectado. É o comando que revela os relacionamentos e permite extrair **relatórios completos, históricos, comportamentos e cruzamentos de dados escolares**.

*“Quem sabe fazer JOIN, sabe fazer o banco falar.”*

------

## 🧠 Seção de Fixação de Conteúdo

### ✅ 1. Questão Dissertativa

**Explique a diferença entre `INNER JOIN` e `LEFT JOIN`, e dê um exemplo de quando usar cada um.**

------

### 🔘 2. Múltipla Escolha

**O que o comando JOIN permite fazer?**

-  Atualizar duas tabelas ao mesmo tempo
-  Apagar todas as tabelas
-  Consultar dados relacionados de tabelas diferentes
-  Criar tabelas temporárias

------

### ☑️ 3. Caixa de Seleção

**Quais comandos/cláusulas podem ser usados com JOIN?**

-  SELECT
-  ON
-  WHERE
-  AS
-  DELETE

------

### 🔗 4. Associação de Colunas

| Comando / Cláusula | Finalidade                                                   |
| ------------------ | ------------------------------------------------------------ |
| `JOIN`             | (   ) Relaciona duas tabelas usando colunas em comum         |
| `ON`               | (   ) Define a condição de junção entre as tabelas           |
| `LEFT JOIN`        | (   ) Retorna todos os registros da esquerda e os relacionados |
| `INNER JOIN`       | (   ) Retorna apenas registros com correspondência nas duas  |
| `AS`               | (   ) Define apelido para colunas ou tabelas                 |

------

### ✔️ 5. Verdadeiro ou Falso

1. O JOIN exige que haja uma relação entre as tabelas. ( )
2. O LEFT JOIN pode retornar linhas com valores NULL. ( )
3. Podemos usar mais de um JOIN na mesma consulta. ( )
4. INNER JOIN retorna todas as linhas de ambas as tabelas. ( )

-  V V F F
-  V F V F
-  V V V F
-  F V V V

------

## 📚 Referências Complementares

- 📘 [Documentação MySQL – JOINs](https://dev.mysql.com/doc/refman/8.0/en/join.html)
- 🎥 [Curso em Vídeo – SQL: JOINs](https://www.youtube.com/playlist?list=PLHz_AreHm4dmGuLII3tsvryMMD7VgcT7x)
- 💬 [Stack Overflow PT – JOIN em SQL](https://pt.stackoverflow.com/questions/tagged/join)

------

```markdown
#### ⏪ [Capítulo Anterior](<Capítulo 06 – Consultando Dados com SELECT e Filtros.md>)
#### 🏠 [Início](../README.md)
#### ⏩ [Próximo Capítulo](<Capítulo 08 – Otimização de Consultas e Índices.md>)
```
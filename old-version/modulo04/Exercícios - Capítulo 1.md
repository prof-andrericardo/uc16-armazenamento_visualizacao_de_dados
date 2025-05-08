# 📝 Exercícios - Capítulo 1: Introdução ao DQL

## **1️⃣ Questões Dissertativas**

1. Explique o que é **DQL (Data Query Language)** e qual sua importância dentro de um banco de dados relacional, especialmente no contexto do **SGSA (Sistema de Gerenciamento de Sala de Aula)**.
2. Qual a diferença entre os comandos **DQL, DML e DDL**? Cite exemplos práticos de uso de cada um dentro do SGSA.
3. O que acontece quando utilizamos o comando `SELECT * FROM Alunos;`? Em quais situações esse comando pode ser ineficiente?
4. Explique a diferença entre `ORDER BY ASC` e `ORDER BY DESC`. Dê exemplos de como esses comandos podem ser úteis para gerar relatórios no SGSA.
5. Como o operador `LIKE` pode ser utilizado para buscas específicas? Dê exemplos práticos baseados na tabela `Alunos` do SGSA.

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual das alternativas abaixo representa a estrutura correta de um comando `SELECT`?

   -  `GET nome FROM Alunos;`
   -  `SHOW nome, matricula WHERE Alunos;`
   -  `SELECT nome, matricula FROM Alunos;`
   -  `EXTRACT nome FROM Alunos;`

2. Qual comando SQL é utilizado para **filtrar registros** dentro de uma tabela?

   -  `SORT`
   -  `GROUP BY`
   -  `WHERE`
   -  `HAVING`

3. Se quisermos listar **todos os alunos da turma 2** na tabela `Alunos`, qual comando devemos usar?

   -  `SELECT * FROM Alunos WHERE turma_id != 2;`
   -  `SELECT nome FROM Alunos ORDER BY turma_id;`
   -  `SELECT nome, matricula FROM Alunos WHERE turma_id = 2;`
   -  `FILTER turma_id FROM Alunos = 2;`

4. O que o seguinte comando faz?

   ```sql
   SELECT nome FROM Alunos WHERE nome LIKE 'J%';
   ```

   -  Retorna todos os alunos com o nome que contém a letra 'J' em qualquer posição.
   -  Retorna todos os alunos cujo nome começa com 'J'.
   -  Retorna todos os alunos cujo nome termina com 'J'.
   -  Retorna apenas alunos com nomes exatos iguais a 'J'.

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais das opções abaixo são funções agregadas do SQL?
   -  `COUNT()`
   -  `AVG()`
   -  `ORDER BY`
   -  `SUM()`
   -  `FILTER()`
2. Qual(is) comando(s) pode(m) ser utilizado(s) para ordenar resultados em uma consulta SQL?
   -  `ORDER BY`
   -  `GROUP BY`
   -  `DESC`
   -  `ASC`

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os comandos SQL com suas respectivas funcionalidades:

| Comando SQL | Funcionalidade                                        |
| ----------- | ----------------------------------------------------- |
| `SELECT`    | (  ) Recupera dados de uma tabela                     |
| `WHERE`     | (  ) Filtra registros com base em uma condição        |
| `ORDER BY`  | (  ) Ordena os registros retornados                   |
| `LIKE`      | (  ) Filtra registros que seguem um padrão específico |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. `SELECT * FROM Alunos;` retorna todos os registros da tabela `Alunos`. **(Verdadeiro ou Falso?)**
2. O comando `WHERE` pode ser usado para ordenar registros. **(Verdadeiro ou Falso?)**
3. O operador `LIKE 'A%'` busca nomes que começam com a letra 'A'. **(Verdadeiro ou Falso?)**
4. O comando `ORDER BY nome DESC` ordena os nomes em ordem crescente. **(Verdadeiro ou Falso?)**

------

✍️ **Agora pratique resolvendo essas questões no seu ambiente MySQL!** 🚀
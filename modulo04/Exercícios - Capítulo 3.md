# 📝 Questões de Fixação - Capítulo 4 - Funções Agregadas e Agrupamento de Dados

## **1️⃣ Questões Dissertativas**

1. O que são funções agregadas em SQL? Cite pelo menos cinco funções agregadas e explique sua utilidade no contexto do **SGSA (Sistema de Gerenciamento de Sala de Aula)**.
2. Explique a diferença entre `WHERE` e `HAVING`. Em quais situações cada uma dessas cláusulas deve ser utilizada?
3. Por que a cláusula `GROUP BY` é importante ao utilizar funções agregadas? Dê um exemplo prático de uso dentro do SGSA.
4. Como o `COUNT(*)` pode ser usado para obter informações estatísticas sobre alunos e turmas? Dê um exemplo de consulta SQL.
5. No SGSA, como podemos calcular a média de faltas por disciplina utilizando `AVG()`? Escreva a consulta SQL correspondente e explique cada parte do comando.

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual das opções abaixo representa corretamente uma função agregada em SQL?

   -  `SELECT nome FROM Alunos;`
   -  `UPDATE Alunos SET turma_id = 3;`
   -  `SELECT COUNT(*) FROM Alunos;`
   -  `DELETE FROM Alunos WHERE id_aluno = 1;`

2. Qual comando é utilizado para agrupar registros em SQL?

   -  `ORDER BY`
   -  `GROUP BY`
   -  `HAVING`
   -  `JOIN`

3. O que o seguinte comando SQL faz?

   ```sql
   SELECT turma_id, COUNT(*) AS total_alunos FROM Alunos GROUP BY turma_id;
   ```

   -  Retorna apenas os alunos da turma 1.
   -  Conta quantos alunos existem em cada turma.
   -  Remove os alunos duplicados da tabela.
   -  Exclui as turmas vazias.

4. Qual alternativa representa corretamente o uso de `HAVING`?

   -  `SELECT nome FROM Alunos WHERE nome HAVING 'A%';`
   -  `SELECT turma_id, COUNT(*) FROM Alunos GROUP BY turma_id HAVING COUNT(*) > 50;`
   -  `HAVING nome FROM Alunos;`
   -  `ORDER BY HAVING COUNT(*) > 50;`

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais das alternativas abaixo representam funções agregadas válidas em SQL?
   -  `COUNT()`
   -  `AVG()`
   -  `SUM()`
   -  `FILTER()`
   -  `ORDER BY`
2. Qual(is) comando(s) pode(m) ser usado(s) para restringir os resultados de um agrupamento?
   -  `HAVING`
   -  `ORDER BY`
   -  `WHERE`
   -  `INDEX`

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os comandos SQL com suas respectivas funcionalidades:

| Comando SQL | Funcionalidade                                          |
| ----------- | ------------------------------------------------------- |
| `COUNT()`   | (  ) Conta o número de registros                        |
| `AVG()`     | (  ) Calcula a média dos valores de uma coluna          |
| `SUM()`     | (  ) Retorna a soma dos valores de uma coluna           |
| `GROUP BY`  | (  ) Agrupa registros com base em uma coluna específica |
| `HAVING`    | (  ) Filtra registros agrupados                         |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. `SELECT COUNT(*) FROM Alunos;` retorna o total de registros da tabela `Alunos`. **(Verdadeiro ou Falso?)**
2. A cláusula `WHERE` pode ser utilizada para filtrar resultados após um `GROUP BY`. **(Verdadeiro ou Falso?)**
3. A função `MAX()` retorna o menor valor de uma coluna numérica. **(Verdadeiro ou Falso?)**
4. `HAVING COUNT(*) > 50;` é uma maneira válida de filtrar grupos de registros. **(Verdadeiro ou Falso?)**

------

✍️ **Agora pratique resolvendo essas questões no seu ambiente MySQL!** 🚀
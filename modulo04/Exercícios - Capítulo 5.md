# 📝 Questões de Fixação - Capítulo 4 - DQL - Criando Relatórios no SGSA

## **1️⃣ Questões Dissertativas**

1. Qual a importância da criação de relatórios no **SGSA (Sistema de Gerenciamento de Sala de Aula)**? Dê exemplos de como esses relatórios auxiliam professores e coordenadores.
2. Explique o papel da cláusula `GROUP BY` na criação de relatórios. Como ela pode ser usada para agrupar informações relevantes sobre os alunos?
3. Como a função `COUNT()` pode ser utilizada para calcular o total de presenças e faltas dos alunos? Escreva um exemplo de consulta SQL para ilustrar sua explicação.
4. Em que situações a cláusula `HAVING` é mais apropriada do que `WHERE` ao filtrar dados em relatórios?
5. Como podemos utilizar `JOINs` para gerar um relatório que combine informações de alunos, turmas e presenças? Escreva um exemplo de consulta SQL.

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual das alternativas abaixo representa corretamente uma consulta que retorna o total de presenças e faltas dos alunos agrupados por turma?
   -  `SELECT nome, turma_id, COUNT(*) FROM Alunos;`
   -  `SELECT Turmas.nome_turma, COUNT(CASE WHEN Registro_de_Chamada.presenca = 'Presente' THEN 1 END) AS total_presencas FROM Alunos JOIN Turmas ON Alunos.turma_id = Turmas.id_turma JOIN Registro_de_Chamada ON Alunos.id_aluno = Registro_de_Chamada.aluno_id GROUP BY Turmas.nome_turma;`
   -  `SELECT * FROM Alunos WHERE turma_id IN (SELECT id_turma FROM Turmas);`
   -  `SELECT COUNT(*) FROM Registro_de_Chamada WHERE presenca = 'Presente';`
2. Qual função agregada pode ser usada para calcular a média de presenças dos alunos em uma disciplina?
   -  `SUM()`
   -  `COUNT()`
   -  `AVG()`
   -  `MAX()`
3. O que acontece quando usamos a função `AVG()` em uma consulta SQL?
   -  Retorna o total de registros de uma tabela.
   -  Calcula a média dos valores de uma coluna numérica.
   -  Conta apenas os valores distintos de uma coluna.
   -  Ordena os registros de forma crescente.
4. Qual cláusula é utilizada para filtrar grupos de registros gerados pelo `GROUP BY`?
   -  `WHERE`
   -  `HAVING`
   -  `ORDER BY`
   -  `FILTER`

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais das seguintes funções agregadas são usadas na criação de relatórios?
   -  `COUNT()`
   -  `AVG()`
   -  `SUM()`
   -  `FILTER()`
   -  `ORDER BY`
2. Quais comandos podem ser utilizados para organizar e estruturar relatórios SQL?
   -  `GROUP BY`
   -  `HAVING`
   -  `UPDATE`
   -  `ORDER BY`

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os comandos SQL com suas respectivas funcionalidades:

| Comando SQL | Funcionalidade                                      |
| ----------- | --------------------------------------------------- |
| `COUNT()`   | (  ) Conta o número de registros                    |
| `AVG()`     | (  ) Calcula a média dos valores de uma coluna      |
| `GROUP BY`  | (  ) Agrupa registros com base em um critério       |
| `HAVING`    | (  ) Filtra grupos de registros após o agrupamento  |
| `ORDER BY`  | (  ) Ordena os registros retornados em uma consulta |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. `SELECT COUNT(*) FROM Alunos;` retorna o total de registros da tabela `Alunos`. **(Verdadeiro ou Falso?)**
2. A cláusula `HAVING` pode ser usada para filtrar registros antes da aplicação do `GROUP BY`. **(Verdadeiro ou Falso?)**
3. `AVG()` retorna a soma de todos os valores de uma coluna. **(Verdadeiro ou Falso?)**
4. `ORDER BY` pode ser usado para classificar registros em ordem crescente ou decrescente. **(Verdadeiro ou Falso?)**

------

✍️ **Agora pratique resolvendo essas questões no seu ambiente MySQL!** 🚀
# 📝 Questões de Fixação - Módulo 4: DQL - Trabalhando com `JOINs`

## **1️⃣ Questões Dissertativas**

1. O que é um `JOIN` em SQL e por que ele é essencial para trabalhar com bancos de dados relacionais?
2. Explique a diferença entre `INNER JOIN`, `LEFT JOIN` e `RIGHT JOIN`. Dê um exemplo prático de cada um.
3. No contexto do **SGSA (Sistema de Gerenciamento de Sala de Aula)**, como o `JOIN` pode ser útil para gerar relatórios escolares? Dê um exemplo de consulta SQL que relacione alunos e suas turmas.
4. Qual a diferença entre um `LEFT JOIN` e um `RIGHT JOIN`? Em quais situações cada um deve ser utilizado?
5. Como podemos utilizar `JOINs` para listar todas as disciplinas e seus respectivos professores, incluindo aqueles professores que ainda não possuem disciplinas atribuídas?

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual das opções abaixo representa corretamente a sintaxe de um `INNER JOIN`?
   -  `SELECT * FROM Alunos CROSS JOIN Turmas ON Alunos.turma_id = Turmas.id_turma;`
   -  `SELECT * FROM Alunos WHERE Alunos.turma_id = Turmas.id_turma;`
   -  `SELECT * FROM Alunos INNER JOIN Turmas ON Alunos.turma_id = Turmas.id_turma;`
   -  `SELECT * FROM Alunos FULL JOIN Turmas ON Alunos.turma_id = Turmas.id_turma;`
2. O que acontece quando usamos um `LEFT JOIN` entre as tabelas `Turmas` e `Alunos`?
   -  Apenas os alunos com uma turma cadastrada são retornados.
   -  Apenas as turmas que possuem alunos matriculados são exibidas.
   -  Todas as turmas serão exibidas, mesmo aquelas que não possuem alunos.
   -  O resultado será igual a um `INNER JOIN`.
3. Qual comando é utilizado para relacionar duas tabelas baseando-se em um campo comum entre elas?
   -  `WHERE`
   -  `FILTER`
   -  `JOIN`
   -  `ORDER BY`
4. Se quisermos exibir **todas as disciplinas e seus respectivos professores**, incluindo os professores que **ainda não possuem disciplinas atribuídas**, devemos utilizar:
   -  `INNER JOIN`
   -  `CROSS JOIN`
   -  `RIGHT JOIN`
   -  `FULL JOIN`

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais das seguintes opções são tipos válidos de `JOIN` em SQL?
   -  `INNER JOIN`
   -  `LEFT JOIN`
   -  `RIGHT JOIN`
   -  `MIDDLE JOIN`
   -  `OUTER CROSS JOIN`
2. Quais situações exigem o uso de um `JOIN`?
   -  Quando precisamos combinar dados de múltiplas tabelas.
   -  Quando queremos excluir registros duplicados em uma tabela.
   -  Quando queremos exibir informações de uma tabela baseada em um campo relacionado de outra tabela.
   -  Quando estamos criando uma nova tabela no banco de dados.

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os tipos de `JOIN` com suas respectivas características:

| Tipo de `JOIN` | Característica                                               |
| -------------- | ------------------------------------------------------------ |
| `INNER JOIN`   | (  ) Retorna apenas os registros com correspondência em ambas as tabelas |
| `LEFT JOIN`    | (  ) Retorna todos os registros da tabela da esquerda e os correspondentes da tabela da direita |
| `RIGHT JOIN`   | (  ) Retorna todos os registros da tabela da direita e os correspondentes da tabela da esquerda |
| `FULL JOIN`    | (  ) Retorna todos os registros de ambas as tabelas, com `NULL` para valores sem correspondência |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. `INNER JOIN` retorna apenas os registros que possuem correspondência entre as tabelas. **(Verdadeiro ou Falso?)**
2. `LEFT JOIN` retorna todos os registros da tabela da direita e os correspondentes da tabela da esquerda. **(Verdadeiro ou Falso?)**
3. `RIGHT JOIN` retorna todas as disciplinas de um professor, mesmo que ele não tenha disciplinas atribuídas. **(Verdadeiro ou Falso?)**
4. `JOINs` são necessários quando precisamos consultar dados que estão armazenados em múltiplas tabelas. **(Verdadeiro ou Falso?)**

------

✍️ **Agora pratique resolvendo essas questões no seu ambiente MySQL!** 🚀
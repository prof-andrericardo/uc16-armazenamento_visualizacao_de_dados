# 📝 Questões de Fixação - Capítulo 2 - Consultas Básicas com `SELECT`

## **1️⃣ Questões Dissertativas**

1. Explique o que é o comando `SELECT` no SQL e qual sua importância na consulta de dados em um banco relacional.
2. Qual a diferença entre `SELECT * FROM Alunos;` e `SELECT nome, matricula FROM Alunos;`? Em que situações cada um deve ser utilizado?
3. Como os **alias (`AS`)** podem ser úteis em consultas SQL? Dê um exemplo prático de uso dentro do contexto do **SGSA (Sistema de Gerenciamento de Sala de Aula)**.
4. O que acontece quando utilizamos o operador `LIKE` dentro da cláusula `WHERE`? Explique sua funcionalidade e dê um exemplo de consulta SQL que busque alunos cujos nomes comecem com a letra "M".
5. Qual a finalidade da cláusula `ORDER BY`? Explique a diferença entre `ORDER BY nome ASC` e `ORDER BY nome DESC`, fornecendo exemplos práticos.

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual dos comandos abaixo retorna todos os registros da tabela `Alunos`?

   -  `GET * FROM Alunos;`
   -  `SHOW ALL FROM Alunos;`
   -  `SELECT * FROM Alunos;`
   -  `EXTRACT ALL FROM Alunos;`

2. Qual cláusula é usada para **filtrar registros** dentro de uma consulta SQL?

   -  `ORDER BY`
   -  `GROUP BY`
   -  `SELECT`
   -  `WHERE`

3. O que a seguinte consulta SQL faz?

   ```sql
   SELECT nome FROM Alunos WHERE nome LIKE 'A%';
   ```

   -  Retorna apenas alunos cujo nome **contém** a letra 'A'.
   -  Retorna alunos cujo nome **começa** com a letra 'A'.
   -  Retorna alunos cujo nome **termina** com a letra 'A'.
   -  Retorna apenas um único aluno cujo nome seja 'A'.

4. Qual comando é usado para **ordenar** os registros de uma consulta SQL?

   -  `FILTER`
   -  `ORDER BY`
   -  `SORT BY`
   -  `ARRANGE`

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais das opções abaixo são cláusulas válidas para serem utilizadas junto ao `SELECT`?
   -  `WHERE`
   -  `ORDER BY`
   -  `UPDATE`
   -  `DELETE`
   -  `AS`
2. Marque as alternativas que representam formas válidas de ordenar resultados em SQL:
   -  `ORDER BY nome ASC`
   -  `ORDER BY matricula DESC`
   -  `SORT BY nome`
   -  `FILTER ORDER nome`

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os comandos SQL com suas respectivas funcionalidades:

| Comando SQL | Funcionalidade                                      |
| ----------- | --------------------------------------------------- |
| `SELECT`    | (  ) Recupera dados de uma tabela                   |
| `WHERE`     | (  ) Filtra registros com base em uma condição      |
| `ORDER BY`  | (  ) Ordena os registros retornados                 |
| `LIKE`      | (  ) Busca padrões dentro dos valores de uma coluna |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. `SELECT nome, matricula FROM Alunos;` retorna apenas as colunas `nome` e `matricula` da tabela `Alunos`. **(Verdadeiro ou Falso?)**
2. O operador `LIKE 'A%'` busca registros onde o nome contém a letra 'A' em qualquer posição. **(Verdadeiro ou Falso?)**
3. O comando `ORDER BY nome DESC` ordena os nomes em ordem crescente. **(Verdadeiro ou Falso?)**
4. `SELECT * FROM Alunos WHERE turma_id = 3;` retorna todos os alunos cuja `turma_id` seja igual a 3. **(Verdadeiro ou Falso?)**

------

✍️ **Agora pratique resolvendo essas questões no seu ambiente MySQL!** 🚀
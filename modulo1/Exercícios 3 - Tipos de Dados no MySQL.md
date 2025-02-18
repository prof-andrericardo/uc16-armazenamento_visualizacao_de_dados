# 📝 Questões para Fixação - Capítulo 3: Tipos de Dados no MySQL

## **1️⃣ Questões Dissertativas**

1. Explique a importância de definir corretamente os tipos de dados no MySQL e como isso impacta a eficiência do banco de dados.

   ------

   ------

2. Qual a diferença entre os tipos **VARCHAR** e **TEXT**? Em quais situações cada um deve ser usado?

   ------

   ------

3. Quando devemos utilizar os tipos **DECIMAL**, **FLOAT** e **DOUBLE**? Explique as diferenças entre eles.

   ------

   ------

4. Qual a diferença entre **DATE**, **DATETIME** e **TIMESTAMP** no MySQL? Dê exemplos práticos de uso.

   ------

   ------

5. O que acontece quando escolhemos um tipo de dado inadequado para uma coluna? Dê um exemplo de problema que pode ocorrer.

   ------

   ------

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual das opções abaixo representa um tipo **numérico** no MySQL?
   -  VARCHAR
   -  TEXT
   -  DECIMAL
   -  DATE
2. Se quisermos armazenar um número inteiro pequeno, como a idade de um aluno, qual tipo de dado seria mais adequado?
   -  BIGINT
   -  DECIMAL(5,2)
   -  TINYINT
   -  CHAR(2)
3. Qual das opções abaixo NÃO é um tipo de dado para armazenamento de datas?
   -  DATE
   -  DATETIME
   -  TIMESTAMP
   -  VARCHAR

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais das opções abaixo são **tipos de dados numéricos**?
   -  INT
   -  FLOAT
   -  DECIMAL
   -  TEXT
   -  TIMESTAMP
2. Se quisermos armazenar um **endereço de e-mail**, quais tipos de dados seriam mais adequados?
   -  VARCHAR
   -  CHAR
   -  TEXT
   -  INT
   -  DATE

------

## **4️⃣ Questões de Associação de Colunas**

Associe os conceitos aos exemplos corretos:

| Conceitos             | Opção 1            | Opção 2               | Opção 3   | Opção 4 | Opção 5 | Opção 6 |
| --------------------- | ------------------ | --------------------- | --------- | ------- | ------- | ------- |
| Tipo Numérico         | INT                | DECIMAL               | FLOAT     | -       | -       | -       |
| Tipo de Texto         | VARCHAR            | CHAR                  | TEXT      | -       | -       | -       |
| Tipo de Data/Hora     | DATE               | DATETIME              | TIMESTAMP | -       | -       | -       |
| Quando Usar DECIMAL   | Valores monetários | Notas com precisão    | -         | -       | -       | -       |
| Quando Usar VARCHAR   | Nome de usuário    | Endereço de e-mail    | -         | -       | -       | -       |
| Quando Usar TIMESTAMP | Registro de logs   | Controle de auditoria | -         | -       | -       | -       |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. "O tipo `INT` pode armazenar valores decimais." (Verdadeiro ou Falso)
2. "O tipo `VARCHAR` é adequado para armazenar textos curtos como nomes de alunos." (Verdadeiro ou Falso)
3. "O `DATETIME` é uma melhor opção para armazenar logs do que `TIMESTAMP`, pois armazena valores maiores." (Verdadeiro ou Falso)
4. "O tipo `DECIMAL` é mais indicado para valores financeiros do que `FLOAT`, pois mantém precisão exata." (Verdadeiro ou Falso)

📌 *Dica*: Marque a resposta correta com `✔️` ao preencher o modelo.
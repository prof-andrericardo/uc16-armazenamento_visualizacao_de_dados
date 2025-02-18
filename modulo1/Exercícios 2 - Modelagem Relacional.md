# 📝 Questões para Fixação - Capítulo 2: Modelagem Relacional

## **1️⃣ Questões Dissertativas**

1. Explique o conceito de **modelagem relacional** e sua importância para a organização dos dados em um banco relacional.

   ------

   ------

2. O que são **entidades, atributos e relacionamentos**? Dê exemplos práticos de cada um dentro de um contexto escolar.

   ------

   ------

3. Qual a diferença entre um **relacionamento 1:1, 1:N e N:M**? Explique cada um com exemplos práticos.

   ------

   ------

4. O que é uma **chave primária** e uma **chave estrangeira**? Qual a importância dessas chaves no modelo relacional?

   ------

   ------

5. O que é **normalização de dados**? Explique os conceitos da **1FN, 2FN e 3FN** com exemplos.

   ------

   ------

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual das alternativas abaixo melhor define um **relacionamento 1:N**?
   -  Um aluno pode estar matriculado em várias turmas ao mesmo tempo.
   -  Um professor pode lecionar para várias turmas, mas cada turma tem um único professor.
   -  Um aluno pode estar matriculado em várias disciplinas, e cada disciplina pode ter vários alunos.
   -  Um aluno pode ter vários responsáveis, e cada responsável pode ter vários alunos.
2. Qual das opções abaixo representa corretamente uma **chave primária**?
   -  Nome do aluno na tabela ALUNOS.
   -  CPF do aluno, pois é um identificador único.
   -  Código da disciplina repetido na tabela de notas.
   -  O nome da turma na tabela TURMAS.
3. Qual das alternativas a seguir **NÃO é uma vantagem da modelagem relacional**?
   -  Redução da redundância de dados.
   -  Garantia de integridade referencial.
   -  Organização dos dados em tabelas interligadas.
   -  Armazenamento de dados sem estrutura fixa.

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais dos seguintes são exemplos de **relacionamento N:M**?
   -  Um aluno pode cursar várias disciplinas, e uma disciplina pode ter vários alunos.
   -  Um professor pode lecionar várias disciplinas, e uma disciplina pode ser lecionada por vários professores.
   -  Um aluno pertence a uma única turma.
   -  Um responsável pode ter vários alunos matriculados e cada aluno pode ter vários responsáveis.
2. Quais das opções abaixo são exemplos de **atributos de uma entidade ALUNO**?
   -  Nome do aluno.
   -  Matrícula do aluno.
   -  Nota da disciplina.
   -  Código do professor.
   -  Data de nascimento do aluno.

------

## **4️⃣ Questões de Associação de Colunas**

Associe os conceitos aos exemplos corretos:

| Conceitos          | Opção 1                                 | Opção 2                                 | Opção 3              | Opção 4            | Opção 5 | Opção 6 |
| ------------------ | --------------------------------------- | --------------------------------------- | -------------------- | ------------------ | ------- | ------- |
| Entidade           | Aluno                                   | Professor                               | Turma                | Disciplina         | -       | -       |
| Atributo           | Nome                                    | Matrícula                               | Código da disciplina | Data de nascimento | -       | -       |
| Relacionamento 1:N | Um professor leciona várias turmas      | Uma turma pertence a um único professor | -                    | -                  | -       | -       |
| Relacionamento N:M | Um aluno pode cursar várias disciplinas | Uma disciplina pode ter vários alunos   | -                    | -                  | -       | -       |
| Chave Primária     | ID do aluno                             | Código da disciplina                    | -                    | -                  | -       | -       |
| Chave Estrangeira  | ID do aluno na tabela de notas          | Código da disciplina na tabela de notas | -                    | -                  | -       | -       |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. "Uma chave estrangeira é um identificador único dentro de uma tabela." (Verdadeiro ou Falso)
2. "O modelo relacional organiza os dados em tabelas interligadas, garantindo integridade e eficiência." (Verdadeiro ou Falso)
3. "Um relacionamento N:M sempre requer uma tabela intermediária para ser implementado corretamente." (Verdadeiro ou Falso)
4. "A normalização dos dados ajuda a evitar redundâncias e inconsistências dentro do banco de dados." (Verdadeiro ou Falso)

📌 *Dica*: Marque a resposta correta com `✔️` ao preencher o modelo.
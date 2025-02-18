# 📝 Questões de Fixação - Capítulo 2: Definição de Relacionamentos

Este conjunto de questões foi elaborado para reforçar o aprendizado sobre **a definição de relacionamentos entre tabelas, integridade referencial e constraints**.

------

## **1️⃣ Questões Dissertativas**

1. Explique a diferença entre **chave primária** e **chave estrangeira** e sua importância na modelagem de bancos de dados relacionais.
2. O que é **integridade referencial**? Como constraints como `ON DELETE CASCADE` e `ON DELETE SET NULL` ajudam a mantê-la?
3. Qual a diferença entre os relacionamentos **1:1, 1:N e N:N**? Dê um exemplo para cada um, considerando o contexto do SGSA.
4. Como uma tabela intermediária pode ser usada para modelar um relacionamento **muitos-para-muitos (N:N)**? Explique com um exemplo prático.

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual das opções abaixo define corretamente uma chave estrangeira?

   - [ ] Um campo que identifica de forma exclusiva cada registro em uma tabela.
   - [ ] Um campo que armazena valores duplicados obrigatoriamente.
   - [ ] Um campo que referencia uma chave primária de outra tabela.
   - [ ] Um campo que impede a criação de novos registros.

2. No relacionamento **1:N** (um para muitos), qual das opções abaixo é verdadeira?

   - [ ] Um registro de uma tabela pode estar vinculado a apenas um registro da outra tabela.
   - [ ] Um registro de uma tabela pode estar vinculado a vários registros da outra tabela.
   - [ ] Ambos os lados do relacionamento possuem cardinalidade igual.
   - [ ] Nenhum dos registros pode ser excluído.

3. No seguinte comando SQL, qual constraint impede que a exclusão de um registro de `Turmas` afete os alunos relacionados?

   ```sql
   CREATE TABLE Alunos (
       id_aluno INT AUTO_INCREMENT PRIMARY KEY,
       nome VARCHAR(100) NOT NULL,
       turma_id INT NOT NULL,
       FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ____
   );
   ```

   - [ ] `ON DELETE CASCADE`
   - [ ] `ON DELETE SET NULL`
   - [ ] `ON DELETE RESTRICT`
   - [ ] `ON UPDATE CASCADE`

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais das opções abaixo são exemplos de constraints que garantem a integridade referencial no MySQL?
   - [ ] `FOREIGN KEY`
   - [ ] `ON DELETE CASCADE`
   - [ ] `ON DELETE SET NULL`
   - [ ] `SHOW TABLES`
   - [ ] `GROUP BY`
2. No relacionamento **N:N (muitos para muitos)**, quais elementos são necessários para sua correta implementação?
   - [ ] Uma tabela intermediária com duas chaves estrangeiras.
   - [ ] Referências a tabelas principais através de `FOREIGN KEY`.
   - [ ] Uso exclusivo de `ON DELETE RESTRICT` para preservar os dados.
   - [ ] Criar uma coluna `AUTO_INCREMENT` na tabela intermediária para identificar registros.

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os conceitos aos seus significados:

|                                                              | `PRIMARY KEY` | `ON DELETE CASCADE` | `ON DELETE CASCADE` | `ON DELETE SET NULL` | `FOREIGN KEY` |
| ------------------------------------------------------------ | :-----------: | :-----------------: | ------------------- | :------------------: | :-----------: |
| Exclui registros relacionados automaticamente ao excluir o registro principal. |               |                     |                     |                      |               |
| Exclui registros relacionados automaticamente ao excluir o registro principal. |               |                     |                     |                      |               |
| Mantém referência entre tabelas para garantir a integridade dos dados. |               |                     |                     |                      |               |
| Define o valor da chave estrangeira como `NULL` ao excluir o registro referenciado. |               |                     |                     |                      |               |
| Identifica exclusivamente um registro em uma tabela.         |               |                     |                     |                      |               |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. Uma chave estrangeira (`FOREIGN KEY`) sempre deve fazer referência a uma chave primária (`PRIMARY KEY`) de outra tabela.
2. `ON DELETE CASCADE` impede que um registro principal seja excluído.
3. No relacionamento **N:N**, é necessário criar uma tabela intermediária para armazenar as associações.
4. `ON DELETE RESTRICT` impede a exclusão de registros que estejam relacionados em outras tabelas.

Escolha a alternativa correta:

- [ ] **V F V F**
- [ ] **F V V F**
- [ ] **V F V V**
- [ ] **V V F V**

------

✍️ **Agora é hora de responder as questões e testar seus conhecimentos sobre definição de relacionamentos no SGSA!** 🚀
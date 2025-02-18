# 📝 Questões de Fixação - Capítulo 3: Prática: Criando o Banco de Dados do SGSA

Este conjunto de questões foi elaborado para reforçar o aprendizado sobre **a criação do banco de dados SGSA, definição de tabelas, constraints e relacionamentos**.

------

## **1️⃣ Questões Dissertativas**

1. Explique o processo de criação de um banco de dados no MySQL. Quais são os passos essenciais e quais boas práticas devem ser seguidas?
2. Ao definir tabelas, por que é importante utilizar **chaves primárias** e **chaves estrangeiras**? Quais problemas poderiam ocorrer caso essas chaves não fossem implementadas corretamente?
3. O que acontece quando utilizamos a constraint `ON DELETE CASCADE` em uma chave estrangeira? Dê um exemplo prático da sua aplicação no SGSA.
4. Qual é a diferença entre `VARCHAR`, `TEXT` e `ENUM` no MySQL? Como decidir qual tipo de dado utilizar em cada caso?

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual comando SQL cria corretamente um banco de dados no MySQL?

   - [ ] `MAKE DATABASE SGSA;`
   - [ ] `NEW DATABASE SGSA;`
   - [ ] `CREATE DATABASE SGSA;`
   - [ ] `START DATABASE SGSA;`

2. O que acontece se tentarmos inserir um registro sem preencher uma coluna definida como `NOT NULL`?

   - [ ] O valor padrão da coluna será usado automaticamente.
   - [ ] O MySQL gera um valor aleatório.
   - [ ] O MySQL retorna um erro, impedindo a inserção.
   - [ ] O valor será preenchido com zero.

3. No seguinte comando SQL, qual constraint impede a exclusão de uma turma caso haja alunos associados?

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

1. Quais das opções abaixo são exemplos de constraints utilizadas para garantir a integridade dos dados no MySQL?
   - [ ] `NOT NULL`
   - [ ] `UNIQUE`
   - [ ] `FOREIGN KEY`
   - [ ] `SHOW TABLES`
   - [ ] `GROUP BY`
2. O comando `ON DELETE CASCADE` apresenta quais características?
   - [ ] Remove automaticamente os registros relacionados.
   - [ ] Pode ser revertido com `ROLLBACK`.
   - [ ] Mantém a integridade referencial.
   - [ ] Aplica-se a chaves estrangeiras.
   - [ ] Permite registros orfãos na tabela referenciada.

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os conceitos aos seus significados:

|                                                              | `ON DELETE RESTRICT` | `PRIMARY KEY` | `AUTO_INCREMENT` | `ON DELETE SET NULL` | `ON DELETE CASCADE` | `FOREIGN KEY` |
| :----------------------------------------------------------: | :------------------: | :-----------: | :--------------: | :------------------: | :-----------------: | :-----------: |
| Mantém referência entre tabelas para garantir a integridade dos dados. |                      |               |                  |                      |                     |               |
| Define o valor da chave estrangeira como `NULL` ao excluir o registro referenciado. |                      |               |                  |                      |                     |               |
| Aumenta automaticamente o valor do campo a cada nova inserção. |                      |               |                  |                      |                     |               |
| Impede a exclusão de registros que possuam referências em outras tabelas. |                      |               |                  |                      |                     |               |
| Exclui registros relacionados automaticamente ao excluir o registro principal. |                      |               |                  |                      |                     |               |
|     Identifica exclusivamente um registro em uma tabela.     |                      |               |                  |                      |                     |               |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. Um banco de dados pode conter apenas uma tabela, sem necessidade de relacionamentos.
2. `ON DELETE CASCADE` impede a exclusão de registros principais.
3. No relacionamento **N:N**, é necessário criar uma tabela intermediária para armazenar as associações.
4. `ON DELETE RESTRICT` impede a exclusão de registros que estejam relacionados em outras tabelas.

Escolha a alternativa correta:

- [ ] **V F V F**
- [ ] **F V V F**
- [ ] **F F V V**
- [ ] **V V F V**

------

✍️ **Agora é hora de responder as questões e testar seus conhecimentos sobre a prática de criação do banco de dados SGSA!** 🚀
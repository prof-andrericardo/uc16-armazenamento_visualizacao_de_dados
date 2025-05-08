# 📝 Questões de Fixação - Capítulo 1: Criação do Banco de Dados e Tabelas

Este conjunto de questões foi elaborado para reforçar o aprendizado sobre **a criação do banco de dados SGSA, tabelas e comandos essenciais da DDL**.

------

## **1️⃣ Questões Dissertativas**

1. Explique a importância da normalização e da definição de chaves primárias e estrangeiras na criação de tabelas em um banco de dados relacional.
2. Qual a diferença entre os comandos `CREATE DATABASE` e `USE` no MySQL? Dê exemplos práticos de como eles são utilizados.
3. Por que devemos usar **constraints** como `UNIQUE`, `NOT NULL` e `ON DELETE CASCADE`? Explique cada uma delas e sua utilidade no SGSA.
4. No contexto do SGSA, qual seria o impacto de não utilizar `FOREIGN KEY` entre as tabelas `Alunos` e `Turmas`? Quais problemas poderiam ocorrer na consistência dos dados?

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual dos comandos abaixo é utilizado para criar um banco de dados chamado `SGSA` no MySQL?

   - [ ] `MAKE DATABASE SGSA;`
   - [ ] `CREATE DATABASE SGSA;`
   - [ ] `NEW DATABASE SGSA;`
   - [ ] `INIT DATABASE SGSA;`

2. Qual das opções abaixo é verdadeira sobre chaves estrangeiras (`FOREIGN KEY`)?

   - [ ] Elas permitem valores duplicados na coluna referenciada.
   - [ ] Elas podem referenciar qualquer outra tabela, independentemente da chave primária.
   - [ ] Elas garantem a integridade referencial ao vincular dados entre tabelas.
   - [ ] Elas não podem ser usadas em tabelas relacionadas.

3. No comando abaixo, qual constraint impede que a coluna `email` tenha valores duplicados?

   ```sql
   CREATE TABLE Professores (
       id_professor INT AUTO_INCREMENT PRIMARY KEY,
       nome VARCHAR(100) NOT NULL,
       email VARCHAR(100) ____ NOT NULL
   );
   ```

   - [ ] `CHECK`
   - [ ] `DEFAULT`
   - [ ] `UNIQUE`
   - [ ] `CASCADE`

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais das seguintes opções são exemplos de constraints que garantem integridade de dados no MySQL?
   - [ ] `NOT NULL`
   - [ ] `UNIQUE`
   - [ ] `FOREIGN KEY`
   - [ ] `SHOW TABLES`
   - [ ] `USE DATABASE`
2. O comando `TRUNCATE TABLE` apresenta quais características?
   - [ ] Remove todos os registros da tabela.
   - [ ] Pode ser revertido com `ROLLBACK`.
   - [ ] Mantém a estrutura da tabela.
   - [ ] Reinicia o `AUTO_INCREMENT`.
   - [ ] Pode ser usado com `WHERE` para excluir registros específicos.

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os conceitos aos seus significados:

|                                                     | `AUTO_INCREMENT` | `FOREIGN KEY` | `PRIMARY KEY` | `TRUNCATE TABLE` | `ON DELETE CASCADE` |
| :-------------------------------------------------: | :--------------: | :-----------: | :-----------: | :--------------: | :-----------------: |
|    Identificador único de um registro na tabela.    |                  |               |               |                  |                     |
|  Referência a uma chave primária de outra tabela.   |                  |               |               |                  |                     |
|   Exclui registros relacionados automaticamente.    |                  |               |               |                  |                     |
| Gera automaticamente valores numéricos sequenciais. |                  |               |               |                  |                     |
| Apaga todos os registros e reinicia AUTO_INCREMENT. |                  |               |               |                  |                     |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. O comando `CREATE TABLE` é utilizado para excluir tabelas no banco de dados.
2. A constraint `UNIQUE` permite valores duplicados na coluna em que é aplicada.
3.  `TRUNCATE TABLE` remove todos os registros de uma tabela e pode ser revertido com `ROLLBACK`.
4. O comando `DELETE` permite a exclusão de registros específicos com a cláusula `WHERE`.

Escolha a alternativa correta:

- [ ] **F V V F**
- [ ] **F F F V**
- [ ] **F F F V**
- [ ] **V F V F**

------

✍️ **Agora é hora de responder as questões e testar seus conhecimentos sobre a criação de bancos de dados e tabelas!** 🚀
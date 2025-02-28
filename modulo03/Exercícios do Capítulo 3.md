# 📝 Questões de Fixação - Manipulação de Dados no SGSA

Este documento contém questões para fixação do conteúdo abordado no capítulo **Prática - Manipulando Dados no SGSA**. Responda às perguntas com base nos conceitos e exemplos estudados.

------

## **1️⃣ Questões Dissertativas**

1. Explique a importância da manipulação de dados em um banco de dados relacional como o SGSA. Quais são os principais comandos utilizados?
2. No SGSA, por que é essencial utilizar chaves estrangeiras ao inserir dados em tabelas como `Alunos` e `Registro_Chamada`? Dê exemplos práticos.
3. Qual a diferença entre os comandos `INSERT INTO`, `UPDATE` e `DELETE`? Quando cada um deve ser utilizado?
4. O que pode acontecer se um comando `UPDATE` for executado sem a cláusula `WHERE`? Dê um exemplo e explique o impacto no banco de dados.
5. Como garantir a integridade dos dados ao remover um registro de aluno no SGSA? Explique o papel da restrição `ON DELETE CASCADE` e forneça um exemplo prático.

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual comando é utilizado para modificar registros já existentes em uma tabela?
   -  [ ] `MODIFY`
   -  [ ] `CHANGE`
   -  [ ] `UPDATE`
   -  [ ] `ALTER`
2. Para inserir múltiplos registros na tabela `Alunos` corretamente, qual das opções abaixo está correta?
   -  [ ] `INSERT INTO Alunos VALUES ('Ana Souza', '2024001', 1), ('Carlos Oliveira', '2024002', 1);`
   -  [ ] `INSERT INTO Alunos (nome, matricula, turma_id) VALUES ('Ana Souza', '2024001', 1), ('Carlos Oliveira', '2024002', 1);`
   -  [ ] `ADD INTO Alunos (nome, matricula, turma_id) ('Ana Souza', '2024001', 1), ('Carlos Oliveira', '2024002', 1);`
   -  [ ] `INSERT (nome, matricula, turma_id) INTO Alunos VALUES ('Ana Souza', '2024001', 1), ('Carlos Oliveira', '2024002', 1);`
3. O que acontece quando um comando `DELETE` é executado sem a cláusula `WHERE`?
   -  [ ] Apenas um registro é removido aleatoriamente.
   -  [ ] Todos os registros da tabela são removidos.
   -  [ ] O MySQL retorna um erro de sintaxe.
   -  [ ] Nenhum registro é removido.
4. Qual dos seguintes comandos é correto para alterar a turma de um aluno no SGSA?
   -  [ ] `MODIFY Alunos SET turma_id = 2 WHERE id_aluno = 1;`
   -  [ ] `UPDATE Alunos SET turma_id = 2 WHERE id_aluno = 1;`
   -  [ ] `ALTER Alunos SET turma_id = 2 WHERE id_aluno = 1;`
   -  [ ] `CHANGE Alunos SET turma_id = 2 WHERE id_aluno = 1;`

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais são boas práticas ao executar um `UPDATE` em uma tabela?
   -  [ ] Sempre utilizar `WHERE` para evitar modificações em todos os registros.
   -  [ ] Testar o comando antes com `SELECT`.
   -  [ ] Usar `UPDATE` sem `WHERE` para modificar todos os registros ao mesmo tempo.
   -  [ ] Garantir que os valores inseridos sejam válidos e consistentes com a estrutura do banco.
2. Quais comandos podem ser utilizados para manipulação de dados no SGSA?
   -  [ ] `INSERT INTO`
   -  [ ] `UPDATE`
   -  [ ] `DELETE`
   -  [ ] `CREATE TABLE`

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os comandos SQL com suas respectivas descrições:

|                                                              | `ON DELETE CASCADE` | `DELETE` | `UPDATE` | `INSERT INTO` | `WHERE` |
| :----------------------------------------------------------- | :-----------------: | :------: | :------: | :-----------: | :-----: |
| Remove automaticamente registros relacionados ao excluir um registro principal |                     |          |          |               |         |
| Adiciona novos registros a uma tabela                        |                     |          |          |               |         |
| Remove registros específicos de uma tabela                   |                     |          |          |               |         |
| Modifica registros existentes em uma tabela                  |                     |          |          |               |         |
| Define uma condição para operações de atualização ou exclusão |                     |          |          |               |         |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. O comando `INSERT INTO` pode ser usado para adicionar múltiplos registros em uma única execução.
   - [ ] Verdadeiro
   - [ ] Falso
2. Se um `DELETE` for executado sem a cláusula `WHERE`, apenas um registro será removido.
   - [ ] Verdadeiro
   - [ ] Falso
3. O comando `UPDATE` permite modificar todos os registros de uma tabela ao mesmo tempo, caso seja executado sem `WHERE`. 
   - [ ] Verdadeiro
   - [ ] Falso
4. `ON DELETE CASCADE` permite que a remoção de um registro principal também remova registros relacionados automaticamente. 
   - [ ] Verdadeiro
   - [ ] Falso
5. `DELETE` e `TRUNCATE` são comandos idênticos e podem ser usados de forma intercambiável. 
   - [ ] Verdadeiro
   - [ ] Falso

------

✍️ **Agora responda às questões e teste seu conhecimento sobre Manipulação de Dados no SGSA!** 🚀
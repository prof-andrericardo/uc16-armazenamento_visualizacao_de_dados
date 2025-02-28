# 📝 Questões de Fixação - Atualização e Remoção de Dados no SGSA

Este documento contém questões para fixação do conteúdo abordado no capítulo **Atualização e Remoção de Dados no SGSA**. Responda às perguntas com base nos conceitos e exemplos estudados.

------

## **1️⃣ Questões Dissertativas**

1. Explique a importância da operação `UPDATE` no gerenciamento de dados em um banco relacional como o SGSA.
2. Por que é essencial utilizar a cláusula `WHERE` ao executar comandos `UPDATE` e `DELETE`? Dê exemplos para ilustrar.
3. Diferencie as operações `DELETE` e `TRUNCATE`. Em que situações cada uma deve ser utilizada?
4. O que aconteceria se tentássemos remover um aluno da tabela `Alunos` sem considerar as restrições de integridade referencial? Como evitar esse problema?
5. Explique como a cláusula `ON DELETE CASCADE` pode facilitar a remoção de registros relacionados e forneça um exemplo prático no contexto do SGSA.

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual comando SQL é utilizado para modificar um ou mais registros em uma tabela?
   -  `MODIFY`
   -  `CHANGE`
   -  `UPDATE`
   -  `ALTER`
2. Qual dos seguintes comandos removeria um aluno específico da tabela `Alunos`?
   -  `REMOVE FROM Alunos WHERE id_aluno = 3;`
   -  `DELETE Alunos WHERE id_aluno = 3;`
   -  `DELETE FROM Alunos WHERE id_aluno = 3;`
   -  `DROP Alunos WHERE id_aluno = 3;`
3. O que acontece quando um comando `DELETE` é executado sem a cláusula `WHERE`?
   -  Apenas um registro é removido aleatoriamente.
   -  Todos os registros da tabela são removidos.
   -  O MySQL retorna um erro de sintaxe.
   -  Nenhum registro é removido.
4. O que diferencia `DELETE` de `TRUNCATE`?
   -  `DELETE` apaga a estrutura da tabela, enquanto `TRUNCATE` só apaga os dados.
   -  `DELETE` pode ser revertido dentro de uma transação, enquanto `TRUNCATE` remove os dados permanentemente.
   -  `TRUNCATE` permite remover registros específicos, enquanto `DELETE` remove todos os registros.
   -  Não há diferença entre `DELETE` e `TRUNCATE`.
5. Qual dos seguintes comandos corrige um erro de chamada no SGSA, alterando a presença de um aluno para "Justificado"?
   -  `MODIFY Registro_Chamada SET presenca = 'Justificado' WHERE aluno_id = 1;`
   -  `CHANGE Registro_Chamada SET presenca = 'Justificado' WHERE aluno_id = 1;`
   -  `ALTER Registro_Chamada SET presenca = 'Justificado' WHERE aluno_id = 1;`
   -  `UPDATE Registro_Chamada SET presenca = 'Justificado' WHERE aluno_id = 1;`

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais boas práticas devem ser seguidas ao atualizar registros com `UPDATE`?
   -  Sempre utilizar a cláusula `WHERE` para evitar alterações indevidas.
   -  Conferir os registros antes de executar a operação.
   -  Usar `UPDATE` sem `WHERE` para modificar todos os registros ao mesmo tempo.
   -  Testar o comando com uma consulta `SELECT` antes de executar.
2. O que deve ser considerado antes de executar um comando `DELETE`?
   -  Garantir que os registros a serem excluídos não sejam necessários para a integridade do sistema.
   -  Verificar se há `FOREIGN KEY` impedindo a exclusão de dados.
   -  Executar `DELETE` sem `WHERE` para remover todos os dados rapidamente.
   -  Criar um backup antes de excluir registros importantes.

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os comandos SQL com suas respectivas descrições:

| **Comando SQL**     | **Descrição**                                                |
| ------------------- | ------------------------------------------------------------ |
| `UPDATE`            | Modifica registros existentes em uma tabela                  |
| `DELETE`            | Remove registros específicos de uma tabela                   |
| `TRUNCATE`          | Apaga todos os registros de uma tabela e reinicia o `AUTO_INCREMENT` |
| `WHERE`             | Define uma condição para operações de atualização ou exclusão |
| `ON DELETE CASCADE` | Remove automaticamente registros relacionados ao excluir um registro principal |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. A operação `UPDATE` pode modificar múltiplos registros ao mesmo tempo, desde que satisfaçam a condição especificada na cláusula `WHERE`. 
   - [ ] Verdadeiro
   - [ ] Falso
2. O comando `DELETE` pode ser revertido dentro de uma transação, caso seja seguido por um `ROLLBACK`. 
   - [ ] Verdadeiro
   - [ ] Falso
3. A operação `TRUNCATE` permite excluir apenas registros específicos de uma tabela. 
   - [ ] Verdadeiro
   - [ ] Falso
4. A cláusula `WHERE` é opcional no comando `UPDATE`, mas sua omissão pode resultar em modificações indesejadas em todos os registros da tabela. 
   - [ ] Verdadeiro
   - [ ] Falso
5. `ON DELETE CASCADE` permite que um registro seja excluído apenas se não houver dependências em outras tabelas. 
   - [ ] Verdadeiro
   - [ ] Falso
------

✍️ **Agora responda às questões e teste seu conhecimento sobre Atualização e Remoção de Dados no SGSA!** 🚀
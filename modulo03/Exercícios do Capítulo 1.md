# 📝 Questões de Fixação - Inserção de Dados no SGSA

Este documento contém questões para fixação do conteúdo abordado no capítulo **Inserção de Dados no SGSA**. Responda às perguntas com base nos conceitos e exemplos estudados.

------

## **1️⃣ Questões Dissertativas**

1. Explique o propósito do comando `INSERT INTO` no MySQL. Como ele é utilizado para adicionar registros a uma tabela?
2. No contexto do SGSA, por que é importante seguir a ordem correta de inserção das tabelas (Turmas, Disciplinas, Professores, Alunos, Registro de Chamada)? Justifique sua resposta com um exemplo prático.
3. Qual a vantagem de utilizar o comando `INSERT INTO` para inserir múltiplos registros ao mesmo tempo? Dê um exemplo prático.
4. Explique a utilidade da palavra-chave `DEFAULT` no comando `INSERT INTO` e forneça um exemplo prático de uso.
5. No SGSA, a tabela `Registro_Chamada` contém uma restrição `FOREIGN KEY` para as tabelas `Alunos` e `Disciplinas`. O que acontece se tentarmos inserir um registro de chamada para um aluno que não existe na tabela `Alunos`?

------

## **2️⃣ Questões de Múltipla Escolha** (Apenas uma alternativa correta)

1. Qual comando SQL é utilizado para adicionar novos registros a uma tabela?
   - [ ] `ADD INTO`
   - [ ] `NEW RECORD`
   - [ ] `INSERT INTO`
   - [ ] `INSERT RECORD`
2. No SGSA, qual das tabelas deve ser populada primeiro para garantir a integridade referencial?
   - [ ] `Professores`
   - [ ] `Turmas`
   - [ ] `Alunos`
   - [ ] `Registro_Chamada`
3. O que acontece se tentarmos inserir um aluno em uma turma inexistente?
   - [ ] O registro será inserido normalmente
   - [ ] O MySQL cria automaticamente a turma
   - [ ] Apenas um aviso será exibido
   - [ ] O MySQL retorna um erro de integridade referencial
4. Qual dos seguintes comandos insere múltiplos registros na tabela `Alunos` corretamente?
   - [ ] `INSERT INTO Alunos VALUES ('Ana Souza', '2024001', 1), ('Carlos Oliveira', '2024002', 1);`
   - [ ] `INSERT INTO Alunos (nome, matricula, turma_id) VALUES ('Ana Souza', '2024001', 1), ('Carlos Oliveira', [ ]'2024002', 1);`
   - [ ] `ADD INTO Alunos (nome, matricula, turma_id) ('Ana Souza', '2024001', 1), ('Carlos Oliveira', '2024002', 1);`
   - [ ] `INSERT (nome, matricula, turma_id) INTO Alunos VALUES ('Ana Souza', '2024001', 1), ('Carlos Oliveira', '2024002', 1);`

------

## **3️⃣ Questões de Caixa de Seleção** (Múltiplas respostas corretas)

1. Quais boas práticas devem ser seguidas ao inserir dados no MySQL?
   - [ ] Definir corretamente as chaves primárias e estrangeiras
   - [ ] Seguir a ordem correta de inserção para manter a integridade referencial
   - [ ] Inserir valores arbitrários sem considerar restrições
   - [ ] Utilizar transações para garantir consistência dos dados
2. Sobre a tabela `Registro_Chamada`, quais colunas são chaves estrangeiras?
   - [ ] `aluno_id`
   - [ ] `disciplina_id`
   - [ ] `presenca`
   - [ ] `data_aula`

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os comandos SQL com suas respectivas descrições:

|                                                              | `ENUM` | `FOREIGN KEY` | `INSERT INTO` | `AUTO_INCREMENT` | `DEFAULT` |
| ------------------------------------------------------------ | ------ | ------------- | ------------- | ---------------- | --------- |
| Adiciona novos registros a uma tabela                        |        |               |               |                  |           |
| Define um relacionamento entre tabelas                       |        |               |               |                  |           |
| Define um valor padrão para uma coluna                       |        |               |               |                  |           |
| Restringe os valores permitidos em uma coluna                |        |               |               |                  |           |
| Permite que um campo numérico seja incrementado automaticamente |        |               |               |                  |           |



------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. No MySQL, o comando `INSERT INTO` pode ser utilizado para inserir um ou vários registros ao mesmo tempo. 
   - [ ] Verdadeiro
   - [ ] Falso
2. Ao inserir um registro em uma tabela que possui uma chave estrangeira, não há necessidade de que o valor exista na tabela referenciada.
   - [ ] Verdadeiro
   - [ ] Falso
3. Se omitirmos uma coluna ao inserir um registro, o MySQL preencherá essa coluna com `NULL`, desde que a coluna não tenha a restrição `NOT NULL`. 
   - [ ] Verdadeiro
   - [ ] Falso
4. O uso de `AUTO_INCREMENT` é obrigatório para todas as colunas do tipo `INT`.
   - [ ] Verdadeiro
   - [ ] Falso

------

✍️ **Agora responda às questões e teste seu conhecimento sobre Inserção de Dados no SGSA!** 🚀
# 📝 **Questões de Fixação – Capítulo 2: Definição de Relacionamentos**

## **1️⃣ Questões Dissertativas**

1. **Explique a importância dos relacionamentos em um banco de dados relacional.**
   - Discuta como os relacionamentos impactam a organização dos dados, a integridade das informações e a eficiência das consultas.
2. **Qual a diferença entre os relacionamentos 1:1, 1:N e N:M?**
   - Dê exemplos práticos de cada um e explique quando utilizá-los.
3. **O que acontece se um banco de dados não utilizar chaves estrangeiras corretamente?**
   - Explique como a ausência de `FOREIGN KEY` pode levar a inconsistências e dificuldades na manutenção dos dados.
4. **Descreva como um relacionamento N:M é implementado no MySQL.**
   - Explique a necessidade de uma **tabela intermediária** e demonstre sua aplicação prática em um sistema escolar.
5. **Como os relacionamentos ajudam a evitar a redundância de dados?**
   - Utilize um exemplo prático para demonstrar como a normalização e os relacionamentos reduzem a duplicação de informações.

------

## **2️⃣ Questões de Múltipla Escolha** *(Apenas uma alternativa correta)*

1. **O que caracteriza um relacionamento 1:N entre tabelas?**
   -  Cada registro em ambas as tabelas pode ter múltiplas correspondências
   -  Cada registro em uma tabela pode ter no máximo um correspondente na outra tabela
   -  Um registro em uma tabela pode estar relacionado a vários registros em outra tabela, mas não o contrário
   -  Não há restrições entre as tabelas
2. **Qual das opções abaixo representa um exemplo de relacionamento 1:1?**
   -  Um professor pode lecionar várias disciplinas
   -  Cada coordenador pode gerenciar apenas uma secretaria
   -  Uma turma pode ter vários alunos, mas cada aluno pertence a uma única turma
   -  Um aluno pode estar matriculado em várias disciplinas
3. **Por que tabelas intermediárias são necessárias para relacionamentos N:M?**
   -  Para evitar a duplicação de dados nas tabelas principais
   -  Para criar um novo tipo de relacionamento que não existe no MySQL
   -  Porque um banco relacional não permite múltiplas associações diretas entre duas tabelas
   -  Para substituir as chaves primárias das tabelas principais
4. **O que acontece se tentarmos inserir um registro em uma tabela que possui uma chave estrangeira (`FOREIGN KEY`), mas o valor referenciado não existir na tabela principal?**
   -  O MySQL cria automaticamente um registro correspondente na tabela referenciada
   -  O MySQL ignora a restrição e insere o valor sem problemas
   -  O MySQL retorna um erro de integridade referencial
   -  O registro é armazenado temporariamente até que a referência seja criada
5. **Qual dos seguintes comandos é usado para definir uma chave estrangeira (`FOREIGN KEY`) no MySQL?**
   -  `SET FOREIGN KEY`
   -  `NEW FOREIGN KEY`
   -  `UPDATE FOREIGN KEY`
   -  `FOREIGN KEY (coluna) REFERENCES tabela(coluna)`

------

## **3️⃣ Questões de Caixa de Seleção** *(Múltiplas respostas corretas)*

1. **Quais das alternativas abaixo são benefícios dos relacionamentos em bancos de dados?**
   -  Mantêm a integridade dos dados
   -  Reduzem a redundância de informações
   -  Facilitam a consulta de dados entre tabelas
   -  Eliminam a necessidade de índices
   -  Evitam completamente erros na modelagem de dados
2. **Sobre chaves estrangeiras (`FOREIGN KEY`), quais afirmações são corretas?**
   -  Garantem que um valor na tabela referenciada exista antes de ser inserido na tabela dependente
   -  Ajudam a manter a integridade referencial entre tabelas
   -  São obrigatórias em todos os bancos de dados relacionais
   -  Não podem ser usadas em tabelas que possuem chaves primárias compostas
3. **Quais das seguintes características se aplicam a relacionamentos N:M?**
   -  Precisam de uma tabela intermediária para serem implementados corretamente
   -  São usados quando múltiplos registros em uma tabela se relacionam com múltiplos registros em outra tabela
   -  São implementados apenas usando `VARCHAR`
   -  Eliminam completamente a necessidade de chaves primárias nas tabelas principais

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os conceitos de **relacionamentos em bancos de dados** com suas respectivas definições:

| **ID** | **Conceito**                          | **Descrição**                                                |
| ------ | ------------------------------------- | ------------------------------------------------------------ |
| 1      | **Relacionamento 1:1**                | 📌 Um registro em uma tabela está relacionado a no máximo um registro em outra tabela |
| 2      | **Relacionamento 1:N**                | 📌 Um registro em uma tabela pode estar relacionado a vários registros em outra tabela |
| 3      | **Relacionamento N:M**                | 📌 Um registro em uma tabela pode estar associado a múltiplos registros em outra, e vice-versa |
| 4      | **Chave Primária (`PRIMARY KEY`)**    | 📌 Identifica unicamente cada registro em uma tabela          |
| 5      | **Chave Estrangeira (`FOREIGN KEY`)** | 📌 Estabelece uma referência entre duas tabelas para manter a integridade dos dados |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. **Uma chave estrangeira (`FOREIGN KEY`) pode referenciar qualquer coluna de uma tabela, mesmo que essa coluna não seja uma chave primária.**
   -  Verdadeiro
   -  Falso
2. **Em um relacionamento 1:N, a chave estrangeira sempre é definida na tabela que possui múltiplos registros associados à outra.**
   -  Verdadeiro
   -  Falso
3. **Relacionamentos bem definidos ajudam a evitar redundância de dados e garantem a integridade referencial.**
   -  Verdadeiro
   -  Falso
4. **Uma tabela intermediária em um relacionamento N:M deve conter pelo menos duas chaves estrangeiras.**
   -  Verdadeiro
   -  Falso
5. **Relacionamentos entre tabelas podem ser criados sem a necessidade de chaves primárias e estrangeiras, pois o MySQL gerencia os relacionamentos automaticamente.**
   -  Verdadeiro
   -  Falso

------

### ✅ **Conclusão**

Estas questões foram desenvolvidas para reforçar o aprendizado do **Capítulo 2 - Definição de Relacionamentos**, abordando desde **conceitos fundamentais** até **implementação prática no MySQL**.

📢 **Agora é hora de testar seus conhecimentos!** 🚀

**Responda às questões, revise os conceitos abordados e fortaleça sua base na modelagem de relacionamentos em bancos de dados relacionais!** 🎓👨‍💻
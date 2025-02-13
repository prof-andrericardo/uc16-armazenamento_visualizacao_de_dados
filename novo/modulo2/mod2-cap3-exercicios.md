# 📝 **Questões de Fixação – Capítulo 3: Prática: Criando o Banco de Dados do SGSA**

## **1️⃣ Questões Dissertativas**

1. **Por que o planejamento e a modelagem do banco de dados são fundamentais antes de sua implementação?**
   - Explique a importância do planejamento no design de um banco de dados e como ele impacta o desempenho e a integridade das informações.
2. **Quais são as principais entidades do SGSA e como elas se relacionam?**
   - Descreva as tabelas principais do banco de dados e explique a relação entre elas.
3. **O que acontece se criarmos tabelas sem definir relacionamentos?**
   - Explique as consequências da ausência de chaves estrangeiras e como isso pode afetar a consistência dos dados.
4. **Qual a função da tabela intermediária `Professores_Disciplinas` no SGSA?**
   - Explique por que foi necessário criar essa tabela e como ela estrutura o relacionamento N:M entre professores e disciplinas.
5. **Quais boas práticas devem ser seguidas ao definir as tabelas de um banco de dados?**
   - Cite pelo menos três boas práticas e justifique sua importância.

------

## **2️⃣ Questões de Múltipla Escolha** *(Apenas uma alternativa correta)*

1. **Qual comando SQL é utilizado para criar o banco de dados do SGSA?**
   -  `NEW DATABASE SGSA;`
   -  `MAKE DATABASE SGSA;`
   -  `SET DATABASE SGSA;`
   -  `CREATE DATABASE SGSA;`
2. **O que o comando `USE SGSA;` faz no MySQL?**
   -  Cria um novo banco de dados chamado SGSA
   -  Deleta o banco de dados atual
   -  Define o banco SGSA como o banco de dados ativo para operações
   -  Garante que todas as tabelas sejam alteradas automaticamente
3. **Qual das tabelas abaixo precisa de uma chave estrangeira para manter a integridade referencial no SGSA?**
   -  `Professores`
   -  `Disciplinas`
   -  `Turmas`
   -  `Alunos`
4. **Por que a tabela `Professores_Disciplinas` foi criada no SGSA?**
   -  Para armazenar apenas o nome das disciplinas
   -  Para remover a necessidade de um relacionamento entre professores e disciplinas
   -  Para armazenar os horários das aulas de cada professor
   -  Para representar um relacionamento muitos para muitos (N:M) entre professores e disciplinas
5. **Qual dos seguintes comandos SQL define corretamente uma chave estrangeira (`FOREIGN KEY`) no MySQL?**
   -  `SET FOREIGN KEY aluno_id IN Alunos;`
   -  `NEW FOREIGN KEY aluno_id REFERENCES Alunos;`
   -  `FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno);`
   -  `LINK FOREIGN aluno_id FROM Alunos;`

------

## **3️⃣ Questões de Caixa de Seleção** *(Múltiplas respostas corretas)*

1. **Quais das tabelas abaixo fazem parte do banco de dados SGSA?**
   -  `Alunos`
   -  `Turmas`
   -  `Disciplinas`
   -  `Professores`
   -  `Pagamentos`
2. **Quais das boas práticas devem ser seguidas ao definir tabelas no MySQL?**
   -  Definir chaves primárias (`PRIMARY KEY`) para garantir a unicidade dos registros
   -  Criar chaves estrangeiras (`FOREIGN KEY`) para manter a integridade referencial
   -  Escolher os tipos de dados adequados para cada campo
   -  Criar tabelas sem chaves para facilitar inserções de dados
   -  Usar apenas o tipo `TEXT` para todos os campos
3. **Quais das seguintes afirmações sobre a tabela `Chamada` são verdadeiras?**
   -  Ela armazena registros de presença dos alunos
   -  Ela possui chaves estrangeiras para os alunos e disciplinas
   -  Cada aluno pode estar vinculado a várias turmas ao mesmo tempo
   -  Os valores de presença são definidos com o tipo `ENUM`

------

## **4️⃣ Questões de Associação de Colunas**

Associe corretamente os conceitos sobre a **criação do banco de dados SGSA** com suas respectivas definições:

| **ID** | **Conceito**                          | **Descrição**                                                |
| ------ | ------------------------------------- | ------------------------------------------------------------ |
| 1      | **`CREATE DATABASE`**                 | 📌 Comando para criar um novo banco de dados no MySQL         |
| 2      | **`USE`**                             | 📌 Define qual banco de dados será utilizado para operações   |
| 3      | **`CREATE TABLE`**                    | 📌 Comando utilizado para criar uma nova tabela dentro do banco de dados |
| 4      | **Chave Primária (`PRIMARY KEY`)**    | 📌 Identifica unicamente cada registro dentro de uma tabela   |
| 5      | **Chave Estrangeira (`FOREIGN KEY`)** | 📌 Estabelece uma relação entre tabelas garantindo integridade referencial |

------

## **5️⃣ Questões de Verdadeiro ou Falso**

1. **A tabela `Alunos` contém um campo `turma_id`, que é uma chave estrangeira (`FOREIGN KEY`) referenciando a tabela `Turmas`.**
   -  Verdadeiro
   -  Falso
2. **A criação de chaves estrangeiras (`FOREIGN KEY`) em um banco de dados relacional é opcional, mas recomendada para garantir integridade referencial.**
   -  Verdadeiro
   -  Falso
3. **No MySQL, podemos criar um banco de dados sem definir tabelas inicialmente.**
   -  Verdadeiro
   -  Falso
4. **A tabela `Professores_Disciplinas` é necessária no SGSA porque o relacionamento entre professores e disciplinas é um relacionamento 1:N.**
   -  Verdadeiro
   -  Falso
5. **Se um aluno for removido da tabela `Alunos`, todas as suas chamadas na tabela `Chamada` serão automaticamente removidas, pois existe uma chave estrangeira entre essas tabelas.**
   -  Verdadeiro
   -  Falso

------

### ✅ **Conclusão**

Essas questões foram cuidadosamente elaboradas para reforçar o aprendizado do **Capítulo 3 - Prática: Criando o Banco de Dados do SGSA**, abordando conceitos como **planejamento do banco de dados, criação de tabelas, relacionamentos e boas práticas no MySQL**.

📢 **Agora é sua vez!** 🚀

**Responda às questões, revise os conceitos e pratique a criação do banco de dados do SGSA no MySQL!** 🎓👨‍💻
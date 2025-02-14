# Aula 7: Conclusão do Capítulo 1 - Armazenamento e Visualização de Dados

## 7.1 Frase Motivadora

> “Sem dados, você é apenas mais uma pessoa com uma opinião.” — W. Edwards Deming

## 7.2 Introdução

Nesta aula, finalizaremos o Capítulo 1, revisando os principais conceitos abordados e explorando aplicações práticas. O objetivo é consolidar o aprendizado adquirido e destacar como as habilidades desenvolvidas podem ser aplicadas em projetos reais.

Os conceitos de armazenamento, organização e visualização de dados não são apenas técnicos, mas essenciais para resolver problemas do mundo moderno, desde organizações financeiras até aplicações pessoais.

------

## 7.3 Resumo dos Conceitos Abordados

### 7.3.1 Revisão de Comandos Essenciais

- Criação e Manipulação de Bancos de Dados:
  - `CREATE DATABASE`, `USE`, `DROP DATABASE`.
- Manipulação de Tabelas:
  - `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`.
- Comandos para Dados:
  - `INSERT INTO`, `SELECT`, `UPDATE`, `DELETE`.
- Cláusulas e Operadores:
  - `WHERE`, `ORDER BY`, `LIMIT`, `LIKE`, `AND`, `OR`.
- Funções Agregadas:
  - `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`.
- Relacionamento entre Tabelas:
  - Uso de `FOREIGN KEY` e `JOIN` para conectar tabelas.

### 7.3.2 Aplicações Práticas

- Criação de sistemas simples como:
  - Banco de dados para cadastro de clientes.
  - Registro de vendas conectando clientes, produtos e transações.
  - Geração de relatórios usando funções agregadas.

------

## 7.4 Atividades Práticas de Encerramento

### 7.4.1 Em Sala de Aula

1. **Projeto de Banco de Dados Final:**

   - Desenvolva um banco de dados chamado `sistema_escolar` com as tabelas:

     - **alunos:** `id_aluno`, `nome`, `email`.
     - **disciplinas:** `id_disciplina`, `nome_disciplina`.
     - **matriculas:** `id_matricula`, `id_aluno`, `id_disciplina`, `data_matricula`.

   - Relacione as tabelas `alunos` e `disciplinas` por meio da tabela `matriculas` usando chaves estrangeiras.

2. **Consultas Avançadas:**

   - Liste todos os alunos matriculados em uma disciplina específica.
   - Conte o número total de alunos matriculados em cada disciplina.
   - Encontre a disciplina com o maior número de alunos matriculados.

### 7.4.2 Para Casa

1. **Relatórios e Funções Agregadas:**
   - Crie uma consulta para calcular o total de alunos por disciplina e ordene o resultado em ordem decrescente.
   - Identifique disciplinas que possuem menos de 5 alunos matriculados.
2. **Exploração Avançada:**
   - Pesquise sobre índices compostos em MySQL e como eles podem melhorar a performance em consultas com múltiplas condições.

------

## 7.5 Fixação do Conteúdo

### 7.5.1 Questões Dissertativas

1. Explique a diferença entre uma `PRIMARY KEY` e uma `FOREIGN KEY`.
2. Por que o uso de funções agregadas é importante na análise de dados?
3. Qual a vantagem de utilizar `JOIN` em consultas ao invés de múltiplas subconsultas?

### 7.5.2 Questões de Múltipla Escolha

1. Qual comando é usado para excluir uma tabela?
   - a) `DROP TABLE`
   - b) `DELETE TABLE`
   - c) `REMOVE TABLE`
   - d) `CLEAR TABLE`

2. Qual das opções abaixo é uma função agregada no MySQL?

- a) `TOTAL`
- b) `COUNT`
- c) `GROUP`
- d) `ADD`

### 7.5.3 Questões de Associação de Colunas

Associe os comandos às suas funcionalidades:

1. **INSERT INTO** - a) Insere novos dados em uma tabela.
2. **SELECT** - b) Recupera dados de uma tabela.
3. **JOIN** - c) Relaciona dados entre tabelas.
4. **AVG** - d) Calcula a média de valores em uma coluna.
5. **FOREIGN KEY** - e) Define um relacionamento entre tabelas.

### 7.5.4 Questões de Verdadeiro ou Falso

1. O comando `DELETE` remove dados de uma tabela, mas não exclui a tabela.
2. A cláusula `WHERE` pode ser usada com funções agregadas sem restrições.
3. Uma `FOREIGN KEY` permite relacionar tabelas no banco de dados.

------

## 7.6 Conclusão

Finalizamos o Capítulo 1 com uma sólida compreensão de como armazenar, manipular e visualizar dados em bancos relacionais. As habilidades desenvolvidas, como criação de tabelas, uso de consultas SQL e funções agregadas, são fundamentais para lidar com problemas reais no mundo da tecnologia.

A partir daqui, estaremos prontos para avançar para tópicos mais complexos, como consultas avançadas e visualização de dados em sistemas modernos.
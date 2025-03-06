# **📂 Módulo 4: DQL - Data Query Language**

> **Objetivo**: Ensinar como recuperar e analisar dados do banco de dados do **SGSA** utilizando SQL, com exemplos práticos e explicações detalhadas sobre **filtros, ordenação, agrupamento e relacionamentos entre tabelas**.

### **📌 1. Introdução ao DQL**

- Definição e importância do **DQL (Data Query Language)**.
- Diferença entre **DQL, DML e DDL**.
- **O papel do DQL no SGSA**: Como recuperar e analisar informações do sistema.

------

### **📑 2. Consultas Básicas com `SELECT`**

#### **2.1 Sintaxe do `SELECT`**

- Exibindo todos os registros de uma tabela.
- Selecionando colunas específicas.

#### **2.2 Aplicação de `WHERE`: Filtrando Dados**

- Uso de operadores (`=`, `>`, `<`, `LIKE`, `BETWEEN`, `IN`, `NOT`).
- Filtrando alunos de uma turma específica.
- Filtrando ocorrências de um determinado tipo.

#### **2.3 Ordenação de Dados com `ORDER BY`**

- Ordenação crescente e decrescente (`ASC` e `DESC`).
- Ordenação por múltiplas colunas.
- Ordenação para relatórios do SGSA.

------

### **📊 3. Funções Agregadas e Agrupamento de Dados**

#### **3.1 Introdução às Funções Agregadas**

- Uso de `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`.
- Contando total de presenças por aluno.
- Calculando média de faltas por disciplina.

#### **3.2 Agrupamento de Dados com `GROUP BY`**

- Como agrupar registros para análise.
- Frequência de alunos por disciplina.
- Lista de alunos com maior número de ocorrências.

#### **3.3 Filtragem Pós-Agrupamento com `HAVING`**

- Diferença entre `WHERE` e `HAVING`.
- Selecionando apenas alunos com mais de 5 faltas.

------

### **🔗 4. Trabalhando com JOINs: Relacionando Tabelas**

#### **4.1 Conceito e Importância dos JOINs**

- O que são **JOINs** e por que usá-los?
- Tipos de JOINs: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`.

#### **4.2 `INNER JOIN`: Consultando Dados Relacionados**

- Listando alunos e suas turmas.
- Exibindo registros de chamada com nomes de alunos e disciplinas.

#### **4.3 `LEFT JOIN`: Buscando Registros Sem Correspondência**

- Exibir todos os alunos, mesmo sem presença registrada.
- Listando disciplinas, incluindo aquelas que ainda não possuem ocorrências.

#### **4.4 `JOIN` com Múltiplas Tabelas**

- Consultando alunos, turmas e disciplinas em uma única query.
- Gerando um relatório completo de chamada com todas as informações.

------

### **📈 5. Criando Relatórios no SGSA**

#### **5.1 Relatório de Frequência**

- Listagem de presença e ausência por aluno.
- Exibição de estatísticas de frequência por turma.

#### **5.2 Relatório de Ocorrências**

- Listagem de alunos com mais ocorrências.
- Análise de comportamento por tipo de ocorrência.

#### **5.3 Relatório de Desempenho Escolar**

- Média de presenças e ocorrências por disciplina.
- Identificação de padrões acadêmicos.

------

### **🚀 6. Prática e Exercícios**

- Criando consultas para **filtrar, ordenar e agrupar** dados do SGSA.
- Executando queries de **JOINs** para recuperar informações combinadas.
- Desenvolvendo relatórios escolares para **professores e coordenadores**.

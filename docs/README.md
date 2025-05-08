## 🧱 Capítulo 1 – Fundamentos de Banco de Dados

📌 Objetivo: Compreender o papel dos SGBDs e a arquitetura relacional  

### Conteúdos:
- O que é um Banco de Dados?  
- Conceito de SGBD  
- Tipos de Bancos (relacional vs não-relacional)  
- Instalação do MySQL  
- Interface do MySQL Workbench  
- Conectando ao servidor MySQL  

---

## 📐 Capítulo 2 – Modelagem Relacional e Normalização

📌 Objetivo: Aprender a projetar um banco relacional antes da implementação  

### Tópicos:
- Entidades e atributos  
- Relacionamentos (1:1, 1:N, N:N)  
- Diagrama ER (Entidade-Relacionamento)  
- Formas normais (1FN, 2FN, 3FN)  
- Cardinalidade e integridade referencial  

🧪 **Atividade prática**: Criar modelo conceitual do SGSA  

---

## 🧮 Capítulo 3 – Tipos de Dados no SQL

📌 **Objetivo**: Conhecer os principais tipos de dados disponíveis no MySQL e saber escolher o mais adequado para cada coluna.

### Tipos numéricos:

- `INT`, `SMALLINT`, `TINYINT`, `BIGINT`
- `DECIMAL(p,s)`, `FLOAT`, `DOUBLE`

### Tipos de texto:

- `CHAR(n)`, `VARCHAR(n)`
- `TEXT`, `TINYTEXT`, `MEDIUMTEXT`

### Tipos de data e hora:

- `DATE` → apenas data (`YYYY-MM-DD`)
- `DATETIME`, `TIMESTAMP` → data e hora
- `TIME`, `YEAR`

### Tipos lógicos e especiais:

- `BOOLEAN` (sinônimo de `TINYINT(1)`)
- `ENUM('valor1', 'valor2', ...)` → valores limitados
- `SET` → múltiplas opções em um mesmo campo (menos usado)

### Regras importantes:

- Escolher tipos adequados ajuda na performance
- Usar `NOT NULL` sempre que possível
- Preferir `VARCHAR` a `TEXT` quando for pesquisar/ordenar
- Tipos de data devem ser usados para facilitar filtros com `WHERE`, `BETWEEN`, `DATEDIFF`

---

## 🗂️ Capítulo 4 – Criação da Estrutura (DDL)

📌 Objetivo: Criar e organizar tabelas, colunas e chaves

### Comandos:
- `CREATE DATABASE` / `DROP DATABASE`
- `CREATE TABLE`, `DROP TABLE`
- `ALTER TABLE` (ADD, MODIFY, DROP)
- Tipos de dados (`INT`, `VARCHAR`, `DATE`, `BOOLEAN`, `DECIMAL`)
- Restrições: `PRIMARY KEY`, `UNIQUE`, `NOT NULL`, `DEFAULT`, `AUTO_INCREMENT`
- Chaves estrangeiras: `FOREIGN KEY`, `ON DELETE`, `ON UPDATE`

🧪 **Atividade prática**: Criar o modelo de um sistema escolar (SGSA)  

---

## 📥 Capítulo 5 – Manipulação de Dados (DML)

📌 Objetivo: Inserir, atualizar e remover dados

### Comandos:
- `INSERT INTO ... VALUES`
- `UPDATE ... SET ... WHERE`
- `DELETE FROM ... WHERE`
- Cuidados com a cláusula `WHERE`

🧪 **Atividade prática**: Preencher e alterar dados da tabela `alunos`

---

## 🔍 Capítulo 6 – Consultas com SELECT (DQL)

📌 Objetivo: Realizar consultas, filtros e ordenações

### Comandos:
- `SELECT` simples
- `SELECT DISTINCT`
- `WHERE` com operadores (`=`, `>`, `<`, `LIKE`, `BETWEEN`, `IN`, `IS NULL`)
- `ORDER BY` e `LIMIT`
- `ALIAS` com `AS`
- Funções de agregação: `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`
- `GROUP BY` e `HAVING`
- Uso de `CASE WHEN` para lógica condicional

🧪 **Atividade prática**: Consultar os alunos por turma, idade, notas etc.

---

## 🔗 Capítulo 7 – Relacionamentos e JOINs

📌 Objetivo: Trabalhar com múltiplas tabelas relacionadas  

### Tipos de JOINs:
- `INNER JOIN`, `LEFT/RIGHT JOIN`  
- `FULL OUTER JOIN` (simulado)  
- Junção com 3+ tabelas  
- Introdução a índices (`CREATE INDEX`)  

🧪 **Atividade prática**: Relacionar alunos, turmas e professores  

---

## ⚡ Capítulo 8 – Otimização de Consultas e Desempenho

📌 Objetivo: Aprender técnicas para consultas eficientes  

### Tópicos:
- Índices (`EXPLAIN`, `CREATE INDEX`)  
- Otimização de consultas  
- Full-Text Search (`MATCH() AGAINST()`)  
- Diferenças de desempenho entre engines  

🧪 **Atividade prática**: Analisar e otimizar consultas lentas  

---

## 🔐 Capítulo 9 – Controle de Transações (TCL)

📌 Objetivo: Garantir integridade nas alterações

### Comandos:
- `START TRANSACTION`
- `COMMIT`
- `ROLLBACK`
- `SAVEPOINT` / `ROLLBACK TO`

🧪 **Atividade prática**: Simular compra de produtos e uso de transações

---

## 🔑 Capítulo 10 – Controle de Acesso (DCL)

📌 Objetivo: Gerenciar permissões de usuários  

### Comandos:
- `CREATE USER` / `DROP USER`  
- `GRANT` / `REVOKE`  
- `SHOW GRANTS`  

🧪 **Atividade prática**: Criar roles para professores/alunos  

---

## 🧮 Capítulo 11 – Funções Avançadas e Subconsultas

📌 Objetivo: Dominar recursos complexos  

### Tópicos:
- Funções de string: `CONCAT`, `LENGTH`, `LOWER`, `UPPER`, `SUBSTRING`
- Funções de data: `NOW()`, `DATE_FORMAT`, `DATEDIFF`, `CURDATE()`
- Subconsultas em `WHERE`, `FROM`, `SELECT`
- Operadores: `EXISTS`, `ANY`, `ALL`
- `Window Functions`: `ROW_NUMBER()`, `RANK()`
- Criação de `VIEWS` para simplificar consultas complexas

🧪 **Atividade prática**: Criar relatórios avançados  

---

## 🧰 Capítulo 12 – Ferramentas e Boas Práticas

📌 Objetivo: Profissionalizar o uso do MySQL  

### Tópicos:
- MySQL Workbench (modelagem visual)  
- Nomenclatura padrão (snake_case, singularidade)
- Backup/Restore com `mysqldump`  
- Versionamento com Git  
- Documentação de bancos  

---

## 🗂 Capítulo 13 – Projeto Final: Implementando o SGSA

📌 Objetivo: Consolidar todos os conhecimentos em um projeto real

### Etapas:
- Modelagem conceitual e DER
- Criação do banco e tabelas no MySQL
- Inserção de dados reais (simulados)
- JOINs e subconsultas
- Relatórios com `GROUP BY`, `HAVING`, `CASE`
- Criação de usuários e permissões

🧪 **Atividade prática**: Avaliação final baseada no SGSA

---

## 🌟 Habilidades ao Final do Curso:
- Projetar bancos relacionais eficientes  
- Escrever consultas otimizadas  
- Gerenciar transações e permissões  
- Aplicar conhecimentos em projetos reais com MySQL  


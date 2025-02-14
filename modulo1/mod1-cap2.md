# 🏛 **Módulo 1: Fundamentos de Banco de Dados**

## 📖 **Capítulo 2 - Introdução à Linguagem SQL**

> **"Os dados são um recurso valioso, mas sem uma linguagem eficaz para manipulá-los, permanecem apenas fragmentos soltos de informação. SQL é a ponte que transforma dados brutos em conhecimento útil."**

### 📌 **Objetivo do capítulo**

Este capítulo apresenta a **Linguagem SQL (Structured Query Language)**, sua **história**, suas **principais características** e seus **subconjuntos de comandos**. Além disso, discutiremos sua **importância no mercado de trabalho** e no **desenvolvimento do SGSA**.

------

## 🏗 **2.1 História e Evolução do SQL**

### 📌 **O Surgimento da Linguagem SQL**

A **SQL (Structured Query Language)** foi desenvolvida na década de **1970** por pesquisadores da **IBM**, inspirados no modelo relacional de bancos de dados proposto por **Edgar F. Codd**. Seu objetivo era criar uma forma **padronizada e eficiente** de manipular grandes volumes de dados.

### 📌 **Evolução da SQL**

Desde sua criação, o SQL passou por diversas evoluções, tornando-se a linguagem **padrão para a comunicação com bancos de dados relacionais**.

📌 **Principais marcos históricos da SQL:**

- **1970** – Edgar F. Codd publica o artigo *"A Relational Model of Data for Large Shared Data Banks"*, estabelecendo a base dos bancos relacionais.
- **1974** – A IBM desenvolve a primeira versão do SQL, chamada SEQUEL (Structured English Query Language).
- **1986** – O **ANSI (American National Standards Institute)** oficializa a SQL como **linguagem padrão para bancos relacionais**.
- **1989-1992** – O **ISO (International Organization for Standardization)** reforça o padrão SQL, garantindo compatibilidade entre SGBDs.
- **2003 - presente** – Novas versões do SQL adicionam recursos como **XML, JSON, triggers, stored procedures e window functions**.

💡 **Curiosidade:** Atualmente, todos os principais bancos relacionais utilizam SQL como base, incluindo **MySQL, PostgreSQL, SQL Server e Oracle**.

------

## 🎯 **2.2 Principais Características da Linguagem SQL**

A SQL possui algumas características fundamentais que a tornam amplamente utilizada no mercado:

- ✔ **Linguagem declarativa:** O usuário descreve **o que** deseja obter, sem precisar especificar **como** o banco de dados deve executar a operação.
- ✔ **Independente de plataforma:** SQL pode ser usada em diferentes SGBDs (**MySQL, PostgreSQL, Oracle, SQL Server**).
- ✔ **Padrão ANSI:** Permite que comandos SQL sejam reutilizados em diferentes bancos, com poucas adaptações.
- ✔ **Simples e poderosa:** Com poucos comandos, é possível executar operações complexas sobre os dados.
- ✔ **Manipulação eficiente de grandes volumes de dados:** Otimizada para lidar com milhões (ou bilhões) de registros.

🔎 **Exemplo de um comando SQL básico:**

```sql
SELECT nome, matricula FROM Alunos WHERE turma_id = 3;
```

🎯 **Este comando retorna os nomes e as matrículas de todos os alunos da turma 3.**

💡 **Conclusão:** A SQL é uma linguagem poderosa e acessível, utilizada globalmente para manipular e gerenciar bancos de dados relacionais.

------

## 🔍 **2.3 Subconjuntos da SQL: DDL, DML, DQL, DCL e TCL**

A linguagem SQL é dividida em **subconjuntos**, cada um voltado para uma função específica na manipulação do banco de dados.

### 📌 **1️⃣ DDL – Data Definition Language (Linguagem de Definição de Dados)**

📢 **Responsável pela criação e estruturação do banco de dados.**

Comandos principais:

- `CREATE TABLE` – Cria uma nova tabela.
- `ALTER TABLE` – Modifica uma tabela existente.
- `DROP TABLE` – Exclui uma tabela.

🔎 **Exemplo:** Criando a tabela de alunos no SGSA:

```sql
CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

------

### 📌 **2️⃣ DML – Data Manipulation Language (Linguagem de Manipulação de Dados)**

📢 **Utilizada para inserir, atualizar e excluir dados nas tabelas.**

Comandos principais:

- `INSERT INTO` – Insere registros em uma tabela.
- `UPDATE` – Atualiza registros existentes.
- `DELETE` – Remove registros da tabela.

🔎 **Exemplo:** Inserindo um novo aluno no SGSA:

```sql
INSERT INTO Alunos (nome, matricula, turma_id)  
VALUES ('João Silva', '12345', 3);
```

------

### 📌 **3️⃣ DQL – Data Query Language (Linguagem de Consulta de Dados)**

📢 **Utilizada para consultar informações armazenadas no banco de dados.**

Comando principal:

- `SELECT` – Recupera dados das tabelas.

🔎 **Exemplo:** Consultando todos os alunos da turma 3:

```sql
SELECT * FROM Alunos WHERE turma_id = 3;
```

------

### 📌 **4️⃣ DCL – Data Control Language (Linguagem de Controle de Dados)**

📢 **Define permissões e acessos ao banco de dados.**

Comandos principais:

- `GRANT` – Concede permissões a usuários.
- `REVOKE` – Revoga permissões concedidas.

🔎 **Exemplo:** Permitindo que um professor visualize apenas as informações dos alunos:

```sql
GRANT SELECT ON Alunos TO 'professor1';
```

------

### 📌 **5️⃣ TCL – Transaction Control Language (Linguagem de Controle de Transações)**

📢 **Garante a integridade das operações no banco de dados.**

Comandos principais:

- `COMMIT` – Salva as alterações feitas na transação.
- `ROLLBACK` – Desfaz as alterações em caso de erro.

🔎 **Exemplo:** Garantindo a integridade dos dados:

```sql
START TRANSACTION;
UPDATE Alunos SET turma_id = 4 WHERE id_aluno = 10;
ROLLBACK; -- Desfaz a alteração caso ocorra um erro
```

------

## 📌 **2.4 Importância do SQL no Mercado e no SGSA**

### 💼 **SQL no Mercado de Trabalho**

Atualmente, SQL é **uma das habilidades mais requisitadas** em diversas áreas:
- ✔ **Desenvolvimento Web e Mobile** 📱
- ✔ **Administração de Bancos de Dados (DBA)** 🖥
- ✔ **Ciência de Dados e Inteligência Artificial** 📊
- ✔ **Gestão Empresarial e ERP** 🏢

🔎 **Exemplo real:**
 Uma loja de e-commerce precisa verificar **os produtos mais vendidos no último mês**. Um simples comando SQL pode gerar esse relatório automaticamente.

```sql
SELECT produto, COUNT(*) AS total_vendas  
FROM Pedidos  
WHERE data_compra >= '2024-01-01'  
GROUP BY produto  
ORDER BY total_vendas DESC;
```

### 🎓 **SQL no SGSA**

No **SGSA**, a SQL é utilizada para:
- ✔ **Gerenciar alunos, turmas e professores**.
- ✔ **Registrar chamadas e ocorrências disciplinares**.
- ✔ **Gerar relatórios detalhados sobre frequência e desempenho**.

------

## 🎓 **Conclusão**

✔ **SQL é a linguagem padrão para manipulação de bancos relacionais.**
 ✔ **Possui diferentes subconjuntos (DDL, DML, DQL, DCL, TCL).**
 ✔ **É amplamente utilizada no mercado e essencial para sistemas como o SGSA.**
 ✔ **Dominar SQL é um diferencial para qualquer profissional da área de tecnologia.**

Agora que conhecemos a **base do SQL**, podemos avançar para sua aplicação prática no desenvolvimento do **SGSA**! 🚀

# 📚 Aula 4: Criação de Tabelas no MySQL e Comandos DDL

## ✨ 4.1 Frase Reflexiva

> "A organização dos dados começa na estrutura correta das tabelas. Dominar a definição do banco é essencial para garantir a eficiência." — Autor Desconhecido

## 🏁 4.2 Introdução

As tabelas são a **base fundamental** de qualquer banco de dados relacional. Elas permitem armazenar informações de maneira estruturada, facilitando **consultas eficientes, integridade dos dados e escalabilidade do sistema**. Sem uma estrutura bem planejada, a recuperação e a manipulação dos dados podem se tornar lentas e ineficientes.

Nesta aula, você aprenderá:
✅ Como criar tabelas no MySQL.  
✅ A importância das **chaves primárias** e **chaves estrangeiras**.  
✅ Tipos de dados comuns no MySQL.  
✅ Boas práticas para a modelagem de tabelas.  
✅ O conceito e os principais comandos da **DDL (Data Definition Language)**.  
✅ Como visualizar as conexões entre tabelas através de um **fluxograma**.
✅ Fixação do aprendizado com questões variadas.
✅ Exercícios práticos para aplicação em sala e em casa.

Ao final, você será capaz de **definir e estruturar tabelas para armazenar dados de maneira eficiente**. 🚀

---

## 🔍 4.3 Desenvolvimento do Conteúdo

### **🛠️ 4.3.1 O que é DDL (Data Definition Language)?**

A **DDL (Linguagem de Definição de Dados)** é um subconjunto do SQL responsável por definir e modificar a estrutura do banco de dados. Os principais comandos da DDL são:

🔹 **CREATE** → Cria bancos de dados, tabelas, índices e outros objetos.  
🔹 **DROP** → Remove bancos de dados ou tabelas.  
🔹 **ALTER** → Modifica a estrutura de uma tabela existente.  
🔹 **TRUNCATE** → Remove todos os registros de uma tabela sem apagar sua estrutura.

Esses comandos são essenciais para a **organização inicial do banco de dados**, garantindo que sua estrutura atenda aos requisitos do sistema.

### **📌 4.3.2 Comandos DDL no MySQL**

#### **🔹 Criando um Banco de Dados (`CREATE DATABASE`)**
```sql
CREATE DATABASE sistema_escolar;
```
📌 **Explicação:** Esse comando cria um **novo banco de dados** para armazenar as informações. É o primeiro passo antes de criar tabelas.

#### **🔹 Criando Tabelas (`CREATE TABLE`)**
```sql
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE
);
```
📌 **Explicação:** Criamos a tabela `alunos` com três colunas e `id_aluno` como chave primária. Essa tabela armazenará os alunos cadastrados no sistema.

#### **🔹 Alterando Tabelas (`ALTER TABLE`)**
```sql
ALTER TABLE alunos ADD COLUMN telefone VARCHAR(15);
```
📌 **Explicação:** O comando `ALTER TABLE` adiciona a coluna `telefone` à tabela `alunos`, permitindo armazenar números de telefone dos alunos.

#### **🔹 Excluindo Tabelas (`DROP TABLE`)**
```sql
DROP TABLE alunos;
```
📌 **Explicação:** Esse comando exclui completamente a tabela `alunos` e todos os seus dados. Deve ser usado com cautela, pois a remoção é permanente.

#### **🔹 Limpando uma Tabela (`TRUNCATE TABLE`)**
```sql
TRUNCATE TABLE alunos;
```
📌 **Explicação:** O comando `TRUNCATE` remove todos os registros da tabela sem excluir sua estrutura, sendo útil para resetar dados sem recriar tabelas.

---

### **🔗 4.3.3 Relacionamento entre Tabelas**

📌 **Exemplo: Relacionamento entre `alunos`, `professores` e `aulas`.**

```sql
CREATE TABLE professores (
    id_professor INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE aulas (
    id_aula INT PRIMARY KEY,
    id_professor INT,
    data_aula DATE,
    conteudo TEXT,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);
```

📌 **Explicação:**
- A tabela `aulas` registra cada aula e seu conteúdo.
- `id_professor` é uma **chave estrangeira**, garantindo que apenas professores cadastrados possam ser vinculados a aulas.

---

## 📝 4.4 Fixação do Conteúdo

### **🖊️ Questões Dissertativas**

1. Explique a importância de uma chave primária em uma tabela.
2. Como as chaves estrangeiras garantem a integridade dos dados?

### **📝 Questões de Múltipla Escolha**

1. Qual comando é utilizado para modificar a estrutura de uma tabela existente no MySQL?
   - [ ] `UPDATE TABLE`
   - [ ] `CHANGE TABLE`
   - [ ] `ALTER TABLE`
   - [ ] `MODIFY TABLE`

2. Qual dos comandos abaixo remove todos os registros de uma tabela, mas mantém sua estrutura intacta?
   - [ ] `DELETE FROM`
   - [ ] `DROP TABLE`
   - [ ] `REMOVE DATA`
   - [ ] `TRUNCATE TABLE`

1. Qual comando é usado para criar uma tabela no MySQL?
   - [ ] `MAKE TABLE`
   - [ ] `CREATE TABLE`
   - [ ] `ADD TABLE`
   - [ ] `INSERT TABLE`


### **📋 Questões de Caixa de Seleção**

1. Marque os elementos essenciais para criar uma tabela funcional:
   - [ ] Nome da tabela
   - [ ] Chave primária
   - [ ] Comandos SELECT
   - [ ] Tipos de dados

### **🔗 Questões de Associação de Colunas**

1. Associe os comandos DDL às suas respectivas funções:
   - [ ] **CREATE TABLE** → ( ) Cria uma nova tabela no banco de dados.
   - [ ] **DROP TABLE** → ( ) Remove uma tabela e todos os seus dados.
   - [ ] **ALTER TABLE** → ( ) Modifica a estrutura de uma tabela existente.
   - [ ] **TRUNCATE TABLE** → ( ) Remove todos os registros de uma tabela, mantendo sua estrutura.

### **⚖️ Questões de Verdadeiro ou Falso**

1. O comando `CREATE TABLE` é usado para excluir uma tabela no MySQL.
2. O tipo de dado `VARCHAR` é usado para armazenar textos curtos.
3. O comando `ALTER TABLE` é usado para modificar a estrutura de uma tabela.
4. As chaves estrangeiras permitem a relação entre tabelas no banco de dados.

- [ ] F V V V  
- [ ] V F V V  
- [ ] V F F V  
- [ ] F V V V  

---

## 🏁 4.6 Conclusão

Nesta aula, você aprendeu:
✅ O que é **DDL (Data Definition Language)** e seus comandos principais.  
✅ Como **criar, modificar e excluir tabelas** no MySQL.  
✅ Como **estabelecer relações entre tabelas** usando **chaves primárias e estrangeiras**.  
✅ Como **visualizar a estrutura do banco de dados** usando fluxogramas.

📌 **Na próxima aula, vamos explorar inserção e consulta de dados no MySQL!** 🚀

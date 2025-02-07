# 📚 Aula 5: Manipulação de Dados no MySQL com DML

## ✨ 5.1 Frase Reflexiva

> "Os dados por si só não têm valor. O que realmente importa é como os manipulamos para extrair conhecimento e gerar impacto." — Autor Desconhecido

## 🏁 5.2 Introdução

Agora que aprendemos a **criar e estruturar** tabelas utilizando a **DDL (Data Definition Language)**, chegou a hora de manipular os dados dentro dessas tabelas. Para isso, utilizamos a **DML (Data Manipulation Language)**, que permite **inserir, atualizar e remover dados** dentro do banco de dados.

Nesta aula, você aprenderá: ✅ Como inserir registros em tabelas com `INSERT INTO`.
 ✅ Como atualizar informações com `UPDATE`.
 ✅ Como remover registros com `DELETE`.
 ✅ Como manipular múltiplos registros ao mesmo tempo.
 ✅ O funcionamento das cláusulas `WHERE`, `SET`, `FROM` e `VALUES`.
 ✅ Boas práticas para manipulação segura dos dados.
 ✅ Exercícios práticos para fixação do conteúdo.

Ao final, você será capaz de **inserir, atualizar e excluir dados de forma eficiente e segura**, aplicando as melhores práticas na manipulação de dados. 🚀

------

## 🔍 5.3 Desenvolvimento do Conteúdo

### **🛠️ 5.3.1 O que é DML (Data Manipulation Language)?**

A **DML (Linguagem de Manipulação de Dados)** é um subconjunto do SQL que permite **adicionar, modificar e excluir dados** dentro de tabelas já criadas. Diferente da **DDL**, que altera a estrutura do banco, a **DML modifica apenas os dados armazenados**.

Os três principais comandos da DML são:

| Comando       | Função                                     |
| ------------- | ------------------------------------------ |
| `INSERT INTO` | Insere novos registros em uma tabela       |
| `UPDATE`      | Atualiza dados já existentes em uma tabela |
| `DELETE`      | Remove registros de uma tabela             |

Esses comandos são amplamente utilizados em qualquer aplicação que armazene e manipule informações, desde **sistemas escolares até plataformas de e-commerce**.

------

### **📌 5.3.2 Explicação das Cláusulas**

#### **🔹 Cláusula `VALUES`**

A cláusula `VALUES` é utilizada em conjunto com o `INSERT INTO` para adicionar novos registros a uma tabela.

```sql
INSERT INTO alunos (id_aluno, nome, data_nascimento) 
VALUES (1, 'Carlos Silva', '2005-06-15');
```

📌 **Explicação:**

- Define os valores específicos a serem inseridos nas colunas da tabela.

#### **🔹 Cláusula `SET`**

A cláusula `SET` é utilizada no comando `UPDATE` para especificar quais valores devem ser alterados.

```sql
UPDATE alunos 
SET nome = 'Carlos S. Oliveira' 
WHERE id_aluno = 1;
```

📌 **Explicação:**

- `SET` define quais colunas serão modificadas e seus novos valores.
- É sempre recomendado usar `WHERE` para evitar alterar todos os registros.

#### **🔹 Cláusula `FROM`**

A cláusula `FROM` é utilizada no `DELETE` para indicar de qual tabela os registros serão excluídos.

```sql
DELETE FROM alunos WHERE id_aluno = 1;
```

📌 **Explicação:**

- `FROM` indica a tabela-alvo da remoção.
- Sem `WHERE`, todos os registros serão excluídos.

#### **🔹 Cláusula `WHERE`**

A cláusula `WHERE` é utilizada em `UPDATE` e `DELETE` para aplicar condições específicas e evitar alterações em massa indesejadas.

```sql
DELETE FROM alunos WHERE nome = 'Carlos Silva';
```

📌 **Explicação:**

- Filtra os registros a serem modificados ou removidos, garantindo precisão na manipulação.

------

## 📝 5.5 Fixação do Conteúdo

### **🖊️ Questões Dissertativas**

1. Explique a importância da cláusula `WHERE` ao utilizar os comandos `UPDATE` e `DELETE`.
2. Qual a diferença entre `DELETE` e `TRUNCATE` no MySQL?

### **📝 Questões de Múltipla Escolha**

1. Qual cláusula é utilizada para definir quais colunas serão modificadas em um `UPDATE`?
   - [ ] `FROM`
   - [ ] `SET`
   - [ ] `VALUES`
   - [ ] `WHERE`
2. O que acontece se um `DELETE` for executado sem a cláusula `WHERE`?
   - [ ] Nenhum registro será apagado.
   - [ ] Todos os registros da tabela serão excluídos.
   - [ ] Apenas o primeiro registro será removido.
   - [ ] O MySQL retornará um erro.
3. Qual cláusula é utilizada para definir quais colunas serão modificadas em um `UPDATE`?
   - [ ] `FROM`
   - [ ] `SET`
   - [ ] `VALUES`
   - [ ] `WHERE`
4. O que acontece se um `DELETE` for executado sem a cláusula `WHERE`?
   - [ ] Nenhum registro será apagado.
   - [ ] Todos os registros da tabela serão excluídos.
   - [ ] Apenas o primeiro registro será removido.
   - [ ] O MySQL retornará um erro.

### **📋 Questões de Caixa de Seleção**

1. Quais comandos fazem parte da DML?
   - [ ] `INSERT INTO`
   - [ ] `UPDATE`
   - [ ] `DELETE`
   - [ ] `ALTER TABLE`
2. Marque as cláusulas utilizadas na manipulação de dados:
   - [ ] `SET`
   - [ ] `WHERE`
   - [ ] `VALUES`
   - [ ] `DROP`
3. Quais comandos fazem parte da DML?
   - [ ] `INSERT INTO`
   - [ ] `UPDATE`
   - [ ] `DELETE`
   - [ ] `ALTER TABLE`
4. Marque as cláusulas utilizadas na manipulação de dados:
   - [ ] `SET`
   - [ ] `WHERE`
   - [ ] `VALUES`
   - [ ] `DROP`

### **🔗 Questões de Associação de Colunas**

1. Associe os comandos DML às suas funções:
   - **INSERT INTO** → ( ) Adiciona novos registros a uma tabela.
   - **UPDATE** → ( ) Modifica registros existentes.
   - **DELETE** → ( ) Remove registros de uma tabela.
2. Associe as cláusulas aos seus respectivos usos:
   - **SET** → ( ) Define novos valores em um `UPDATE`.
   - **WHERE** → ( ) Filtra os registros afetados por um comando.
   - **VALUES** → ( ) Define os valores inseridos em um `INSERT`.
   - **FROM** → ( ) Especifica a tabela de onde os dados serão removidos.

### **⚖️ Questões de Verdadeiro ou Falso**

1. O comando `DELETE` remove uma tabela inteira do banco de dados.
2. A cláusula `SET` é usada em conjunto com `INSERT INTO`.
3. A cláusula `WHERE` deve sempre ser usada no `UPDATE` para evitar alterações indesejadas.
4. O comando `INSERT INTO` permite a inserção de múltiplos registros em uma única execução.

- [ ] F V F V
- [ ] V F V V
- [ ] F F V V
- [ ] V F F V

------

## 🏁 5.6 Conclusão

Nesta aula, aprendemos a **manipular dados no MySQL** utilizando os comandos **DML (`INSERT`, `UPDATE` e `DELETE`)**. Além disso, exploramos **as cláusulas `WHERE`, `SET`, `FROM` e `VALUES`, fundamentais para a correta manipulação de dados**.

📌 **Na próxima aula, vamos aprofundar a execução de consultas com `SELECT`!** 🚀

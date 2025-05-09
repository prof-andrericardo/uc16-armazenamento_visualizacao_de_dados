# 📘 Capítulo 5 – Manipulando Dados com INSERT, UPDATE e DELETE (DML)

> ✍️ *“Os dados são a essência de um sistema. Manipulá-los com responsabilidade é o que garante sua utilidade.”*
>  — **IAra, a guardiã do SGSA**

------

## 🧭 Introdução Didática

Após criarmos a estrutura do banco de dados usando DDL, chegou a hora de dar vida às tabelas com registros reais. Este capítulo é um divisor de águas: você aprenderá a usar a **linguagem DML (Data Manipulation Language)** para **inserir, atualizar e excluir dados** do banco.

Mais do que decorar comandos, você precisa entender **por que e como utilizá-los com responsabilidade**, pois qualquer alteração feita por DML **modifica os dados ativos do sistema**. Em sistemas reais como o SGSA, isso significa afetar turmas, alunos, chamadas, lições e ocorrências da rotina escolar.

Vamos abordar **conceitos, sintaxe detalhada, boas práticas, erros comuns** e construir aos poucos os dados reais do SGSA.

------

## 📂 Missão do Capítulo

🎯 **"Você agora é o operador de dados do SGSA. Sua missão é inserir novas turmas, corrigir informações e remover registros com cuidado técnico, sempre garantindo a integridade dos dados."**

------

## 📌 O que é DML?

📘 **DML – Data Manipulation Language** é o subconjunto da linguagem SQL responsável por **modificar os dados existentes nas tabelas** de um banco. Ao contrário da DDL, que cria ou altera a estrutura das tabelas, a DML **atua sobre os dados inseridos nessas estruturas**.

------

## ✍️ Comando `INSERT INTO`

### 🔹 Finalidade:

Utilizado para **adicionar novos registros** em uma tabela existente.

### 🔹 Sintaxe geral:

```sql
INSERT INTO nome_tabela (coluna1, coluna2, ..., colunaN)
VALUES (valor1, valor2, ..., valorN);
```

- `nome_tabela`: nome da tabela onde o dado será inserido;
- `coluna1, ..., colunaN`: colunas que receberão os valores (na ordem);
- `valor1, ..., valorN`: valores a serem inseridos em cada coluna.

📌 **OBS:** os tipos de dados devem ser respeitados (ex: texto com aspas, datas no formato `'YYYY-MM-DD'`, etc).

------

### 🧪 Exemplo 1: Inserindo uma nova turma

```sql
INSERT INTO turmas (nome_turma)
VALUES ('1A');
```

📘 Explicação passo a passo:

- A tabela `turmas` tem duas colunas: `id_turma` (AUTO_INCREMENT) e `nome_turma`;
- Como `id_turma` é gerado automaticamente, não precisamos informá-lo;
- Estamos apenas dizendo: “adicione uma nova linha onde o nome da turma é ‘1A’”.

------

### 🧪 Exemplo 2: Inserindo múltiplas turmas

```sql
INSERT INTO turmas (nome_turma)
VALUES
  ('1B'),
  ('2A'),
  ('2B');
```

📘 Isso é chamado de **inserção em lote**. É mais eficiente e ocupa menos processamento do que vários `INSERT` individuais.

------

## 🔄 Comando `UPDATE`

### 🔹 Finalidade:

Usado para **alterar os dados existentes** em um ou mais registros da tabela.

### 🔹 Sintaxe geral:

```sql
UPDATE nome_tabela
SET coluna1 = valor1, coluna2 = valor2, ...
WHERE condicao;
```

- `nome_tabela`: tabela a ser atualizada;
- `SET`: define os novos valores para as colunas escolhidas;
- `WHERE`: define **quais linhas** devem ser afetadas.

⚠️ Sem `WHERE`, **todos os registros da tabela serão modificados**!

------

### 🧪 Exemplo 3: Corrigir o nome de uma turma

```sql
UPDATE turmas
SET nome_turma = '3A'
WHERE id_turma = 5;
```

📘 Explicação:

- O comando localiza a linha onde `id_turma = 5` e altera o valor de `nome_turma` para `'3A'`.
- Isso é útil, por exemplo, para corrigir erros de digitação.

------

### 🧪 Exemplo 4: Atualizar vários campos de um aluno

```sql
UPDATE alunos
SET nome = 'Ana Paula', data_nascimento = '2007-05-12'
WHERE id_aluno = 3;
```

📘 Esse comando atualiza duas colunas ao mesmo tempo: `nome` e `data_nascimento`. A cláusula `WHERE` garante que apenas o aluno com `id = 3` seja afetado.

------

## 🗑️ Comando `DELETE FROM`

### 🔹 Finalidade:

Utilizado para **remover registros** da tabela.

### 🔹 Sintaxe geral:

```sql
DELETE FROM nome_tabela
WHERE condicao;
```

⚠️ Muito importante: SEM `WHERE`, todos os dados da tabela serão apagados!

------

### 🧪 Exemplo 5: Excluir uma turma específica

```sql
DELETE FROM turmas
WHERE id_turma = 3;
```

📘 Esse comando localiza a linha onde `id_turma` é 3 e a remove da tabela.
 É como apagar a linha correspondente da planilha.

------

### ❗ Exemplo de risco: DELETE sem WHERE

```sql
DELETE FROM turmas;
```

🚨 Isso remove **TODOS OS REGISTROS** da tabela `turmas`. A estrutura da tabela permanece, mas os dados se perdem.

**⚠️ Nunca use DELETE sem WHERE em ambiente real.**

------

## 📦 Inserindo Dados Gradualmente no SGSA

```sql
-- Populando as turmas do SGSA
INSERT INTO turmas (nome_turma) VALUES
  ('1A'), ('1B'),
  ('2A'), ('2B'),
  ('3A'), ('3B');
```

🔄 No próximo capítulo, vamos fazer `INSERT`, `UPDATE` e `DELETE` nas tabelas `alunos`, `professores`, `aulas` e `ocorrencias`.

------

## 🧪 Boas Práticas e Erros Comuns

✅ **Boas práticas:**

- Sempre usar `WHERE` com `UPDATE` e `DELETE` para evitar alterações em massa;
- Utilizar aspas para textos (`VARCHAR`, `TEXT`) e datas;
- Fazer `SELECT` antes de `UPDATE` ou `DELETE` para confirmar o alvo.

⚠️ **Erros comuns:**

- Confundir `INSERT` com `UPDATE`;
- Esquecer de verificar se a coluna tem `NOT NULL`, gerando erro;
- Atualizar todos os dados acidentalmente por não usar `WHERE`.

🛠️ **Dica técnica:** Use `ROLLBACK;` se estiver em uma transação e cometer um erro de `DELETE`.

------

## 🎓 Conclusão Reflexiva

A DML é o motor que movimenta os dados no SGSA. É com ela que a escola registra presença, insere tarefas, atualiza cadastros e apaga informações obsoletas. Dominar `INSERT`, `UPDATE` e `DELETE` é garantir que o sistema funcione com precisão e responsabilidade.

*“Mexer nos dados é mexer na vida escolar. Faça isso com respeito técnico.”*

------

## 🧠 Seção de Fixação de Conteúdo (Revisada)

### ✅ 1. Questão Dissertativa

**Explique, com suas palavras, a diferença entre os comandos `INSERT`, `UPDATE` e `DELETE`. Dê um exemplo prático de uso de cada um no contexto do SGSA.**

------

### 🔘 2. Múltipla Escolha

**Qual comando é usado para modificar dados já existentes?**

-  INSERT
-  UPDATE
-  DELETE
-  CREATE

------

### ☑️ 3. Caixa de Seleção

**O que é importante ao usar os comandos DML?**

-  Usar WHERE no UPDATE e DELETE
-  Informar os campos obrigatórios no INSERT
-  Sempre apagar todos os dados antes de atualizar
-  Ter cuidado com comandos que não têm WHERE
-  Usar SELECT para apagar dados

------

### 🔗 4. Associação de Colunas

| Comando | Função Principal                                             |
| ------- | ------------------------------------------------------------ |
| INSERT  | (   ) Adiciona novos dados à tabela                          |
| UPDATE  | (   ) Altera dados existentes em uma ou mais colunas         |
| DELETE  | (   ) Remove registros existentes da tabela                  |
| WHERE   | (   ) Define a condição para afetar somente registros específicos |

------

### ✔️ 5. Verdadeiro ou Falso

1. O comando `DELETE FROM tabela;` sem `WHERE` apaga todos os dados. 
2. `INSERT` é usado para modificar dados existentes. 
3. `UPDATE` pode alterar vários campos ao mesmo tempo.
4. É seguro usar `DELETE` sem `WHERE` em ambiente de produção.

------

## 📚 Referências Complementares

- 📘 [Documentação MySQL – DML](https://dev.mysql.com/doc/refman/8.0/en/sql-statements.html)
- 🎥 [Curso em Vídeo – SQL Intermediário (DML)](https://www.youtube.com/playlist?list=PLHz_AreHm4dmGuLII3tsvryMMD7VgcT7x)
- 💬 [Stack Overflow em Português – DML](https://pt.stackoverflow.com/questions/tagged/sql)

------

#### ⏪ [Capítulo Anterior](<Capítulo 04 – Linguagem DDL: Criando Tabelas e Definindo Estruturas.md>)
#### 🏠 [Início](../README.md)
#### ⏩ [Próximo Capítulo](<./Capítulo 06 – SELECT e filtros (DQL).md>)

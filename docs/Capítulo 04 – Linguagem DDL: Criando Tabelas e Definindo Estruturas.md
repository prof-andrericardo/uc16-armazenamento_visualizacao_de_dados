# 📘 Capítulo 4 – Linguagem DDL: Criando Tabelas e Definindo Estruturas

> 🧱 *“Bons dados vêm de boas estruturas. E boas estruturas vêm de um bom projeto.”*
>  — **Donald D. Chamberlin** (co-criador da linguagem SQL)

------

## 🧭 Introdução Didática

Depois de planejarmos a estrutura de dados por meio da modelagem conceitual e normalização, chegou a hora de colocar a mão na massa! Neste capítulo, vamos explorar em profundidade a **linguagem DDL (Data Definition Language)**, usada para criar, alterar e remover objetos no banco de dados como tabelas, colunas, chaves e mais.

⚙️ A DDL é a base da construção do SGSA: é com ela que os blocos de informação se tornam estruturas reais no banco de dados MySQL.

------

## 📂 Missão do Capítulo

🎯 **"Você foi promovido a Administrador de Banco de Dados! Sua missão é começar a implementação das estruturas do SGSA, entendendo a fundo os comandos da DDL e criando as primeiras tabelas do sistema."**

------

## 🔍 O que é DDL?

📌 A sigla **DDL** significa **Data Definition Language**, ou **Linguagem de Definição de Dados**. Ela é responsável por definir e modificar a estrutura dos objetos no banco de dados.

### 🧱 Comandos principais da DDL:

| Comando    | Função principal                                          |
| ---------- | --------------------------------------------------------- |
| `CREATE`   | Cria novos bancos, tabelas, índices, etc.                 |
| `ALTER`    | Modifica estruturas já existentes                         |
| `DROP`     | Remove permanentemente bancos ou tabelas                  |
| `RENAME`   | Renomeia tabelas ou colunas                               |
| `TRUNCATE` | Remove todos os dados de uma tabela, mantendo a estrutura |

Vamos agora conhecer cada comando com detalhes, sintaxe e exemplos.

------

## 🧱 Comando `CREATE`

### 📌 O que faz:

Cria novos objetos no banco, como tabelas, bancos, índices, procedimentos, etc.

### 🧩 Estrutura básica:

```sql
CREATE TABLE nome_tabela (
  nome_coluna TIPO_DADO RESTRIÇÃO,
  ...
);
```

### 💡 Tipos de dados comuns:

| Tipo         | Uso típico                   |
| ------------ | ---------------------------- |
| `INT`        | Números inteiros             |
| `VARCHAR(n)` | Texto de até n caracteres    |
| `DATE`       | Datas no formato AAAA-MM-DD  |
| `TEXT`       | Texto longo                  |
| `ENUM`       | Lista de opções predefinidas |

------

## 💾 Criando o Banco de Dados SGSA

```sql
-- Criando o banco de dados principal
CREATE DATABASE sgsa;

-- Usando o banco de dados criado
USE sgsa;
```

------

## 🧪 Exemplo Inicial: Tabela `turmas`

```sql
CREATE TABLE turmas (
  id_turma INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da turma
  nome_turma VARCHAR(10) NOT NULL          -- Nome da turma (ex: 3A, 2B)
);
```

### 🔍 Explicação:

- `id_turma`: será a chave primária da tabela.
- `AUTO_INCREMENT`: gera automaticamente valores numéricos únicos.
- `NOT NULL`: não permite que o campo fique em branco.

Essa será a **primeira tabela real do SGSA**. Outras estruturas como `alunos`, `aulas`, `professores`, etc., serão criadas nos próximos capítulos conforme forem necessárias.

------

## ✏️ Comando `ALTER`

### 📌 O que faz:

Permite modificar a estrutura de uma tabela existente.

### 🔧 Exemplos de uso:

```sql
-- Adicionando uma nova coluna
ALTER TABLE turmas ADD COLUMN turno VARCHAR(20);

-- Modificando o tipo de uma coluna
ALTER TABLE turmas MODIFY COLUMN nome_turma VARCHAR(20);

-- Renomeando uma coluna
ALTER TABLE turmas CHANGE COLUMN turno periodo VARCHAR(15);
```

------

## 🗑️ Comando `DROP`

### 📌 O que faz:

Apaga objetos do banco de dados de forma definitiva.

### 🚫 Exemplo:

```sql
DROP TABLE turmas;
-- CUIDADO: todos os dados e estrutura serão apagados!
```

------

## 📝 Comando `RENAME`

### 📌 O que faz:

Renomeia uma tabela ou coluna existente.

### 🔄 Exemplo:

```sql
-- Renomeando a tabela de turmas para grupos
RENAME TABLE turmas TO grupos;
```

------

## 🧹 Comando `TRUNCATE`

### 📌 O que faz:

Remove todos os registros da tabela sem apagar sua estrutura (mais rápido que `DELETE`).

### 🧨 Exemplo:

```sql
TRUNCATE TABLE turmas;
```

------

## 🧪 Boas Práticas e Erros Comuns

✅ **Boas práticas**:

- Use nomes significativos e consistentes para tabelas e colunas.
- Crie o banco com `CREATE DATABASE` e selecione com `USE`.
- Utilize `AUTO_INCREMENT` em chaves primárias numéricas.

⚠️ **Erros comuns**:

- Criar tabelas fora de ordem, prejudicando relações futuras.
- Esquecer `NOT NULL` em campos obrigatórios.
- Usar nomes com espaços ou acentos.

🛠️ Dica: use `SHOW TABLES;` para listar as tabelas e `DESCRIBE nome_tabela;` para visualizar sua estrutura.

------

## 🎓 Conclusão Reflexiva

Entender e dominar a DDL é o primeiro passo para transformar seu planejamento em algo real. É aqui que você começa a ver seu banco de dados tomar forma. Com comandos simples, mas poderosos, você estrutura as bases que sustentarão todas as operações do SGSA.

*“Criar bem é criar com propósito. Cada tabela é uma peça no quebra-cabeça da informação escolar.”*

------

## 🧠 Seção de Fixação de Conteúdo

### ✅ 1. Questão Dissertativa

**Explique a função de cada comando DDL: `CREATE`, `ALTER`, `DROP`, `RENAME`, `TRUNCATE`. Dê exemplos práticos.**

------

### 🔘 2. Múltipla Escolha

**Qual comando é usado para remover todos os registros de uma tabela sem excluir sua estrutura?**

-  DELETE
-  DROP
-  TRUNCATE
-  REMOVE

------

### ☑️ 3. Caixa de Seleção

**Quais comandos pertencem à linguagem DDL?**

-  CREATE
-  DROP
-  ALTER
-  SELECT
-  UPDATE

------

### 🔗 4. Associação de Colunas

| Comando SQL | Função                                                       |
| ----------- | ------------------------------------------------------------ |
| CREATE      | (   ) Cria um objeto no banco de dados                       |
| ALTER       | (   ) Modifica a estrutura de uma tabela                     |
| DROP        | (   ) Apaga permanentemente uma tabela                       |
| RENAME      | (   ) Renomeia uma tabela ou coluna                          |
| TRUNCATE    | (   ) Apaga todos os dados de uma tabela, mantendo a estrutura |

------

### ✔️ 5. Verdadeiro ou Falso

1. O comando `ALTER` pode modificar o nome e tipo de uma coluna. ( )
2. `DROP TABLE` remove dados, mas mantém a tabela. ( )
3. `CREATE DATABASE` cria um banco de dados. ( )
4. `TRUNCATE` é mais rápido que `DELETE` para apagar todos os dados. ( )

-  V F V F
-  V F V V
-  F F V V
-  V V V F

------

## 📚 Referências Complementares

- 📘 [Documentação MySQL – DDL SQL Statements](https://dev.mysql.com/doc/refman/8.0/en/sql-statements.html)
- 🎥 [Curso em Vídeo – SQL para Iniciantes](https://www.youtube.com/playlist?list=PLHz_AreHm4dmGuLII3tsvryMMD7VgcT7x)
- 💬 [Stack Overflow em Português – SQL Básico](https://pt.stackoverflow.com/questions/tagged/sql)

------

```markdown
#### ⏪ [Capítulo Anterior](<Capítulo 02 – Modelagem Conceitual e Normalização até 3FN.md>)
#### 🏠 [Início](../README.md)
#### ⏩ [Próximo Capítulo](<Capítulo 04 – Manipulando Dados com INSERT, UPDATE e DELETE.md>)
```
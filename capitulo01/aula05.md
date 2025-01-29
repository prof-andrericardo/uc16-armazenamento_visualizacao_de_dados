# Aula 5: Inserção de Dados e Consultas Simples

## 5.1 Frase Motivadora

> “Dados são o novo petróleo, mas apenas quando refinados tornam-se úteis.” — Clive Humby

## 5.2 Introdução

Após criar tabelas, o próximo passo é preenchê-las com dados relevantes e aprender a recuperá-los de forma eficiente. Nesta aula, você aprenderá como inserir informações em tabelas usando o comando `INSERT INTO` e realizar consultas simples utilizando `SELECT`.

Esses comandos são fundamentais para manipular bancos de dados e acessar informações de forma organizada e prática.

------

## 5.3 Desenvolvimento do Conteúdo

### 5.3.1 Inserindo Dados em Tabelas

- **Comando Básico:**

```sql
INSERT INTO nome_tabela (coluna1, coluna2, ...) VALUES (valor1, valor2, ...);
```

- **Exemplo:** Inserindo dados na tabela `clientes`:

```sql
INSERT INTO clientes (id_cliente, nome, email) VALUES (1, 'João Silva', 'joao@email.com');
INSERT INTO clientes (id_cliente, nome, email) VALUES (2, 'Maria Souza', 'maria@email.com');
```

- Para inserir vários registros de uma vez:

```sql
INSERT INTO clientes (id_cliente, nome, email) VALUES 
(3, 'Carlos Pereira', 'carlos@email.com'),
(4, 'Ana Lima', 'ana@email.com');
```

**Erros Comuns ao Inserir Dados:**

- **Erro de chave primária duplicada:** Ao tentar inserir um registro com o mesmo valor da chave primária, o MySQL retorna um erro.
- **Falta de colunas obrigatórias:** Deixar de especificar valores para colunas que não permitem `NULL`.
- **Dado incompatível com o tipo da coluna:** Por exemplo, inserir texto em uma coluna do tipo `INT`.

**Como corrigir:**

- Verifique as definições das colunas antes de inserir os dados.
- Utilize valores únicos para chaves primárias.

### 5.3.2 Consultando Dados com SELECT

- **Comando Básico:**

```sql
SELECT coluna1, coluna2, ... FROM nome_tabela;
```

- **Exemplo:** Selecionando todos os dados da tabela `clientes`:

```sql
SELECT * FROM clientes;
```

- **Filtrando Resultados:** Utilizando a cláusula `WHERE`:

```sql
SELECT * FROM clientes WHERE nome = 'João Silva';
```

- **Ordenando Resultados:** Usando a cláusula `ORDER BY`:

```sql
SELECT * FROM clientes ORDER BY nome ASC;
```

- **Limitando Resultados:** Reduzindo o número de linhas retornadas com `LIMIT`:

```sql
SELECT * FROM clientes LIMIT 2;
```

### 5.3.3 Funções Agregadas

As funções agregadas permitem realizar cálculos em conjuntos de dados:

- **Contar registros (`COUNT`)**:

```sql
SELECT COUNT(*) FROM clientes;
```

- **Calcular médias (`AVG`)**:

```sql
SELECT AVG(preco) FROM produtos;
```

- **Somar valores (`SUM`)**:

```sql
SELECT SUM(estoque) FROM produtos;
```

Essas funções são úteis para relatórios e análises de dados.

### 5.3.4 Boas Práticas

- Sempre valide os dados antes de inseri-los para evitar erros.
- Utilize `SELECT *` apenas em casos onde todos os campos sejam realmente necessários.
- Para consultas específicas, informe os nomes das colunas desejadas.
- Teste as consultas em pequenos conjuntos de dados antes de aplicá-las em tabelas grandes.
- Utilize funções agregadas para otimizar relatórios e evitar processamentos desnecessários.

------

## 5.4 Atividades Práticas

### 5.4.1 Em Sala de Aula

1. Inserção de Dados no Terminal:
   - Insira três registros na tabela `produtos` com os seguintes dados:

```sql
INSERT INTO produtos (id_produto, nome_produto, preco, estoque) VALUES 
(1, 'Notebook', 3500.00, 10),
(2, 'Smartphone', 2000.00, 20),
(3, 'Fone de Ouvido', 150.00, 50);
```

1. Consulta de Dados:
   - Realize uma consulta para exibir todos os produtos com preço superior a 500:

```sql
SELECT * FROM produtos WHERE preco > 500;
```

1. Consulta com Função Agregada:
   - Liste o total de itens em estoque:

```sql
SELECT SUM(estoque) AS total_estoque FROM produtos;
```

### 5.4.2 Para Casa

1. **Prática no Workbench:**
   - Insira cinco registros na tabela `clientes` e realize consultas para listar os registros onde o nome contém a letra "a".
2. **Exploração:**
   - Teste a criação de uma consulta que liste os produtos com estoque abaixo de 20.
   - Use a função `COUNT` para contar quantos produtos têm estoque menor que 20.

------

## 5.5 Fixação do Conteúdo

### 5.5.1 Questões Dissertativas

1. Explique a diferença entre os comandos `INSERT INTO` e `SELECT`.
2. Por que é importante utilizar a cláusula `WHERE` em consultas?
3. Dê um exemplo prático de como a função `SUM` pode ser utilizada em relatórios de vendas.

### 5.5.2 Questões de Múltipla Escolha

1. Qual comando é usado para inserir dados em uma tabela no MySQL?
   - a) `INSERT INTO`
   - b) `ADD DATA`
   - c) `INPUT VALUES`
   - d) `INSERT DATA`

2. Qual das opções abaixo é usada para recuperar dados de uma tabela?

- a) `GET DATA`
- b) `FETCH DATA`
- c) `SELECT`
- d) `SHOW DATA`

### 5.5.3 Questões de Caixa de Seleção

1. Quais elementos são necessários para inserir dados em uma tabela?
   - Nome da tabela
   - Nomes das colunas
   - Valores a serem inseridos
2. Marque as cláusulas que podem ser usadas em consultas com `SELECT`:
   - `WHERE`
   - `ORDER BY`
   - `LIMIT`
   - `GROUP BY`

### 5.5.4 Questões de Associação de Colunas

Associe os comandos às suas finalidades:

1. **INSERT INTO** - a) Insere dados em uma tabela.
2. **SELECT** - b) Recupera dados de uma tabela.
3. **WHERE** - c) Filtra os resultados de uma consulta.
4. **ORDER BY** - d) Ordena os resultados de uma consulta.
5. **SUM** - e) Soma valores de uma coluna.

### 5.5.5 Questões de Verdadeiro ou Falso

1. O comando `INSERT INTO` pode ser usado para alterar dados em uma tabela.
2. A cláusula `WHERE` é usada para filtrar registros em uma consulta.
3. A função `COUNT` conta o número de linhas retornadas por uma consulta.

------

## 5.6 Conclusão

Nesta aula, você aprendeu como inserir dados em tabelas e realizar consultas básicas no MySQL, incluindo o uso de funções agregadas. Esses comandos formam a base para manipular e acessar dados de maneira eficaz. Na próxima aula, exploraremos como consolidar esses conceitos e aplicar consultas mais avançadas para atender diferentes cenários de uso.
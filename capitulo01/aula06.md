# Aula 6: Consolidação e Revisão

## 6.1 Frase Motivadora

> “O aprendizado nunca se esgota, quanto mais praticamos, mais consolidamos nosso conhecimento.” — Autor desconhecido

## 6.2 Introdução

Nesta aula, iremos consolidar todo o conteúdo aprendido ao longo das aulas anteriores, com foco na prática e na aplicação dos conceitos. Revisaremos comandos essenciais do MySQL, discutiremos suas aplicações e realizaremos atividades que conectem os diferentes temas abordados até agora. Este é um momento para reforçar os conhecimentos e preparar-se para desafios futuros.

------

## 6.3 Desenvolvimento do Conteúdo

### 6.3.1 Revisão dos Comandos Essenciais

- **Criação de Bancos de Dados e Tabelas:**

  - Revisão de `CREATE DATABASE` e `CREATE TABLE`.

  - Exemplos:

    ```sql
    CREATE DATABASE revisao_db;
    USE revisao_db;
    
    CREATE TABLE usuarios (
        id_usuario INT PRIMARY KEY,
        nome VARCHAR(50),
        email VARCHAR(50)
    );
    ```

- **Inserção de Dados:**

  - Revisão do comando `INSERT INTO`.

  - Exemplo:

    ```sql
    INSERT INTO usuarios (id_usuario, nome, email) VALUES (1, 'Ana', 'ana@email.com');
    ```

- **Consultas Simples:**

  - Revisão do comando `SELECT` e da cláusula `WHERE`.

  - Exemplo:

    ```sql
    SELECT * FROM usuarios WHERE nome LIKE 'A%';
    ```

### 6.3.2 Conceitos Avançados

- **Cláusula `ORDER BY`:** Ordenação de resultados.

  ```sql
  SELECT * FROM usuarios ORDER BY nome ASC;
  ```

- **Limitação de Resultados com `LIMIT`:**

  ```sql
  SELECT * FROM usuarios LIMIT 2;
  ```

- **Atualização de Dados com `UPDATE`:**

  ```sql
  UPDATE usuarios SET email = 'ana.nova@email.com' WHERE id_usuario = 1;
  ```

- **Funções Agregadas:**

  - Exemplo de contagem de usuários:

    ```sql
    SELECT COUNT(*) AS total_usuarios FROM usuarios;
    ```

  - Soma de valores agrupados com `GROUP BY`:

    ```sql
    SELECT id_usuario, COUNT(*) AS total_pedidos
    FROM vendas
    GROUP BY id_usuario;
    ```

- **JOIN entre Tabelas:**

  Relacionando dados de múltiplas tabelas:

  ```sql
  SELECT clientes.nome, produtos.nome_produto, vendas.data_venda
  FROM vendas
  INNER JOIN clientes ON vendas.id_cliente = clientes.id_cliente
  INNER JOIN produtos ON vendas.id_produto = produtos.id_produto;
  ```

### 6.3.3 Boas Práticas

- **Organização dos Bancos de Dados:**
  - Nomeie tabelas e colunas de forma clara e consistente.
  - Utilize índices em colunas frequentemente usadas em consultas para melhorar o desempenho.
- **Estratégias de Otimização:**
  - Evite duplicar dados entre tabelas; use relacionamentos como `FOREIGN KEY` para manter a integridade.
  - Prefira comandos como `JOIN` em vez de realizar múltiplas consultas separadas.

------

## 6.4 Atividades Práticas

### 6.4.1 Em Sala de Aula

1. **Criação de um Banco de Dados Consolidado:**
   - Crie um banco de dados chamado `sistema_loja`.
   - No banco, crie as tabelas:
     - **clientes:** `id_cliente`, `nome`, `email`.
     - **produtos:** `id_produto`, `nome_produto`, `preco`.
     - **vendas:** `id_venda`, `id_cliente`, `id_produto`, `data_venda`.
2. **Inserção e Consulta de Dados:**
   - Insira pelo menos 3 registros em cada tabela.
   - Realize consultas para listar todas as vendas realizadas por um cliente específico.
3. **Consulta com `JOIN`:**
   - Relacione os dados das tabelas `clientes`, `produtos` e `vendas` para exibir as vendas detalhadas, incluindo o nome do cliente, nome do produto e data da venda.

### 6.4.2 Para Casa

1. **Aprimoramento de Consultas:**
   - Crie uma consulta que liste os produtos vendidos em uma data específica.
   - Use uma função agregada como `SUM` para calcular o total de vendas em uma data.
2. **Exploração de Índices:**
   - Pesquise sobre a criação de índices em MySQL e aplique em colunas frequentemente usadas nas tabelas criadas.

------

## 6.5 Fixação do Conteúdo

### 6.5.1 Questões Dissertativas

1. Explique como o comando `ORDER BY` pode ser utilizado para organizar resultados de consultas.
2. Qual a importância de consolidar dados em diferentes tabelas de um banco de dados relacional?
3. Por que índices são importantes em bancos de dados?

### 6.5.2 Questões de Múltipla Escolha

1. Qual comando é usado para atualizar dados em uma tabela?
   - a) `ALTER`
   - b) `UPDATE`
   - c) `MODIFY`
   - d) `CHANGE`

2. O que o comando `LIMIT` faz em uma consulta SQL?

- a) Restringe o número de colunas exibidas.
- b) Restringe o número de linhas retornadas.
- c) Aplica filtros nos dados.
- d) Ordena os dados retornados.

### 6.5.3 Questões de Caixa de Seleção

1. Quais comandos podem ser utilizados para modificar dados em uma tabela?
   - `UPDATE`
   - `SELECT`
   - `DELETE`
   - `CREATE`
2. Quais cláusulas podem ser combinadas com o comando `SELECT`?
   - `WHERE`
   - `ORDER BY`
   - `LIMIT`
   - `GROUP BY`

### 6.5.4 Questões de Associação de Colunas

Associe os comandos às suas funcionalidades:

1. **INSERT INTO** - a) Insere dados em uma tabela.
2. **UPDATE** - b) Atualiza dados em uma tabela.
3. **ORDER BY** - c) Ordena os resultados de uma consulta.
4. **LIMIT** - d) Restringe o número de linhas retornadas.
5. **JOIN** - e) Relaciona dados de múltiplas tabelas.

### 6.5.5 Questões de Verdadeiro ou Falso

1. O comando `DELETE` é usado para modificar dados existentes em uma tabela.
2. A cláusula `ORDER BY` organiza os dados em ordem crescente ou decrescente.
3. O `JOIN` é utilizado para relacionar tabelas diferentes em uma consulta.

------

## 6.6 Conclusão

Nesta aula, consolidamos os principais conceitos e comandos do MySQL abordados até agora. Você revisou como criar e manipular bancos de dados, inseriu e consultou dados e explorou novos conceitos, como ordenação, funções agregadas e `JOIN` para relacionar tabelas. Esse conhecimento é a base para avançar para operações mais complexas e realizar análises de dados eficazes.
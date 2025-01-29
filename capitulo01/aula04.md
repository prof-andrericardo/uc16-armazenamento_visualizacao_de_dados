# Aula 4: Criação de Tabelas no MySQL

## 4.1 Frase Motivadora

> “Dados bem organizados são o primeiro passo para transformar informação em conhecimento.” — Autor Desconhecido

## 4.2 Introdução

As tabelas são a estrutura fundamental de qualquer banco de dados relacional. Elas organizam os dados em linhas e colunas, permitindo que informações sejam armazenadas de maneira consistente e recuperadas com facilidade. Nesta aula, você aprenderá como criar tabelas no MySQL, compreenderá a importância das chaves primárias e dos tipos de dados, e praticará a criação de tabelas para diferentes finalidades.

Entender a estrutura das tabelas é crucial para criar bases de dados robustas e escaláveis.

------

## 4.3 Desenvolvimento do Conteúdo

### 4.3.1 Estrutura Básica de uma Tabela

Uma tabela é composta pelos seguintes elementos principais:

- **Colunas:** Representam os atributos ou características dos dados (ex.: nome, idade, email).
- **Linhas:** Cada linha representa um registro único (ex.: uma pessoa ou um produto).
- Chave Primária:
  - Identifica de forma única cada registro na tabela.
  - Deve conter valores únicos e não nulos.
- Chave Estrangeira:
  - Relaciona tabelas diferentes, criando uma conexão entre os dados.
  - Exemplo: Em uma tabela de "pedidos", a chave estrangeira pode ser o identificador do cliente que realizou o pedido.

### 4.3.2 Tipos de Dados Comuns no MySQL

Ao criar uma tabela, é necessário definir o tipo de dado de cada coluna. Alguns dos mais utilizados são:

- **INT:** Números inteiros (ex.: id, idade).
- **VARCHAR:** Cadeias de caracteres com comprimento variável (ex.: nomes, endereços de email).
- **DATE:** Datas no formato ‘YYYY-MM-DD’.
- **DECIMAL:** Números com ponto flutuante para valores monetários (ex.: preços).
- **TEXT:** Armazena grandes blocos de texto.
- **BLOB:** Dados binários como imagens ou arquivos.
- **TIMESTAMP:** Representa data e hora.

### 4.3.3 Comandos para Criação de Tabelas

**Criando uma Tabela Básica:**

```sql
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50)
);
```

**Explicação dos Campos:**

- `id_cliente`: Chave primária, identificador único do cliente.
- `nome`: Nome do cliente, com limite de até 50 caracteres.
- `email`: Endereço de email do cliente, também com limite de 50 caracteres.

**Exemplo de Tabela Relacionada com Chave Estrangeira:**

```sql
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
```

- `id_pedido`: Identificador único do pedido.
- `id_cliente`: Identificador do cliente que realizou o pedido (chave estrangeira).
- `data_pedido`: Data em que o pedido foi realizado.
- `total`: Valor total do pedido.

**Diagrama Simples:**

- **clientes**
  - id_cliente (PK)
  - nome
  - email
- **pedidos**
  - id_pedido (PK)
  - id_cliente (FK para clientes)
  - data_pedido
  - total

### 4.3.4 Boas Práticas

- Utilize nomes claros e descritivos para tabelas e colunas.
- Planeje os tipos de dados com base na natureza dos dados que serão armazenados.
- Sempre defina chaves primárias para identificar registros únicos.
- Use chaves estrangeiras para evitar redundância e manter a integridade dos dados.
- Evite tipos de dados desnecessariamente grandes, pois isso pode impactar o desempenho.

------

## 4.4 Atividades Práticas

### 4.4.1 Em Sala de Aula

1. **Criar Tabelas no Terminal:**

   - Utilize o MySQL no terminal para criar as tabelas `clientes` e `pedidos`.

   - Execute os comandos `DESCRIBE` para verificar a estrutura das tabelas criadas:

     ```sql
     DESCRIBE clientes;
     DESCRIBE pedidos;
     ```

2. **Discussão:**

   - Por que é importante definir corretamente os tipos de dados ao criar uma tabela?
   - Como as chaves estrangeiras ajudam na organização de bancos de dados?

### 4.4.2 Para Casa

1. **Criação de Tabelas no Workbench:**

   - No MySQL Workbench, crie uma tabela chamada `produtos` com os seguintes campos:

     - `id_produto` (INT, chave primária)
     - `nome_produto` (VARCHAR)
     - `preco` (DECIMAL)
     - `estoque` (INT)

   - Em seguida, relacione esta tabela com a tabela `pedidos` adicionando um campo `id_produto` como chave estrangeira na tabela `pedidos`:

     ```sql
     ALTER TABLE pedidos ADD id_produto INT;
     ALTER TABLE pedidos ADD FOREIGN KEY (id_produto) REFERENCES produtos(id_produto);
     ```

2. **Pesquisa:**

   - Investigue outros tipos de dados no MySQL (ex.: `ENUM`, `SET`) e traga exemplos práticos de uso.

------

## 4.5 Fixação do Conteúdo

### 4.5.1 Questões Dissertativas

1. Explique a importância de uma chave primária em uma tabela.
2. Por que é essencial planejar os tipos de dados ao criar uma tabela?
3. Qual a função de uma chave estrangeira em bancos de dados relacionais?

### 4.5.2 Questões de Múltipla Escolha

1. Qual comando é usado para criar uma tabela no MySQL?
   - a) `MAKE TABLE`
   - b) `CREATE TABLE`
   - c) `ADD TABLE`
   - d) `INSERT TABLE`

2. Qual das opções abaixo é um tipo de dado válido no MySQL?

- a) TEXTUAL
- b) VARCHAR
- c) CHARACTER
- d) FLOATING

### 4.5.3 Questões de Caixa de Seleção

1. Quais dos seguintes são tipos de dados no MySQL?
   - INT
   - DATE
   - BLOB
   - DECIMAL
2. Marque os elementos necessários para criar uma tabela funcional:
   - Nome da tabela
   - Tipos de dados
   - Chave primária
   - Chave estrangeira

### 4.5.4 Questões de Associação de Colunas

Associe os tipos de dados às suas finalidades:

1. **INT** - a) Armazenar números inteiros.
2. **VARCHAR** - b) Armazenar textos curtos.
3. **DATE** - c) Armazenar datas.
4. **DECIMAL** - d) Armazenar valores monetários.
5. **BLOB** - e) Armazenar dados binários.

### 4.5.5 Questões de Verdadeiro ou Falso

1. O comando `CREATE TABLE` é usado para excluir uma tabela no MySQL. 
2. O tipo de dado `VARCHAR` é usado para armazenar textos curtos.
3. As chaves estrangeiras ajudam a relacionar tabelas diferentes.

------

## 4.6 Conclusão

Nesta aula, você aprendeu como criar tabelas no MySQL, incluindo a definição de chaves primárias, estrangeiras e tipos de dados. Também exploramos como relacionar tabelas para manter a integridade dos dados.

Na próxima aula, exploraremos como inserir e consultar dados nas tabelas criadas, ampliando ainda mais sua capacidade de trabalhar com bancos de dados.
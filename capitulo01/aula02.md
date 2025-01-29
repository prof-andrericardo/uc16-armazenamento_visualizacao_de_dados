# Aula 2: Conceitos Fundamentais de Banco de Dados

## 2.1 Frase Motivadora

> “Sem dados, você é apenas mais uma pessoa com uma opinião.” — W. Edwards Deming

## 2.2 Introdução

Os bancos de dados são o coração de muitas aplicações modernas. Eles permitem o armazenamento, organização e recuperação eficiente de informações, sendo a base de sistemas como redes sociais, lojas virtuais, aplicativos financeiros e até hospitais.

Nesta aula, vamos explorar os principais conceitos que estruturam um banco de dados, suas diferenças entre dados estruturados e não estruturados, e o funcionamento básico de tabelas, linhas e colunas. Além disso, daremos os primeiros passos na utilização do MySQL para criar um banco de dados simples.

## 2.3 Desenvolvimento do Conteúdo

### 2.3.1 O que é um Banco de Dados?

- **Definição:** Um banco de dados é uma coleção organizada de informações que podem ser facilmente acessadas, gerenciadas e atualizadas.
  - **Exemplo prático:** Imagine um banco de dados como uma biblioteca organizada por categorias. Cada prateleira (tabela) possui livros (linhas), e cada livro tem características como título, autor e gênero (colunas).

- **Objetivo:** Garantir que dados sejam armazenados de forma eficiente, segura e fácil de acessar.

### 2.3.2 Tipos de Dados em um Banco de Dados

- **Estruturados:**
  - **Definição:** Dados organizados em tabelas com linhas e colunas, facilitando a busca e o processamento.
  - **Exemplo:** Tabela de clientes com nome, telefone e e-mail.

    ```plaintext
    | ID  | Nome       | Telefone       | E-mail             |
    |-----|------------|----------------|--------------------|
    | 1   | João Silva | (11) 99999-9999 | joao@email.com     |
    | 2   | Maria Souza| (21) 88888-8888 | maria@email.com    |
    ```

- **Não Estruturados:**
  - **Definição:** Dados sem uma organização fixa, como imagens, áudios, vídeos e documentos de texto.
  - **Exemplo:** Uma foto ou vídeo postado em uma rede social.

- **Semi-Estruturados:**
  - **Definição:** Dados com uma estrutura parcial, como arquivos JSON ou XML.
  - **Exemplo:** Um arquivo JSON que organiza dados de produtos.

    ```json
    {
        "id": 1,
        "nome": "Notebook",
        "preco": 3500.00,
        "estoque": 10
    }
    ```

### 2.3.3 Componentes de um Banco de Dados Relacional

- **Tabelas:**
  - Estruturas que armazenam dados em formato tabular (linhas e colunas).

- **Linhas:**
  - Cada linha representa um registro único. Por exemplo, um cliente ou uma venda.

- **Colunas:**
  - Cada coluna representa um atributo ou campo do registro, como "nome" ou "preço".

- **Chaves Primárias:**
  - Identificadores únicos para os registros. Exemplo: "ID" em uma tabela de clientes.

- **Chaves Estrangeiras:**
  - Relacionam tabelas diferentes, criando conexões entre dados. Exemplo: Um pedido vinculado a um cliente.

### 2.3.4 Exemplo Prático

Vamos criar uma tabela no MySQL para armazenar dados de clientes:

```sql
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50)
);
```

**Explicação dos Campos:**
- `id_cliente`: Identificador único do cliente.
- `nome`: Nome do cliente (até 50 caracteres).
- `email`: Endereço de e-mail do cliente.

Atividade:
- Crie uma tabela similar no MySQL Workbench e insira dois registros fictícios. Por exemplo:

```sql
INSERT INTO clientes (id_cliente, nome, email) VALUES (1, 'João Silva', 'joao@email.com');
INSERT INTO clientes (id_cliente, nome, email) VALUES (2, 'Maria Souza', 'maria@email.com');
```

---

## 2.4 Atividades Práticas

### 2.4.1 Em Sala de Aula

1. **Exercício no Terminal:**
   - Acesse o MySQL na máquina virtual Debian e crie a tabela `clientes` usando os comandos acima.
   - Insira dois registros fictícios na tabela.

2. **Discussão em Grupos:**
   - Liste exemplos de dados estruturados e não estruturados utilizados em redes sociais ou aplicativos.

### 2.4.2 Para Casa

1. **Pesquisa:**
   - Descubra por que as chaves primárias são essenciais para bancos de dados relacionais. Escreva um parágrafo explicativo.

2. **Prática no MySQL Workbench:**
   - Crie uma tabela chamada `produtos` com os seguintes campos:
     - `id_produto` (INT, chave primária)
     - `nome_produto` (VARCHAR)
     - `preco` (DECIMAL)
   - Insira dois registros fictícios e prepare uma consulta SQL para exibir os dados inseridos.

---

## 2.5 Fixação do Conteúdo

### 2.5.1 Questões Dissertativas

1. Explique a diferença entre tabelas, linhas e colunas em um banco de dados relacional.
2. Por que as chaves primárias são essenciais para a organização e integridade dos dados?

### 2.5.2 Questões de Múltipla Escolha

1. Qual das opções abaixo define corretamente uma chave primária?
   - a) Um campo que aceita valores duplicados.
   - b) Um identificador único para os registros de uma tabela.
   - c) Uma coluna opcional em uma tabela.
   - d) Um tipo de dado não estruturado.

2. Qual das opções é um exemplo de dado estruturado?
   - a) Um vídeo no YouTube.
   - b) Uma tabela de produtos com preços.
   - c) Uma imagem postada em uma rede social.
   - d) Um áudio gravado em um celular.

### 2.5.3 Questões de Verdadeiro ou Falso

1. Um banco de dados relacional armazena dados em formato de tabelas. 
2. Dados não estruturados podem ser facilmente organizados em linhas e colunas.

---

## 2.6 Conclusão

Nesta aula, você aprendeu:
- O conceito de banco de dados e como ele organiza informações em tabelas, linhas e colunas.
- A diferença entre dados estruturados, semi-estruturados e não estruturados.
- Como criar uma tabela básica no MySQL, inserindo dados e iniciando consultas simples.

Esses conhecimentos são fundamentais para avançar no curso e entender a base das aplicações modernas. Na próxima aula, exploraremos a criação e manipulação de bancos de dados mais complexos.
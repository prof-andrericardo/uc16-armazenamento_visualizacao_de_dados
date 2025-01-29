# Aula 3: Introdução ao MySQL

## 3.1 Frase Motivadora

> “Sem bancos de dados, o mundo digital seria como uma biblioteca sem catálogo.” — Autor Desconhecido

## 3.2 Introdução

O MySQL é um dos sistemas de gerenciamento de bancos de dados relacionais mais populares no mundo. Ele permite criar, acessar e manipular dados de maneira eficiente e é amplamente utilizado em aplicações web, sistemas corporativos e até em projetos acadêmicos.

Nesta aula, exploraremos como configurar o ambiente de trabalho, aprenderemos os comandos básicos e criaremos nosso primeiro banco de dados. Você estará iniciando uma jornada prática para trabalhar com dados estruturados utilizando o MySQL.

## 3.3 Desenvolvimento do Conteúdo

### 3.3.1 Configuração do Ambiente

**Acesso ao MySQL no Terminal:**

- Acesse o MySQL utilizando o terminal em sua máquina virtual Debian 12.9.
- Comando básico para iniciar o MySQL:

```bash
mysql -u root -p
```

- Ao executar este comando, você será solicitado a digitar a senha do usuário "root".

**Acesso ao MySQL Workbench:**

- O MySQL Workbench é uma interface gráfica que facilita a manipulação de bancos de dados.
- Passos:
  1. Abra o MySQL Workbench e configure uma conexão utilizando as credenciais de acesso (usuário, senha e hostname).
  2. Explore as ferramentas visuais para executar comandos e visualizar estruturas de tabelas.

### 3.3.2 Comandos Básicos no MySQL

**Gerenciamento de Bancos de Dados:**

1. Criar um banco de dados:

```sql
CREATE DATABASE loja_virtual;
```

1. Listar bancos de dados existentes:

```sql
SHOW DATABASES;
```

1. Selecionar um banco de dados para uso:

```sql
USE loja_virtual;
```

**Boas Práticas:**

- Utilize nomes descritivos para bancos de dados e tabelas.
- Revise comandos antes de executá-los para evitar erros e impactos desnecessários.

------

## 3.4 Atividades Práticas

### 3.4.1 Em Sala de Aula

1. **Configuração do Ambiente:**
   - Acesse o MySQL no terminal e configure uma nova conexão no MySQL Workbench.
2. **Criação de Banco de Dados:**
   - Utilize o comando `CREATE DATABASE` para criar um banco de dados chamado `escola_digital`.
3. **Exploração de Comandos:**
   - Liste os bancos de dados criados utilizando `SHOW DATABASES`.
   - Selecione o banco `escola_digital` com o comando `USE`.

### 3.4.2 Para Casa

1. **Exploração no Workbench:**
   - Crie um banco de dados chamado `biblioteca_virtual`.
   - Experimente criar tabelas neste banco, mesmo que simples.
2. **Pesquisa:**
   - Pesquise sobre a importância de bancos de dados em aplicações web e traga exemplos de sites ou sistemas que dependem de bancos de dados (ex.: e-commerce, redes sociais).

------

## 3.5 Fixação do Conteúdo

### 3.5.1 Questões Dissertativas

1. Explique a diferença entre os comandos `CREATE DATABASE` e `USE` no MySQL.
2. Por que é importante usar nomes descritivos ao criar bancos de dados?

### 3.5.2 Questões de Múltipla Escolha

1. Qual comando é usado para listar todos os bancos de dados em um servidor MySQL?
   - a) `LIST DATABASES`
   - b) `SHOW DATABASES`
   - c) `DISPLAY DATABASES`
   - d) `VIEW DATABASES`

2. Qual comando é usado para criar um novo banco de dados?

- a) `NEW DATABASE`
- b) `CREATE DATABASE`
- c) `MAKE DATABASE`
- d) `ADD DATABASE`

### 3.5.3 Questões de Caixa de Seleção

1. Quais comandos são usados no gerenciamento de bancos de dados no MySQL?
   - `CREATE DATABASE`
   - `USE`
   - `REMOVE TABLE`
   - `DELETE COLUMN`
2. Marque os itens que descrevem corretamente o MySQL Workbench:
   - Interface gráfica para gerenciar bancos de dados.
   - Ferramenta exclusiva para backup de dados.
   - Permite criar tabelas e consultar dados visualmente.
   - Substitui completamente o terminal MySQL.

### 3.5.4 Questões de Associação de Colunas

Associe os comandos MySQL às suas funções:

1. **CREATE DATABASE** - a) Seleciona um banco de dados para uso.
2. **SHOW DATABASES** - b) Lista todos os bancos de dados existentes.
3. **USE** - c) Cria um novo banco de dados.

### 3.5.5 Questões de Verdadeiro ou Falso

1. O comando `USE` é usado para criar um novo banco de dados.
2. O MySQL Workbench é uma ferramenta gráfica para gerenciar bancos de dados.

------

## 3.6 Conclusão

Nesta aula, você aprendeu como configurar o ambiente MySQL, acessar o terminal e o Workbench, e executar comandos básicos para criar e selecionar bancos de dados. Essas habilidades são cruciais para manipular dados de maneira eficiente e iniciar o desenvolvimento de sistemas baseados em bancos de dados.

Na próxima aula, exploraremos como criar tabelas, inserir dados e realizar consultas simples no MySQL, avançando no processo de construção de bancos de dados robustos.
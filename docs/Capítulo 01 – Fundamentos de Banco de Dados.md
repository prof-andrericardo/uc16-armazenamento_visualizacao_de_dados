# 📘 Capítulo 1 – Fundamentos de Banco de Dados

> 💾 *“A informação é a base do conhecimento. O banco de dados é o alicerce da informação.”*
>  — **Edgar Frank Codd**

------

## 🧭 Introdução Didática

Imagine sua escola sem histórico de chamadas, registros de lições de casa ou ocorrências. Seria um caos, certo? É por isso que usamos **bancos de dados**. Eles organizam, armazenam e recuperam informações de forma segura e eficiente.

Neste primeiro capítulo, você será introduzido ao universo dos bancos de dados, entendendo **o que são, para que servem, como funcionam** e **qual o papel de um Sistema Gerenciador de Banco de Dados (SGBD)**, com foco em MySQL — a ferramenta que usaremos ao longo da UC16 para construir o SGSA (Sistema de Gerenciamento de Sala de Aula).

------

## 📂 Missão do Capítulo

🎯 **"Você foi convidado a assumir o papel de Analista de Dados da escola. Sua primeira missão é entender como funcionam os bancos de dados e sua importância para o SGSA."**

------

## 🧾 O que é um Banco de Dados?

📌 Um **banco de dados** é um conjunto de informações organizadas que podem ser facilmente acessadas, gerenciadas e atualizadas. É como um grande armário digital onde cada gaveta representa uma tabela com dados sobre alunos, professores, aulas, etc.

### 💡 Exemplos práticos no SGSA:

- A lista de alunos e suas respectivas turmas.
- Os registros de presença em cada aula.
- As tarefas passadas e as datas de entrega.
- As ocorrências disciplinares.

Tudo isso será armazenado e controlado por um **SGDB**.

------

## 🧠 O que é um SGBD?

📌 SGBD significa **Sistema Gerenciador de Banco de Dados**. Ele é o software que permite **criar, manter, consultar e proteger** os dados.

🎓 No SGSA, vamos usar o **MySQL**, um dos SGBDs mais populares e usados no mundo.

### 🔍 Funções principais de um SGBD:

- Criar e remover bancos e tabelas;
- Inserir, alterar, excluir e consultar dados;
- Controlar o acesso aos dados;
- Garantir segurança e integridade das informações.

------

## 💡 Dados, Informação e Conhecimento

| Conceito     | Definição                                                    |
| ------------ | ------------------------------------------------------------ |
| Dado         | Fato isolado, sem contexto (ex: "João", "17")                |
| Informação   | Conjunto de dados com significado (ex: João tem 17 anos)     |
| Conhecimento | Uso da informação para tomar decisões (ex: Aluno João está apto ao ENEM) |

🔗 O banco de dados transforma dados → em informação → que gera conhecimento para a gestão escolar.

------

## 🧱 Estrutura Básica de um Banco Relacional

### 📦 Componentes principais:

- **Tabelas**: onde os dados são armazenados (ex: alunos, professores);
- **Linhas (Registros)**: cada linha representa um item (ex: aluno Pedro);
- **Colunas (Campos)**: cada coluna é um tipo de dado (ex: nome, data de nascimento);
- **Chaves Primárias**: identificam unicamente um registro (ex: id_aluno);
- **Chaves Estrangeiras**: conectam tabelas (ex: id_turma dentro da tabela alunos).

------

## 🔍 SGSA: Cenário Real do Projeto

Nosso sistema, o SGSA, é um banco de dados **relacional** porque:

- Terá **várias tabelas** interligadas (ex: alunos, chamadas, lições, aulas);
- Usará **chaves estrangeiras** para relacionar informações com segurança;
- Permitirá **consultas com JOINs**, facilitando relatórios e análises escolares.

### 📘 Exemplo:

- O aluno de id `3` está na turma `2B`.
- Na chamada da aula de `12/04`, ele esteve presente.
- Ele recebeu a tarefa “Trabalhar questões da página 34”.
- Tudo isso pode ser consultado a partir do banco relacional SGSA.

------

## 🧪 Boas Práticas e Erros Comuns

✅ **Boas práticas**:

- Escolher nomes claros para tabelas e campos (ex: `alunos`, `nome_aluno`);
- Separar bem as informações (não misturar dados em uma única coluna);
- Pensar antes de criar: entender o que será armazenado.

⚠️ **Erros comuns**:

- Criar tudo em uma tabela só (sem normalização);
- Não usar chaves primárias (difícil identificar dados);
- Usar nomes genéricos como `dados1`, `coisa`, `info`.

------

## 🎓 Conclusão Reflexiva

Entender o que é um banco de dados e como um SGBD funciona é o primeiro passo para se tornar um profissional de TI. No SGSA, isso fará a diferença entre um sistema eficiente e uma pilha de dados inúteis.

*“Quem domina os dados, domina o conhecimento. E quem domina o conhecimento, transforma a realidade.”*

------

## 🧠 Seção de Fixação de Conteúdo

### ✅ 1. Questão Dissertativa

**Explique com suas palavras o que é um banco de dados e como ele pode ser útil na organização de uma escola.**

------

### 🔘 2. Múltipla Escolha

**Qual das opções melhor representa um SGBD?**

-  Um site que armazena imagens.
-  Um sistema que organiza, armazena e consulta dados.
-  Uma planilha de matemática.
-  Um programa de edição de vídeo.

------

### ☑️ 3. Caixa de Seleção

**O que é armazenado em um banco de dados relacional?**

-  Informações estruturadas em tabelas.
-  Dados interligados por chaves.
-  Vídeos e áudios para edição.
-  Código-fonte de sistemas.

------

### 🔗 4. Associação

| Conceito          | Função                                                   |
| ----------------- | -------------------------------------------------------- |
| Tabela            | (   ) Armazena os dados em colunas e linhas              |
| Registro (Linha)  | (   ) Representa um item específico dentro de uma tabela |
| Campo (Coluna)    | (   ) Tipo de dado armazenado (ex: nome, idade)          |
| Chave Primária    | (   ) Identificador único de cada registro               |
| Chave Estrangeira | (   ) Relaciona dados entre tabelas diferentes           |

------

### ✔️ 5. Verdadeiro ou Falso

1. Um banco de dados relacional armazena dados em formato de planilhas. ( )
2. A chave primária pode ter valores repetidos. ( )
3. O MySQL é um exemplo de SGBD. ( )
4. O SGSA será um banco de dados relacional. ( )

-  V V F F
-  F V F V
-  F F V V
-  V F F F

------

## 📚 Referências Complementares

- 📘 [MySQL – Documentação Oficial](https://dev.mysql.com/doc/)
- 🎥 [Curso em Vídeo – Banco de Dados – Gustavo Guanabara](https://www.youtube.com/playlist?list=PLHz_AreHm4dmGuLII3tsvryMMD7VgcT7x)
- 📘 [Livro: Sistemas de Banco de Dados – Elmasri & Navathe](https://www.amazon.com.br/Sistemas-banco-dados-Ramez-Elmasri/dp/8579360854)
- 💬 [Stack Overflow em Português – SQL Básico](https://pt.stackoverflow.com/questions/tagged/sql)

------

#### 🏠 [Início](../README.md)
#### ⏩ [Próximo Capítulo](<Capítulo 02 – Modelagem Conceitual e Normalização até 3FN.md>)

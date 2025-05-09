# 📘 Capítulo 2 – Modelagem Conceitual e Normalização até a 3ª Forma Normal (3FN)

> 🧠 *“Educar é impregnar de sentido o que fazemos a cada instante.”*
>  — **Paulo Freire**

------

## 🧭 Introdução Didática

Antes de sairmos criando tabelas no banco de dados, precisamos planejar como os dados serão organizados. Isso é feito por meio da **modelagem conceitual** e da **normalização**. Neste capítulo, você aprenderá a desenhar os dados do SGSA em forma de modelos que **evitam duplicidade**, **garantem integridade** e **facilitam a manutenção** do sistema.

🔍 Usaremos exemplos reais do SGSA (Sistema de Gerenciamento de Sala de Aula), focando em como transformar a realidade da escola em um modelo de banco de dados eficiente e bem estruturado.

------

## 📂 Missão do Capítulo

🎯 **"Você foi contratado como Analista de Dados. Sua missão é identificar entidades, atributos e relacionamentos no sistema escolar, aplicar a normalização até a 3FN e representar esses dados em um modelo conceitual."**

------

## 🧾 O que é Modelagem Conceitual?

📌 A modelagem conceitual é a etapa em que **representamos a realidade usando diagramas**, antes de criar o banco de dados de verdade. O modelo mais comum é o **DER (Diagrama Entidade Relacionamento)**.

### 🔶 Elementos da Modelagem

| Elemento       | Definição                               | Exemplo no SGSA          |
| -------------- | --------------------------------------- | ------------------------ |
| Entidade       | Representa algo real e identificável    | Aluno, Professor, Turma  |
| Atributo       | Características de uma entidade         | Nome, Data de nascimento |
| Relacionamento | Associação entre duas ou mais entidades | Aluno pertence à Turma   |

------

## 📐 Criando o DER do SGSA

### 🎓 Entidades Identificadas:

- **Aluno** (id_aluno, nome, data_nascimento)
- **Turma** (id_turma, nome_turma)
- **Professor** (id_professor, nome, disciplina)
- **Aula** (id_aula, data, conteudo)
- **Chamada** (id_chamada, status)
- **Lição de Casa** (id_licao, descricao, data_entrega)
- **Ocorrência** (id_ocorrencia, descricao, data)

### 🔗 Relacionamentos principais:

- Aluno → pertence → Turma
- Aula → é ministrada por → Professor
- Aula → ocorre para → Turma
- Chamada → é feita em → Aula
- Chamada → é feita para → Aluno
- Lição → está relacionada com → Aula
- Ocorrência → está associada ao → Aluno

------

## 🧠 O que é Normalização?

📌 **Normalização** é o processo de organizar os dados para:

- Reduzir redundâncias;
- Evitar inconsistências;
- Melhorar o desempenho e a integridade.

------

## 🔍 As Três Primeiras Formas Normais (1FN, 2FN e 3FN)

### 1️⃣ Primeira Forma Normal (1FN)

- Elimina grupos repetitivos.
- Cada campo deve conter apenas um valor por registro.

**Exemplo errado (violando 1FN):**

```text
Aluno: João | Telefones: (11)9999-0001, (11)9888-0002
```

**Forma correta:**

```text
Crie uma nova tabela chamada telefones com um campo id_aluno
```

### 2️⃣ Segunda Forma Normal (2FN)

- Deve estar em 1FN.
- Remove dependências parciais (quando um atributo depende apenas de parte da chave primária).

**Exemplo errado:**

```text
Tabela matriculas: (id_aluno, id_turma, nome_aluno)
```

**Correção:**

- Crie uma tabela `alunos` separada contendo `id_aluno`, `nome`, etc.
- Deixe a tabela `matriculas` com `id_aluno`, `id_turma` apenas.

### 3️⃣ Terceira Forma Normal (3FN)

- Deve estar em 2FN.
- Remove dependências transitivas (atributos que dependem de outro atributo que não é chave).

**Exemplo errado:**

```text
Tabela ocorrencias: (id_ocorrencia, id_aluno, nome_aluno)
```

**Correção:**

- Remova `nome_aluno`, pois já está na tabela `alunos`, acessada via `id_aluno`.

------

## 🧪 Aplicação Prática: Modelando parte do SGSA

### 🎯 Objetivo: aplicar 3FN para criar um modelo limpo e funcional.

1. **Entidade Aluno**

```text
id_aluno (PK)
nome
nascimento
id_turma (FK)
```

1. **Entidade Turma**

```text
id_turma (PK)
nome_turma
```

1. **Entidade Aula**

```text
id_aula (PK)
data
conteudo
id_professor (FK)
id_turma (FK)
```

1. **Entidade Ocorrência**

```text
id_ocorrencia (PK)
descricao
data
id_aluno (FK)
```

------

## 🧪 Boas Práticas e Erros Comuns

✅ **Boas Práticas**

- Nomear entidades no singular (Aluno, Turma);
- Atributos com nomes claros e sem abreviações exageradas;
- Aplicar normalização progressivamente (1FN → 2FN → 3FN).

⚠️ **Erros Comuns**

- Criar uma entidade com mais de um tipo de informação por campo;
- Repetir dados em várias entidades (duplicação);
- Ignorar dependências funcionais.

🛠️ **Dica:** Sempre questione: este campo depende diretamente da chave primária?

------

## 💬 Exemplo no SGSA

Imagine que precisamos consultar todos os alunos com ocorrência disciplinar:

### DER correto:

- Tabela `ocorrencias` com `id_aluno`
- Tabela `alunos` com `nome`

👉 Ao usar um `JOIN`, não precisamos repetir o nome do aluno em `ocorrencias`, porque acessamos por `id_aluno`. Isso é **normalização aplicada na prática**.

------

## 🎓 Conclusão Reflexiva

Modelar bem é prever o futuro do banco de dados. Através da normalização, evitamos dores de cabeça como dados duplicados, lentidão e dificuldades para atualizar informações. No SGSA, a boa modelagem é o que vai garantir **relatórios confiáveis**, **dados íntegros** e um sistema que cresce de forma organizada.

*“Assim como arquitetos desenham casas antes de construí-las, nós modelamos dados antes de programar o sistema.”*

------

## 🧠 Seção de Fixação de Conteúdo

### ✅ 1. Questão Dissertativa

**Explique a diferença entre 1FN, 2FN e 3FN com exemplos.**

------

### 🔘 2. Múltipla Escolha

**O que a 3FN busca evitar?**

-  Redundância de tabelas
-  Falta de dados
-  Dependências transitivas
-  Aumento da memória RAM

------

### ☑️ 3. Caixa de Seleção

**O que é parte da modelagem conceitual?**

-  Entidades
-  Relacionamentos
-  Atributos
-  Chave primária automática

------

### 🔗 4. Associação de Colunas

| Conceito               | Definição                                                    |
| ---------------------- | ------------------------------------------------------------ |
| Entidade               | (   ) Representação de algo real no sistema                  |
| Atributo               | (   ) Informação armazenada sobre uma entidade               |
| Relacionamento         | (   ) Ligação entre entidades diferentes                     |
| Normalização           | (   ) Técnica para melhorar estrutura dos dados evitando duplicações |
| Dependência Transitiva | (   ) Quando um campo depende de outro que não é chave primária |

------

### ✔️ 5. Verdadeiro ou Falso

1. Uma entidade pode ter mais de uma chave primária. ( )
2. A 1FN elimina grupos de dados repetitivos. ( )
3. A 3FN evita dependências transitivas. ( )
4. Modelagem conceitual já cria as tabelas reais no banco. ( )

-  V V F V
-  V F V F
-  F V V F
-  F V F F

------

## 📚 Referências Complementares

- 📘 [Livro: Sistemas de Banco de Dados – Elmasri & Navathe]
- 🎥 [Curso em Vídeo – Modelagem de Dados (YouTube)](https://www.youtube.com/playlist?list=PLHz_AreHm4dmGuLII3tsvryMMD7VgcT7x)
- 📘 [Guia da 3FN no MySQL – Alura](https://www.alura.com.br/artigos/forma-normal)
- 💬 [Stack Overflow em Português – Normalização](https://pt.stackoverflow.com/questions/tagged/normalização)

------

```markdown
#### ⏪ [Capítulo Anterior](<Capítulo 1 – Fundamentos de Banco de Dados.md>)
#### 🏠 [Início](../README.md)
#### ⏩ [Próximo Capítulo](<Capítulo 3 – Linguagem DDL e Criação de Tabelas.md>)
```
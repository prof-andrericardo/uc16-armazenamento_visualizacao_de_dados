# 📘 Capítulo 3 – Tipos de Dados no MySQL e Representação de Atributos

> 💡 *“Escolher o tipo de dado certo é como escolher a ferramenta certa: evita erros e melhora a performance.”*
>  — **Desconhecido** (mas muito sábio)

------

## 🧭 Introdução Didática

Antes de começarmos a **criar tabelas com DDL**, é essencial compreender os **tipos de dados disponíveis no MySQL**. Cada tipo representa uma forma específica de armazenar e manipular a informação.

No SGSA, por exemplo, precisaremos lidar com **números de matrícula**, **nomes de alunos**, **datas de aula**, **descrições de ocorrências**, e muito mais. Cada uma dessas informações precisa do tipo de dado adequado para garantir **armazenamento correto**, **desempenho otimizado** e **validação eficaz**.

------

## 📂 Missão do Capítulo

🎯 **"Você foi convocado para criar a estrutura dos atributos de cada entidade do SGSA. Sua missão é escolher corretamente os tipos de dados para cada campo do sistema."**

------

## 🧠 O que são Tipos de Dados?

📌 Tipos de dados determinam **qual tipo de informação** será armazenada em cada coluna de uma tabela no banco de dados.

Cada tipo ocupa um espaço diferente em memória, possui regras próprias e limitações.

------

## 🧮 Tipos Numéricos

| Tipo            | Armazena                       | Exemplos      | Observações                               |
| --------------- | ------------------------------ | ------------- | ----------------------------------------- |
| `INT`           | Números inteiros               | 1, 50, -20    | Muito usado para IDs com `AUTO_INCREMENT` |
| `TINYINT`       | Inteiros pequenos (-128 a 127) | 0, 1          | Pode ser usado como booleano (`1/0`)      |
| `BIGINT`        | Números inteiros grandes       | 10000000000   | Usado em sistemas com grandes volumes     |
| `DECIMAL(10,2)` | Valores com casas decimais     | 59.90, 120.00 | Ideal para valores monetários             |

------

## 🔤 Tipos de Texto (Strings)

| Tipo         | Armazena       | Tamanho Máximo | Uso Ideal                            |
| ------------ | -------------- | -------------- | ------------------------------------ |
| `CHAR(n)`    | Texto fixo     | até 255        | Campos com tamanho fixo (UF, CEP)    |
| `VARCHAR(n)` | Texto variável | até 65535      | Nomes, emails, textos curtos         |
| `TEXT`       | Texto longo    | 65.535 bytes   | Descrições, observações, ocorrências |

⚠️ `VARCHAR` exige que você defina o **tamanho máximo**: `VARCHAR(100)`, por exemplo.

------

## 📅 Tipos de Data e Hora

| Tipo        | Armazena           | Formato                  | Uso Comum                 |
| ----------- | ------------------ | ------------------------ | ------------------------- |
| `DATE`      | Apenas a data      | YYYY-MM-DD               | Datas de nascimento, aula |
| `TIME`      | Apenas a hora      | HH:MM:SS                 | Horário da aula, entrada  |
| `DATETIME`  | Data e hora juntos | YYYY-MM-DD HH:MM:SS      | Cadastro com hora exata   |
| `TIMESTAMP` | Como `DATETIME`    | Atualiza automaticamente | Registros de alteração    |

------

## 🟩 Tipo Enum (Listas de Opções)

O tipo `ENUM` permite limitar os valores possíveis para um campo.

```sql
CREATE TABLE chamadas (
  status ENUM('presente', 'falta') NOT NULL
);
```

🧠 Útil quando temos **opções fixas**, como status de presença, turnos, níveis de prioridade etc.

------

## ✅ Tipos Lógicos (Booleanos)

| Tipo      | Armazena          | Exemplo    |
| --------- | ----------------- | ---------- |
| `BOOLEAN` | `TRUE` ou `FALSE` | `1` ou `0` |

O `BOOLEAN` no MySQL é, na verdade, um `TINYINT(1)` por trás. Serve para **valores binários**, como marcado/não marcado, ativo/inativo, etc.

------

## 🧪 Aplicações no SGSA

| Campo                  | Tipo sugerido              | Justificativa                    |
| ---------------------- | -------------------------- | -------------------------------- |
| `id_aluno`             | `INT AUTO_INCREMENT`       | Identificador único e sequencial |
| `nome`                 | `VARCHAR(100)`             | Nome com tamanho variável        |
| `data_nascimento`      | `DATE`                     | Apenas a data, sem hora          |
| `descricao_ocorrencia` | `TEXT`                     | Texto longo descritivo           |
| `status_presenca`      | `ENUM('presente','falta')` | Opções limitadas                 |

------

## 🧱 Dica Visual – Escolhendo o tipo certo:

| Tipo de informação     | Melhor tipo de dado          |
| ---------------------- | ---------------------------- |
| Identificador numérico | `INT AUTO_INCREMENT`         |
| Nome, email, login     | `VARCHAR`                    |
| Texto longo            | `TEXT`                       |
| Data de cadastro       | `DATE`, `DATETIME`           |
| Presença (sim/não)     | `ENUM`, `BOOLEAN`, `TINYINT` |

------

## 🧪 Boas Práticas e Erros Comuns

✅ **Boas práticas**:

- Use `VARCHAR` com tamanho coerente (evite `VARCHAR(255)` para tudo);
- Use `ENUM` para listas fixas (evita erros de digitação);
- Escolha `DATE` ao invés de `DATETIME` se hora não for relevante.

⚠️ **Erros comuns**:

- Usar `TEXT` quando `VARCHAR` seria mais eficiente;
- Escolher `CHAR` sem necessidade de tamanho fixo;
- Deixar campos de data como `VARCHAR`.

🛠️ **Dica:** consulte `SHOW COLUMNS FROM tabela;` para verificar os tipos definidos.

------

## 🎓 Conclusão Reflexiva

Cada campo do banco precisa ser pensado com cuidado. Um tipo de dado mal escolhido pode dificultar buscas, ocupando mais espaço e comprometendo a performance.

*“No banco de dados, o tipo certo é o primeiro passo para a integridade dos dados.”*

------

## 🧠 Seção de Fixação de Conteúdo

### ✅ 1. Questão Dissertativa

**Explique a diferença entre os tipos `CHAR`, `VARCHAR` e `TEXT`, com exemplos práticos no SGSA.**

------

### 🔘 2. Múltipla Escolha

**Qual tipo é mais adequado para armazenar datas?**

-  VARCHAR(10)
-  TEXT
-  DATE
-  INT

------

### ☑️ 3. Caixa de Seleção

**Quais são tipos de dados válidos no MySQL?**

-  INT
-  VARCHAR
-  ENUM
-  ARRAY
-  STRING

------

### 🔗 4. Associação de Colunas

| Tipo de Dado   | Descrição                                           |
| -------------- | --------------------------------------------------- |
| `INT`          | (   ) Número inteiro                                |
| `VARCHAR(100)` | (   ) Texto com tamanho variável até 100 caracteres |
| `DATE`         | (   ) Armazena uma data                             |
| `TEXT`         | (   ) Texto longo, útil para descrições             |
| `ENUM`         | (   ) Lista pré-definida de opções                  |

------

### ✔️ 5. Verdadeiro ou Falso

1. `VARCHAR(100)` é mais flexível que `CHAR(100)`. ( )
2. `BOOLEAN` armazena valores como `1` ou `0`. ( )
3. `DATE` é ideal para armazenar horários. ( )
4. `TEXT` é mais eficiente que `VARCHAR` para nomes curtos. ( )

-  V F V V
-  V V F F
-  F V F F
-  V V V V

------

## 📚 Referências Complementares

- 📘 [MySQL – Tipos de Dados](https://dev.mysql.com/doc/refman/8.0/en/data-types.html)
- 🎥 [Curso em Vídeo – SQL](https://www.youtube.com/playlist?list=PLHz_AreHm4dmGuLII3tsvryMMD7VgcT7x)
- 💬 [Stack Overflow PT – Tipos de Dados SQL](https://pt.stackoverflow.com/questions/tagged/sql)

------

#### ⏪ [Capítulo Anterior](<./Capítulo 02 – Modelagem Conceitual e Normalização até a 3ª Forma Normal (3FN).md>)
#### 🏠 [Início](./README.md)
#### ⏩ [Próximo Capítulo](<./Capítulo 04 – Linguagem DDL: Criando Tabelas e Definindo Estruturas.md>)

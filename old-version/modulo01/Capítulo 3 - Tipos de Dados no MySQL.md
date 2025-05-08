# 📚 Módulo 1: Fundamentos de Banco de Dados

# 📖 Capítulo 3 - Tipos de Dados no MySQL

> 🧠 *"A escolha correta do tipo de dado é a base para um banco de dados eficiente e escalável."* – Donald D. Chamberlin

------

## 🎯 **Objetivo do Capítulo**

Neste capítulo, você aprenderá:

✅ O que são **tipos de dados** e sua importância na estruturação do banco de dados.

✅ Os principais **tipos de dados numéricos, de texto e de data/hora** no MySQL.

✅ Como escolher o tipo de dado correto para cada cenário.

✅ Diferenças entre os tipos **fixos e variáveis** e suas implicações na performance.

✅ Exemplos práticos aplicados ao **SGSA (Sistema de Gerenciamento de Sala de Aula)**.

Ao final deste capítulo, você terá uma visão clara sobre como definir e utilizar os tipos de dados no MySQL de forma eficiente.

------

## 🔍 **3.1 O que são Tipos de Dados e por que são importantes?**

Cada coluna de uma tabela no MySQL precisa ter um **tipo de dado definido** para garantir **armazenamento adequado, eficiência e integridade** dos dados. A escolha correta impacta diretamente:

✔ **Eficiência do armazenamento** – Ocupa menos espaço em disco e memória.

✔ **Performance** – Consultas e índices mais rápidos.

✔ **Consistência e validação** – Evita erros de entrada de dados.

✔ **Facilidade de manutenção** – Estrutura mais organizada e escalável.

🎯 **Exemplo:** Imagine um sistema escolar onde armazenamos as idades dos alunos. Podemos usar diferentes tipos de dados:

- `VARCHAR(2)`: Armazenaria a idade como texto (❌ ineficiente, ocupa mais espaço e permite valores inválidos, como "AB").
- `INT`: Armazenaria a idade corretamente como número (✅ eficiente e validado).

Portanto, escolher o **tipo de dado correto** é essencial para garantir um banco de dados **otimizado e seguro**.

------

## 🏗️ **3.2 Principais Tipos de Dados no MySQL**

Os tipos de dados no MySQL são classificados em três grandes grupos:

1️⃣ **Tipos Numéricos** (para armazenar números).

2️⃣ **Tipos de Texto** (para armazenar cadeias de caracteres).

3️⃣ **Tipos de Data e Hora** (para armazenar informações temporais).

Vamos explorar cada um em detalhes:

------

## 🔢 **3.3 Tipos Numéricos**

Os **números** podem ser usados para armazenar valores como IDs, idades, notas e contadores.

| Tipo            | Tamanho (Bytes) | Intervalo                       | Permite Decimais? |
| --------------- | --------------- | ------------------------------- | ----------------- |
| `TINYINT`       | 1 byte          | -128 a 127 / 0 a 255 (unsigned) | ❌                 |
| `SMALLINT`      | 2 bytes         | -32.768 a 32.767                | ❌                 |
| `INT`           | 4 bytes         | -2.147.483.648 a 2.147.483.647  | ❌                 |
| `BIGINT`        | 8 bytes         | Valores muito grandes           | ❌                 |
| `DECIMAL(p, s)` | Variável        | Definido pelo usuário           | ✅                 |
| `FLOAT`         | 4 bytes         | Aproximado                      | ✅                 |
| `DOUBLE`        | 8 bytes         | Alta precisão                   | ✅                 |

📌 **Quando usar cada um?**

- `TINYINT`: Para armazenar **valores pequenos**, como status (0 ou 1) ou idade de crianças.
- `INT`: Para IDs, matrículas de alunos e outras chaves primárias.
- `BIGINT`: Para grandes quantidades de registros.
- `DECIMAL`: Para **valores monetários e notas escolares**, onde a precisão é essencial.
- `FLOAT`/`DOUBLE`: Para cálculos científicos e médias aproximadas.

🎯 **Exemplo no SGSA:**

```sql
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    idade TINYINT NOT NULL,
    nota_media DECIMAL(4,2) NOT NULL
);
```

------

## ✍ **3.4 Tipos de Texto**

Usados para armazenar **nomes, descrições, e-mails e outros dados textuais.**

| Tipo         | Tamanho Máximo                                   |
| ------------ | ------------------------------------------------ |
| `CHAR(n)`    | 255 caracteres (fixo)                            |
| `VARCHAR(n)` | 65.535 caracteres (variável)                     |
| `TEXT`       | 65.535 caracteres (para grandes blocos de texto) |

📌 **Quando usar cada um?**

- `CHAR`: Quando o tamanho do texto **não varia muito** (ex: Siglas, CEPs).
- `VARCHAR`: Para **nomes de alunos, e-mails, descrições curtas**.
- `TEXT`: Para **observações, descrições longas, conteúdos de provas**.

🎯 **Exemplo no SGSA:**

```sql
CREATE TABLE professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);
```

------

## ⏳ **3.5 Tipos de Data e Hora**

Usados para armazenar **datas de nascimento, horários de aula, registros de chamada, etc.**

| Tipo        | Formato                                      |
| ----------- | -------------------------------------------- |
| `DATE`      | YYYY-MM-DD                                   |
| `DATETIME`  | YYYY-MM-DD HH:MI:SS                          |
| `TIMESTAMP` | YYYY-MM-DD HH:MI:SS (Fuso horário ajustável) |

📌 **Quando usar cada um?**

- `DATE`: Para **datas de nascimento, feriados e prazos**.
- `DATETIME`: Para **registro de chamadas e eventos com hora**.
- `TIMESTAMP`: Para **registros de alterações, logs e auditorias**.

🎯 **Exemplo no SGSA:**

```sql
CREATE TABLE chamadas (
    id_chamada INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    data_aula DATE NOT NULL,
    hora_chegada DATETIME NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);
```

------

## 🏁 **Conclusão**

Neste capítulo, aprendemos:

✅ A importância dos **tipos de dados** no MySQL.

✅ Os principais tipos: **numéricos, texto e data/hora**.

✅ Como **escolher o tipo de dado correto** para cada situação.

✅ Aplicações práticas dentro do **SGSA (Sistema de Gerenciamento de Sala de Aula)**.

📌 **Nos próximos capítulos, veremos como manipular e otimizar esses dados!** 🚀
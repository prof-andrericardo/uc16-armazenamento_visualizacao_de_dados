# 🏛 **Módulo 2: DDL - Data Definition Language**

## 📖 **Capítulo 2 - Definição de Relacionamentos**

> **"Nenhum banco de dados existe isoladamente. A força de um sistema relacional está na forma como os dados se conectam. Relacionamentos bem definidos garantem integridade, evitam redundância e refletem a realidade do mundo que estamos modelando."**

------

## 📌 **Objetivo do capítulo**

Neste capítulo, vamos explorar a **definição de relacionamentos** em bancos de dados relacionais. Você aprenderá:

- ✅ **O que são relacionamentos em bancos de dados e por que eles são fundamentais**.
- ✅ **Os diferentes tipos de relacionamentos (1:1, 1:N, N:M) e quando utilizá-los**.
- ✅ **Como implementar relacionamentos no MySQL utilizando chaves primárias e estrangeiras**.
- ✅ **Boas práticas para modelagem de relacionamentos, evitando redundâncias e inconsistências**.
- ✅ **Exemplos práticos aplicados ao SGSA (Sistema de Gerenciamento de Sala de Aula)**.

Ao final deste capítulo, você estará apto a **criar e gerenciar relacionamentos entre tabelas** no MySQL de maneira eficiente. 🎓

------

## 🏗 **2.1 O que são Relacionamentos em Bancos de Dados?**

### 📌 **Definição**

Os **relacionamentos** em um banco de dados **relacional** estabelecem conexões entre tabelas, garantindo que os dados sejam organizados de forma lógica e eficiente.

💡 **Por que os relacionamentos são importantes?**
- ✔ **Eliminam redundância**: Evitam a repetição desnecessária de dados.
- ✔ **Mantêm a integridade dos dados**: Garantem que os registros permaneçam consistentes.
- ✔ **Facilitam consultas e análises**: Permitem obter informações de várias tabelas com eficiência.

🔎 **Exemplo real no SGSA**
 Em um sistema escolar, **cada aluno pertence a uma turma** e **cada turma tem vários alunos**. Em vez de armazenar o nome da turma dentro da tabela **Alunos**, criamos uma tabela separada para **Turmas** e utilizamos um relacionamento para conectar essas informações.

------

## 🔗 **2.2 Tipos de Relacionamentos em Bancos de Dados**

Os bancos de dados relacionais suportam **três principais tipos de relacionamentos**:

### 📌 **1️⃣ Relacionamento Um para Um (1:1)**

**Definição**: Um registro em uma tabela está associado a no máximo **um** registro em outra tabela.

📢 **Exemplo:** Cada **Coordenador** gerencia apenas **uma Secretaria** e cada **Secretaria** tem apenas **um Coordenador**.

🔎 **Implementação no MySQL**

```sql
CREATE TABLE Coordenadores (
    id_coordenador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Secretarias (
    id_secretaria INT PRIMARY KEY AUTO_INCREMENT,
    coordenador_id INT UNIQUE,
    FOREIGN KEY (coordenador_id) REFERENCES Coordenadores(id_coordenador)
);
```

✔ **A chave estrangeira (`coordenador_id`) é UNIQUE**, garantindo que cada secretaria tenha apenas um coordenador.

------

### 📌 **2️⃣ Relacionamento Um para Muitos (1:N)**

**Definição**: Um registro em uma tabela pode estar associado a **múltiplos** registros em outra tabela.

📢 **Exemplo:** **Uma Turma pode ter vários Alunos, mas cada Aluno pertence a apenas uma Turma**.

🔎 **Implementação no MySQL**

```sql
CREATE TABLE Turmas (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome_turma VARCHAR(50) NOT NULL
);

CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

✔ **Cada aluno está vinculado a uma turma específica, evitando duplicação de informações.**

------

### 📌 **3️⃣ Relacionamento Muitos para Muitos (N:M)**

**Definição**: Um registro em uma tabela pode estar associado a **múltiplos** registros em outra tabela e vice-versa.

📢 **Exemplo:** **Um Professor pode lecionar várias Disciplinas e cada Disciplina pode ser ministrada por vários Professores.**

🔎 **Implementação no MySQL**
 Para representar esse tipo de relação, criamos uma **tabela intermediária**.

```sql
CREATE TABLE Professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Disciplinas (
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina VARCHAR(100) NOT NULL
);

CREATE TABLE Professores_Disciplinas (
    id_professor INT,
    id_disciplina INT,
    PRIMARY KEY (id_professor, id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina)
);
```

✔ **A tabela `Professores_Disciplinas` une os registros das duas tabelas, criando a relação N:M.**

------

## 🔍 **2.3 Implementação de Relacionamentos no SGSA**

Agora que entendemos os tipos de relacionamentos, vamos aplicá-los ao **SGSA**.

### 📌 **Relacionamento entre Turmas e Alunos (1:N)**

**Um aluno pertence a uma única turma, mas uma turma pode ter vários alunos.**

```sql
CREATE TABLE Turmas (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome_turma VARCHAR(50) NOT NULL
);

CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

### 📌 **Relacionamento entre Professores e Disciplinas (N:M)**

**Um professor pode lecionar várias disciplinas, e uma disciplina pode ser ministrada por vários professores.**

```sql
CREATE TABLE Professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Disciplinas (
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina VARCHAR(100) NOT NULL
);

CREATE TABLE Professores_Disciplinas (
    id_professor INT,
    id_disciplina INT,
    PRIMARY KEY (id_professor, id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina)
);
```

💡 **Dica:** Sempre utilize **FOREIGN KEY** para manter a integridade dos dados e evitar registros "soltos" no banco.

------

## 🎓 **Conclusão**

- ✔ **Relacionamentos são essenciais para estruturar um banco de dados de maneira eficiente.**
- ✔ **Os três principais tipos de relacionamentos são: 1:1, 1:N e N:M.**
- ✔ **A integridade dos dados é mantida utilizando chaves primárias e estrangeiras.**
- ✔ **A modelagem correta evita duplicação e inconsistências, tornando o banco mais eficiente.**
- ✔ **O SGSA utiliza relacionamentos bem definidos para gerenciar alunos, professores, turmas e disciplinas de forma estruturada.**

Agora que compreendemos a definição de relacionamentos, podemos avançar para a **manipulação e modificação das tabelas no MySQL!** 🚀

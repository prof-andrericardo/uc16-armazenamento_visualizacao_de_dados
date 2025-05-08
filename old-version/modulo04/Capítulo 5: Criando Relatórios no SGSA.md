# 🏆 Módulo 4: DQL - Data Query Language

## 📖 Capítulo 5: Criando Relatórios no SGSA

> *“A análise correta dos dados permite transformar números em decisões inteligentes.”* - Anônimo

### 📌 5.1 Introdução à Criação de Relatórios

Os relatórios são uma parte essencial de qualquer sistema de gerenciamento de dados. No **SGSA (Sistema de Gerenciamento de Sala de Aula)**, a geração de relatórios ajuda **professores, coordenadores e gestores** a monitorar a frequência, desempenho dos alunos e ocorrências disciplinares.

Este capítulo aborda:

✅ Como criar relatórios detalhados utilizando SQL.

✅ Técnicas avançadas de agrupamento e filtragem de dados.

✅ Como utilizar `JOINs`, `GROUP BY`, `HAVING` e **funções agregadas** para relatórios eficazes.

✅ Como organizar os dados para relatórios de presença, desempenho e ocorrências.

------

### 📌 5.2 Estrutura das Tabelas para Relatórios

Antes de criarmos os relatórios, vejamos as tabelas envolvidas:

#### **📍 Tabela `Alunos`**

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

#### **📍 Tabela `Turmas`**

```sql
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    turno ENUM('Matutino', 'Vespertino', 'Noturno') NOT NULL
);
```

#### **📍 Tabela `Disciplinas`**

```sql
CREATE TABLE Disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES Professores(id_professor)
);
```

#### **📍 Tabela `Professores`**

```sql
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);
```

#### **📍 Tabela `Registro_de_Chamada`**

```sql
CREATE TABLE Registro_de_Chamada (
    id_chamada INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    disciplina_id INT,
    data_aula DATE NOT NULL,
    presenca ENUM('Presente', 'Ausente', 'Justificado') NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina)
);
```

#### **📍 Tabela `Ocorrencias`**

```sql
CREATE TABLE Ocorrencias (
    id_ocorrencia INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    data_ocorrencia DATE NOT NULL,
    tipo_ocorrencia VARCHAR(50) NOT NULL,
    descricao TEXT,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno)
);
```

Agora que conhecemos as tabelas, podemos criar relatórios eficazes utilizando consultas SQL.

------

### 📌 5.3 Relatórios de Presença

#### **📍 Relatório 1: Frequência dos Alunos**

Consulta para listar a frequência dos alunos, agrupando por turma:

```sql
SELECT Alunos.nome, Turmas.nome_turma,
       COUNT(CASE WHEN Registro_de_Chamada.presenca = 'Presente' THEN 1 END) AS total_presencas,
       COUNT(CASE WHEN Registro_de_Chamada.presenca = 'Ausente' THEN 1 END) AS total_faltas
FROM Alunos
JOIN Turmas ON Alunos.turma_id = Turmas.id_turma
JOIN Registro_de_Chamada ON Alunos.id_aluno = Registro_de_Chamada.aluno_id
GROUP BY Alunos.nome, Turmas.nome_turma;
```

✅ **Saída esperada:**

| Nome do Aluno | Turma | Total Presenças | Total Faltas |
| ------------- | ----- | --------------- | ------------ |
| Ana Souza     | 3A    | 18              | 2            |
| João Oliveira | 2B    | 15              | 5            |

📌 **Explicação:**

- Utiliza `COUNT()` para contar presenças e faltas.
- `CASE WHEN` é usado para condicionar os valores contados.
- `GROUP BY` agrupa os dados por aluno e turma.

------

### 📌 5.4 Relatórios de Ocorrências

#### **📍 Relatório 2: Alunos com Maior Número de Ocorrências**

Consulta para listar os alunos com mais registros disciplinares:

```sql
SELECT Alunos.nome, COUNT(Ocorrencias.id_ocorrencia) AS total_ocorrencias
FROM Alunos
JOIN Ocorrencias ON Alunos.id_aluno = Ocorrencias.aluno_id
GROUP BY Alunos.nome
ORDER BY total_ocorrencias DESC
LIMIT 5;
```

✅ **Saída esperada:**

| Nome do Aluno | Total Ocorrências |
| ------------- | ----------------- |
| Pedro Martins | 8                 |
| Maria Lima    | 6                 |

📌 **Explicação:**

- `COUNT()` conta o total de ocorrências por aluno.
- `ORDER BY total_ocorrencias DESC` exibe os alunos com mais ocorrências primeiro.
- `LIMIT 5` restringe a consulta aos **cinco alunos com mais ocorrências**.

------

### 📌 5.5 Relatórios de Desempenho Escolar

#### **📍 Relatório 3: Presença Média por Disciplina**

Consulta para calcular a presença média dos alunos em cada disciplina:

```sql
SELECT Disciplinas.nome_disciplina,
       AVG(CASE WHEN Registro_de_Chamada.presenca = 'Presente' THEN 1 ELSE 0 END) * 100 AS percentual_presenca
FROM Registro_de_Chamada
JOIN Disciplinas ON Registro_de_Chamada.disciplina_id = Disciplinas.id_disciplina
GROUP BY Disciplinas.nome_disciplina;
```

✅ **Saída esperada:**

| Nome da Disciplina | Percentual de Presença |
| ------------------ | ---------------------- |
| Matemática         | 89.5%                  |
| História           | 75.2%                  |

📌 **Explicação:**

- `AVG()` calcula a média das presenças.
- Multiplicamos por 100 para obter a **porcentagem de presença**.

------

## **📌 Conclusão**

Neste capítulo, aprendemos: 

✅ Como gerar relatórios detalhados utilizando SQL no SGSA.

✅ Como utilizar **funções agregadas**, `JOINs`, `GROUP BY` e `HAVING` para criar estatísticas relevantes.

✅ Como exibir dados de frequência, ocorrências e desempenho acadêmico.

No próximo capítulo, abordaremos **técnicas de otimização de consultas**, garantindo melhor desempenho nas buscas! 🚀

✍️ *Agora é sua vez: pratique criando consultas personalizadas para seus relatórios!*
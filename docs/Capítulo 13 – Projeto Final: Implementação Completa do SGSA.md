# 📘 Capítulo 12 – Projeto Final: Implementação Completa do SGSA

> 🧩 *“Aprender SQL é como montar um quebra-cabeça: só faz sentido quando todas as peças se encaixam.”*
>  — **IAra, a guardiã do SGSA**

------

## 🧭 Introdução Didática

Você chegou à fase final do curso, e agora é hora de colocar em prática **tudo que foi aprendido** ao longo dos capítulos. Vamos **construir o SGSA – Sistema de Gerenciamento de Sala de Aula** de ponta a ponta, aplicando DDL, DML, DQL, JOINs, funções, subconsultas, transações e controle de acesso.

O SGSA será um banco de dados real com estrutura robusta, segurança e capacidade de gerar relatórios úteis para professores, coordenadores e equipe pedagógica.

------

## 📂 Missão Final do Curso

🎯 **"Você agora é o Desenvolvedor Oficial de Banco de Dados da escola. Sua missão é implementar o SGSA do zero, com tabelas funcionais, dados reais e consultas úteis para o dia a dia pedagógico."**

------

## 🧱 Estrutura do Banco SGSA – Visão Geral

### Entidades principais:

- `turmas`: registro das turmas da escola;
- `alunos`: alunos vinculados a turmas;
- `professores`: docentes cadastrados com suas disciplinas;
- `aulas`: datas e conteúdos ministrados por professor e turma;
- `chamadas`: presença dos alunos em cada aula;
- `licoes`: lições de casa cadastradas por aula;
- `ocorrencias`: registros disciplinares vinculados aos alunos.

------

## 🔧 Parte 1 – Criação do banco e das tabelas (DDL)

```sql
-- Criar o banco
CREATE DATABASE sgsa;
USE sgsa;

-- Tabela turmas
CREATE TABLE turmas (
  id_turma INT PRIMARY KEY AUTO_INCREMENT,
  nome_turma VARCHAR(10) NOT NULL
);

-- Tabela alunos
CREATE TABLE alunos (
  id_aluno INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE,
  id_turma INT,
  FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

-- Tabela professores
CREATE TABLE professores (
  id_professor INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  disciplina VARCHAR(50)
);

-- Tabela aulas
CREATE TABLE aulas (
  id_aula INT PRIMARY KEY AUTO_INCREMENT,
  data DATE NOT NULL,
  conteudo TEXT,
  id_turma INT,
  id_professor INT,
  FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
  FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

-- Tabela chamadas
CREATE TABLE chamadas (
  id_chamada INT PRIMARY KEY AUTO_INCREMENT,
  id_aula INT,
  id_aluno INT,
  status ENUM('presente', 'falta') NOT NULL,
  FOREIGN KEY (id_aula) REFERENCES aulas(id_aula),
  FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);

-- Tabela licoes
CREATE TABLE licoes (
  id_licao INT PRIMARY KEY AUTO_INCREMENT,
  id_aula INT,
  descricao TEXT,
  data_entrega DATE,
  FOREIGN KEY (id_aula) REFERENCES aulas(id_aula)
);

-- Tabela ocorrencias
CREATE TABLE ocorrencias (
  id_ocorrencia INT PRIMARY KEY AUTO_INCREMENT,
  id_aluno INT,
  data DATE NOT NULL,
  descricao TEXT NOT NULL,
  FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);
```

------

## ✍️ Parte 2 – Inserção de dados reais (DML)

```sql
-- Inserir turmas
INSERT INTO turmas (nome_turma) VALUES ('1A'), ('2A'), ('3A');

-- Inserir professores
INSERT INTO professores (nome, disciplina) VALUES
('Maria Eduarda', 'Português'),
('Carlos Lima', 'Matemática'),
('Ana Paula', 'História');

-- Inserir alunos
INSERT INTO alunos (nome, data_nascimento, id_turma) VALUES
('João Pedro', '2007-03-15', 1),
('Laura Mendes', '2006-11-20', 2),
('Rafael Souza', '2005-08-02', 3);

-- Inserir aula
INSERT INTO aulas (data, conteudo, id_turma, id_professor) VALUES
('2025-06-01', 'Revisão de tipos de dados', 1, 2);

-- Inserir chamada
INSERT INTO chamadas (id_aula, id_aluno, status) VALUES
(1, 1, 'presente'),
(1, 2, 'falta');

-- Inserir lição
INSERT INTO licoes (id_aula, descricao, data_entrega) VALUES
(1, 'Fazer lista de exercícios sobre VARCHAR e DATE', '2025-06-05');

-- Inserir ocorrência
INSERT INTO ocorrencias (id_aluno, data, descricao) VALUES
(2, '2025-05-15', 'Faltou sem justificativa pela 3ª vez');
```

------

## 🔍 Parte 3 – Consultas úteis com SELECT, JOIN e Funções

### 📘 Alunos por turma

```sql
SELECT t.nome_turma, COUNT(*) AS total_alunos
FROM alunos AS a
JOIN turmas AS t ON a.id_turma = t.id_turma
GROUP BY t.nome_turma;
```

------

### 📘 Faltas de um aluno

```sql
SELECT a.nome, c.status, au.data
FROM chamadas AS c
JOIN alunos AS a ON c.id_aluno = a.id_aluno
JOIN aulas AS au ON c.id_aula = au.id_aula
WHERE c.status = 'falta' AND a.id_aluno = 2;
```

------

### 📘 Ocorrências por aluno

```sql
SELECT nome, COUNT(o.id_ocorrencia) AS total_ocorrencias
FROM alunos AS a
JOIN ocorrencias AS o ON a.id_aluno = o.id_aluno
GROUP BY a.id_aluno;
```

------

## 🔄 Parte 4 – Controle com Transações (TCL)

```sql
START TRANSACTION;

INSERT INTO ocorrencias (id_aluno, data, descricao)
VALUES (1, '2025-06-02', 'Atraso recorrente');

SAVEPOINT depois_primeira_ocorrencia;

DELETE FROM alunos WHERE id_aluno = 2; -- erro intencional

ROLLBACK TO depois_primeira_ocorrencia;

COMMIT;
```

> ✅ Resultado: a ocorrência foi registrada, mas o aluno não foi excluído por erro. Tudo foi salvo com segurança.

------

## 🔐 Parte 5 – Segurança e Perfis (DCL)

```sql
-- Criar usuário com acesso apenas às chamadas
CREATE USER 'prof_chamada'@'localhost' IDENTIFIED BY 'Chamadas123';
GRANT SELECT, INSERT ON sgsa.chamadas TO 'prof_chamada'@'localhost';

-- Criar usuário coordenador com permissões completas
CREATE USER 'coord'@'localhost' IDENTIFIED BY 'Coord2025';
GRANT ALL PRIVILEGES ON sgsa.* TO 'coord'@'localhost';
```

------

## 🎓 Conclusão Final

Você dominou todos os pilares do MySQL aplicados a um sistema real e funcional. O SGSA está pronto para registrar, consultar, proteger e analisar dados escolares com segurança e eficiência.

*“O banco de dados é o coração digital da escola. E você agora é quem sabe fazê-lo bater corretamente.”*

------

## 🧠 Desafio Final

Crie um relatório SQL que mostre, para cada turma, o nome do professor que mais deu aulas e o número total de aulas ministradas.

------

## 📚 Referências Complementares

- 📘 [MySQL Documentation](https://dev.mysql.com/doc/)
- 🎥 [Curso em Vídeo – SQL Completo](https://www.youtube.com/playlist?list=PLHz_AreHm4dmGuLII3tsvryMMD7VgcT7x)
- 💬 [Stack Overflow PT – SQL e Modelagem Relacional](https://pt.stackoverflow.com/questions/tagged/sql)

------

#### ⏪ [Capítulo Anterior](<./Capítulo 12 – Ferramentas e Boas Práticas.mdd>)
#### 🏠 [Início](./README.md)


CREATE DATABASE IF NOT EXISTS sgsa;
USE sgsa;

CREATE TABLE turmas (
  id_turma INT PRIMARY KEY AUTO_INCREMENT,
  nome_turma VARCHAR(10) NOT NULL
);

CREATE TABLE alunos (
  id_aluno INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE,
  id_turma INT,
  FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

CREATE TABLE professores (
  id_professor INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  disciplina VARCHAR(50)
);

CREATE TABLE aulas (
  id_aula INT PRIMARY KEY AUTO_INCREMENT,
  data DATE NOT NULL,
  conteudo TEXT,
  id_turma INT,
  id_professor INT,
  FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
  FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

CREATE TABLE chamadas (
  id_chamada INT PRIMARY KEY AUTO_INCREMENT,
  id_aula INT,
  id_aluno INT,
  status ENUM('presente', 'falta') NOT NULL,
  FOREIGN KEY (id_aula) REFERENCES aulas(id_aula),
  FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);

CREATE TABLE licoes (
  id_licao INT PRIMARY KEY AUTO_INCREMENT,
  id_aula INT,
  descricao TEXT,
  data_entrega DATE,
  FOREIGN KEY (id_aula) REFERENCES aulas(id_aula)
);

CREATE TABLE ocorrencias (
  id_ocorrencia INT PRIMARY KEY AUTO_INCREMENT,
  id_aluno INT,
  data DATE NOT NULL,
  descricao TEXT NOT NULL,
  FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);

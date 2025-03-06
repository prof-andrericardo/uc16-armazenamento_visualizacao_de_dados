-- Criação do banco de dados SGSA
CREATE DATABASE SGSA;
USE SGSA;

-- Tabela de Turmas
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(10) NOT NULL,
    segmento ENUM('Ensino Fundamental I', 'Ensino Fundamental II', 'Ensino Médio Normal', 'Ensino Médio Técnico') NOT NULL,
    curso_tecnico VARCHAR(100) DEFAULT NULL,
    turno ENUM('Matutino', 'Vespertino', 'Noturno') NOT NULL
);

-- Tabela de Professores
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabela de Disciplinas
CREATE TABLE Disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES Professores(id_professor) ON DELETE SET NULL
);

-- Tabela de Alunos
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma) ON DELETE CASCADE
);

-- Tabela de Registro de Chamada
CREATE TABLE Registro_de_Chamada (
    id_chamada INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    disciplina_id INT,
    data_aula DATE NOT NULL,
    presenca ENUM('Presente', 'Ausente', 'Justificado') NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno) ON DELETE CASCADE,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE CASCADE
);

-- Tabela de Ocorrências Disciplinares
CREATE TABLE Ocorrencias (
    id_ocorrencia INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    data_ocorrencia DATE NOT NULL,
    tipo_ocorrencia VARCHAR(50) NOT NULL,
    descricao TEXT,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno) ON DELETE CASCADE
);

-- Tabela de Lembretes de Lição de Casa
CREATE TABLE Lembretes_Licao (
    id_licao INT AUTO_INCREMENT PRIMARY KEY,
    disciplina_id INT,
    descricao TEXT NOT NULL,
    data_entrega DATE NOT NULL,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina) ON DELETE CASCADE
);

-- Criando Índices para Melhorar Desempenho
CREATE INDEX idx_turma ON Alunos(turma_id);
CREATE INDEX idx_disciplina ON Registro_de_Chamada(disciplina_id);
CREATE INDEX idx_ocorrencias ON Ocorrencias(aluno_id);

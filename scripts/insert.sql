
INSERT INTO turmas (nome_turma) VALUES ('1A'), ('2A'), ('3A');

INSERT INTO professores (nome, disciplina) VALUES
('Maria Eduarda', 'Português'),
('Carlos Lima', 'Matemática'),
('Ana Paula', 'História');

INSERT INTO alunos (nome, data_nascimento, id_turma) VALUES
('João Pedro', '2007-03-15', 1),
('Laura Mendes', '2006-11-20', 2),
('Rafael Souza', '2005-08-02', 3);

INSERT INTO aulas (data, conteudo, id_turma, id_professor) VALUES
('2025-06-01', 'Revisão de tipos de dados', 1, 2);

INSERT INTO chamadas (id_aula, id_aluno, status) VALUES
(1, 1, 'presente'),
(1, 2, 'falta');

INSERT INTO licoes (id_aula, descricao, data_entrega) VALUES
(1, 'Fazer lista de exercícios sobre VARCHAR e DATE', '2025-06-05');

INSERT INTO ocorrencias (id_aluno, data, descricao) VALUES
(2, '2025-05-15', 'Faltou sem justificativa pela 3ª vez');

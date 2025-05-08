
-- Alunos por turma
SELECT t.nome_turma, COUNT(*) AS total_alunos
FROM alunos AS a
JOIN turmas AS t ON a.id_turma = t.id_turma
GROUP BY t.nome_turma;

-- Faltas de um aluno
SELECT a.nome, c.status, au.data
FROM chamadas AS c
JOIN alunos AS a ON c.id_aluno = a.id_aluno
JOIN aulas AS au ON c.id_aula = au.id_aula
WHERE c.status = 'falta' AND a.id_aluno = 2;

-- Ocorrências por aluno
SELECT nome, COUNT(o.id_ocorrencia) AS total_ocorrencias
FROM alunos AS a
JOIN ocorrencias AS o ON a.id_aluno = o.id_aluno
GROUP BY a.id_aluno;

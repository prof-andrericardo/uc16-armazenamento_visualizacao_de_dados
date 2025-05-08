
SELECT a.nome, COUNT(*) AS total_faltas
FROM chamadas AS c
JOIN alunos AS a ON a.id_aluno = c.id_aluno
WHERE c.status = 'falta'
GROUP BY a.id_aluno;

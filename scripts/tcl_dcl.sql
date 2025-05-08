
-- Transação com SAVEPOINT e ROLLBACK
START TRANSACTION;

INSERT INTO ocorrencias (id_aluno, data, descricao)
VALUES (1, '2025-06-02', 'Atraso recorrente');

SAVEPOINT depois_primeira_ocorrencia;

DELETE FROM alunos WHERE id_aluno = 2;

ROLLBACK TO depois_primeira_ocorrencia;

COMMIT;

-- Criação de usuários e permissões
CREATE USER 'prof_chamada'@'localhost' IDENTIFIED BY 'Chamadas123';
GRANT SELECT, INSERT ON sgsa.chamadas TO 'prof_chamada'@'localhost';

CREATE USER 'coord'@'localhost' IDENTIFIED BY 'Coord2025';
GRANT ALL PRIVILEGES ON sgsa.* TO 'coord'@'localhost';

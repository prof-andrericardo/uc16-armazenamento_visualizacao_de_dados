
# 📋 Relatório: Faltas por Aluno

Este relatório exibe o total de faltas registradas para cada aluno no SGSA.

### 🧪 Consulta SQL utilizada:

```sql
SELECT a.nome, COUNT(*) AS total_faltas
FROM chamadas AS c
JOIN alunos AS a ON a.id_aluno = c.id_aluno
WHERE c.status = 'falta'
GROUP BY a.id_aluno;
```

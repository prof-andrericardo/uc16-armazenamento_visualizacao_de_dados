
# 📋 Relatório: Ocorrências por Turma

Este relatório mostra quantas ocorrências disciplinares estão registradas por turma no SGSA.

### 🧪 Consulta SQL utilizada:

```sql
SELECT t.nome_turma, COUNT(*) AS total_ocorrencias
FROM ocorrencias AS o
JOIN alunos AS a ON a.id_aluno = o.id_aluno
JOIN turmas AS t ON t.id_turma = a.id_turma
GROUP BY t.id_turma;
```


# 📋 Relatório: Média de Presença por Aluno

Este relatório apresenta a média de presença dos alunos em percentual com base nas aulas registradas.

### 🧪 Consulta SQL utilizada:

```sql
SELECT a.nome, 
  ROUND(AVG(c.status = 'presente') * 100, 2) AS taxa_presenca_percentual
FROM chamadas AS c
JOIN alunos AS a ON a.id_aluno = c.id_aluno
GROUP BY a.id_aluno;
```

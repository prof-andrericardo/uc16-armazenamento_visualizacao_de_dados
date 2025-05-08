# 📌 Módulo 3: DML - Data Manipulation Language

## **2. Atualização e Remoção de Dados no SGSA**

> "Os dados em um sistema não são estáticos; eles evoluem, se transformam e, em alguns casos, precisam ser removidos. A capacidade de gerenciar essas mudanças com precisão é essencial para a integridade e confiabilidade da informação."

Neste capítulo, exploraremos detalhadamente as operações de **atualização (`UPDATE`)** e **remoção (`DELETE`)** de dados no **SGSA - Sistema de Gerenciamento de Sala de Aula**. Compreenderemos como modificar registros existentes e excluir informações desnecessárias de maneira segura, garantindo a integridade dos dados no banco.

------

## **2.1. Introdução às Operações de Atualização e Remoção**

No dia a dia de um sistema, muitas informações precisam ser **atualizadas** para refletir mudanças, como um aluno mudando de turma ou um professor assumindo uma nova disciplina. Da mesma forma, há situações em que registros precisam ser **removidos**, como a exclusão de uma chamada lançada incorretamente.

O MySQL fornece comandos específicos para essas operações:

- **`UPDATE`**: Modifica registros existentes em uma tabela.
- **`DELETE`**: Remove registros específicos de uma tabela.
- **`TRUNCATE TABLE`**: Apaga todos os registros de uma tabela, reiniciando a contagem de `AUTO_INCREMENT`.

Vamos analisar detalhadamente cada um desses comandos e sua aplicação no **SGSA**.

------

## **2.2. Atualização de Dados com `UPDATE`**

O comando `UPDATE` permite modificar registros já existentes em uma tabela. Sua estrutura básica é:

```sql
UPDATE nome_da_tabela
SET coluna1 = novo_valor1, coluna2 = novo_valor2
WHERE condição;
```

### **2.2.1. Atualizando Alunos**

Se um aluno for transferido para outra turma, precisamos atualizar essa informação na tabela `Alunos`.

```sql
UPDATE Alunos
SET turma_id = 2
WHERE id_aluno = 1;
```

📌 **Explicação:**

- Alteramos o `turma_id` do aluno com `id_aluno = 1` para `2`, refletindo sua nova turma.
- A cláusula `WHERE` é fundamental para evitar que todos os registros da tabela sejam alterados acidentalmente.

### **2.2.2. Atualizando Professores**

Se um professor mudar de disciplina, precisamos modificar a referência da `disciplina_id` na tabela `Professores`.

```sql
UPDATE Professores
SET disciplina_id = 3
WHERE id_professor = 2;
```

📌 **Pontos Importantes:**

- **Garantir que a nova `disciplina_id` exista** na tabela `Disciplinas` para evitar erros de integridade referencial.
- **Evitar `UPDATE` sem `WHERE`**, pois isso alteraria todos os registros da tabela.

### **2.2.3. Atualizando Registros de Chamada**

Caso um professor registre uma falta erroneamente, podemos corrigir a chamada.

```sql
UPDATE Registro_Chamada
SET presenca = 'Justificado'
WHERE aluno_id = 1 AND disciplina_id = 1 AND data_aula = '2024-03-01';
```

📌 **Explicação:**

- O status da chamada foi alterado de "Ausente" para "Justificado".
- A condição **filtra por aluno, disciplina e data**, garantindo que apenas o registro correto seja alterado.

------

## **2.3. Remoção de Dados com `DELETE`**

O comando `DELETE` permite excluir registros de uma tabela com base em uma condição específica. Sua sintaxe é:

```sql
DELETE FROM nome_da_tabela
WHERE condição;
```

### **2.3.1. Removendo Alunos**

Se um aluno se desligar da instituição, podemos remover seu registro.

```sql
DELETE FROM Alunos
WHERE id_aluno = 3;
```

📌 **Atenção:**

- Se houver registros dependentes (como chamadas ou ocorrências), o MySQL impedirá a exclusão devido à integridade referencial.
- Para evitar isso, podemos ativar a exclusão em cascata (`ON DELETE CASCADE`) ao definir as `FOREIGN KEY`.

### **2.3.2. Removendo Registros de Chamada**

Se um lançamento de chamada foi feito por engano, podemos excluí-lo.

```sql
DELETE FROM Registro_Chamada
WHERE aluno_id = 2 AND data_aula = '2024-03-01';
```

📌 **Boas Práticas:**

- **Sempre usar `WHERE`** para evitar exclusões em massa indesejadas.
- **Conferir os dados antes da exclusão** para evitar perda acidental de informações importantes.

------

## **2.4. Removendo Todos os Registros de uma Tabela com `TRUNCATE`**

Se quisermos apagar **todos** os registros de uma tabela rapidamente, podemos usar `TRUNCATE TABLE`.

```sql
TRUNCATE TABLE Registro_Chamada;
```

📌 **Diferenças entre `DELETE` e `TRUNCATE`**:

- `DELETE` remove registros **específicos** e pode ser revertido com `ROLLBACK` (se estiver dentro de uma transação).
- `TRUNCATE` remove **todos** os registros permanentemente e reinicia os valores `AUTO_INCREMENT`.

------

## **2.5. Conclusão**

A atualização e remoção de dados são operações essenciais para manter um banco de dados eficiente e organizado. Neste capítulo, aprendemos:

✅ Como utilizar `UPDATE` para modificar registros de forma segura. 

✅ Como utilizar `DELETE` para remover registros específicos sem comprometer a integridade dos dados. 

✅ A diferença entre `DELETE` e `TRUNCATE` e quando usá-los.

Nas próximas seções, exploraremos **a manipulação avançada de dados e transações no MySQL**, garantindo mais segurança nas operações do **SGSA**.

🚀 **Agora que dominamos a atualização e remoção de dados, estamos prontos para avançar para o próximo nível de manipulação de informações!**
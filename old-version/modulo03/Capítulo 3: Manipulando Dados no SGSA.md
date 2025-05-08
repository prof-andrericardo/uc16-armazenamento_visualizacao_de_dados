# 📌 Módulo 3: DML - Data Manipulação de Dados

## **3. Prática - Manipulando Dados no SGSA**

> "A informação por si só não é conhecimento. O verdadeiro poder dos dados está em sua manipulação e transformação em insights úteis."

Neste capítulo, colocaremos em prática tudo o que aprendemos até agora sobre **inserção (`INSERT`), atualização (`UPDATE`) e remoção (`DELETE`) de dados** no **SGSA - Sistema de Gerenciamento de Sala de Aula**. Vamos realizar consultas reais e modificar registros de maneira eficiente e segura, garantindo a integridade do banco de dados.

------

## **3.1. Introdução à Manipulação de Dados**

No contexto de bancos de dados relacionais, a manipulação de dados é essencial para manter a informação sempre atualizada e organizada. O MySQL fornece um conjunto poderoso de comandos **DML (Data Manipulation Language)** para adicionar, modificar e excluir registros de tabelas.

Os principais comandos que utilizaremos nesta prática são:

- `INSERT INTO` → Para inserir novos registros nas tabelas.
- `UPDATE` → Para modificar registros existentes.
- `DELETE` → Para remover registros específicos.
- `SELECT` → Para consultar e visualizar os dados manipulados.

Vamos aplicar esses comandos ao banco de dados **SGSA**, garantindo um controle eficaz das informações escolares.

------

## **3.2. Inserindo Dados no SGSA**

Antes de iniciarmos a manipulação dos dados, precisamos garantir que nossas tabelas já estejam criadas e preparadas para receber informações.

### **3.2.1. Inserindo Turmas**

Cada aluno pertence a uma turma específica. Primeiro, cadastramos as turmas no sistema:

```sql
INSERT INTO Turmas (nome_turma, turno) VALUES
('1A Informática', 'Matutino'),
('1B Informática', 'Vespertino'),
('2A Administração', 'Noturno');
```

📌 **Explicação:**

- Estamos inserindo **três turmas** no banco de dados.
- O campo `turno` utiliza valores predefinidos (`ENUM` com Matutino, Vespertino, Noturno).

### **3.2.2. Inserindo Alunos**

Agora, adicionamos alunos às turmas cadastradas:

```sql
INSERT INTO Alunos (nome, matricula, turma_id) VALUES
('Ana Souza', '2024001', 1),
('Carlos Oliveira', '2024002', 1),
('Mariana Lima', '2024003', 2);
```

📌 **Detalhes Importantes:**

- Cada aluno recebe um número de matrícula único.
- `turma_id` é uma **chave estrangeira**, referenciando a tabela `Turmas`.

### **3.2.3. Inserindo Professores**

Os professores são vinculados às disciplinas que lecionam:

```sql
INSERT INTO Professores (nome, disciplina_id) VALUES
('Lucas Mendes', 1),
('Fernanda Silva', 2);
```

📌 **Observação:**

- `disciplina_id` deve existir na tabela `Disciplinas`, garantindo a integridade do banco.

### **3.2.4. Inserindo Registros de Chamada**

Agora, registramos a presença dos alunos em uma aula:

```sql
INSERT INTO Registro_Chamada (aluno_id, disciplina_id, data_aula, presenca) VALUES
(1, 1, '2024-03-01', 'Presente'),
(2, 1, '2024-03-01', 'Ausente'),
(3, 2, '2024-03-02', 'Justificado');
```

📌 **Dicas:**

- `data_aula` registra o dia da aula.
- `presenca` usa um tipo `ENUM` (`Presente`, `Ausente`, `Justificado`).

------

## **3.3. Atualizando Dados no SGSA**

Para manter as informações sempre corretas, utilizamos o `UPDATE`.

### **3.3.1. Atualizando Informações de um Aluno**

Se um aluno for transferido de turma, precisamos refletir essa mudança no banco:

```sql
UPDATE Alunos
SET turma_id = 2
WHERE id_aluno = 1;
```

📌 **Explicação:**

- Alteramos a turma do aluno de `id_aluno = 1` para a turma com `id_turma = 2`.
- **A cláusula `WHERE` é obrigatória** para evitar alterações em todos os registros.

### **3.3.2. Atualizando Registros de Chamada**

Se um professor precisar corrigir um erro na chamada:

```sql
UPDATE Registro_Chamada
SET presenca = 'Justificado'
WHERE aluno_id = 2 AND disciplina_id = 1 AND data_aula = '2024-03-01';
```

📌 **Boas Práticas:**

- Sempre validar os dados antes de atualizar.
- Testar a consulta com `SELECT` antes de executar o `UPDATE`.

------

## **3.4. Removendo Dados do SGSA**

A remoção de dados deve ser feita com cautela para não comprometer a integridade do banco.

### **3.4.1. Removendo Alunos**

Se um aluno se desligar da instituição:

```sql
DELETE FROM Alunos
WHERE id_aluno = 3;
```

📌 **Atenção:**

- Se houver registros de chamada associados, a remoção pode ser bloqueada pela integridade referencial.
- Para remover o aluno e seus registros, ativamos `ON DELETE CASCADE` na chave estrangeira.

### **3.4.2. Removendo Registros de Chamada**

Se um professor quiser excluir um lançamento incorreto:

```sql
DELETE FROM Registro_Chamada
WHERE aluno_id = 2 AND data_aula = '2024-03-01';
```

📌 **Dicas:**

- **Sempre usar `WHERE`** para evitar exclusões acidentais.
- Conferir com `SELECT` antes de executar um `DELETE`.

------

## **3.5. Conclusão**

A prática de manipulação de dados é essencial para garantir que o sistema **SGSA** funcione corretamente. Neste capítulo, realizamos:

✅ **Inserção de dados** em tabelas como `Turmas`, `Alunos` e `Registro_Chamada`. ✅ **Atualização de informações** usando `UPDATE` para corrigir ou modificar registros. ✅ **Remoção de dados** com `DELETE`, sempre garantindo a integridade do banco.

No próximo capítulo, abordaremos consultas avançadas para extrair relatórios e análises dos dados cadastrados.

🚀 **Agora que você domina a manipulação de dados, está pronto para aprofundar suas consultas no MySQL!**
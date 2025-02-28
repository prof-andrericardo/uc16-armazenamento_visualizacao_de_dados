# 📌 Módulo 3: DML - Data Manipulation Language

## **1. Inserção de Dados no SGSA**

> "Os dados são a base do conhecimento, e uma boa estrutura de inserção garante a confiabilidade e precisão da informação armazenada."

Neste capítulo, exploraremos detalhadamente a inserção de dados no **SGSA - Sistema de Gerenciamento de Sala de Aula**. Vamos entender como adicionar alunos, professores, turmas, disciplinas e registros importantes, garantindo consistência e integridade no banco de dados.

------

## **1.1. Introdução à Inserção de Dados**

A inserção de dados é uma das operações mais frequentes em um banco de dados. No MySQL, utilizamos a instrução `INSERT INTO` para adicionar novos registros em tabelas. Cada inserção precisa ser feita considerando a estrutura de colunas e suas restrições, garantindo que os dados sejam coerentes e evitem inconsistências.

O formato básico do comando `INSERT INTO` é:

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3) VALUES (valor1, valor2, valor3);
```

### **1.1.1. Inserção de múltiplos registros**

Podemos inserir vários registros de uma só vez, separando cada conjunto de valores por vírgula:

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2) VALUES
(valor1, valor2),
(valor3, valor4),
(valor5, valor6);
```

Isso otimiza a performance do banco, reduzindo o número de comandos executados.

### **1.1.2. Inserção de dados específicos**

Caso seja necessário inserir um valor específico em uma determinada coluna e deixar outras com valores padrão, podemos omitir as colunas opcionais:

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2) VALUES (valor1, DEFAULT);
```

Isso é útil para colunas que possuem valores `DEFAULT` definidos durante a criação da tabela.

------

## **1.2. Inserindo Dados nas Tabelas Principais**

Agora que compreendemos o funcionamento dos comandos `INSERT INTO`, vamos aplicá-los seguindo a **ordem correta de criação das tabelas**.

### **1.2.1. Inserindo Turmas**

A tabela `Turmas` deve ser populada antes de outras, pois `Alunos` e `Disciplinas` fazem referência a ela.

```sql
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    turno ENUM('Matutino', 'Vespertino', 'Noturno') NOT NULL
);
```

Inserindo algumas turmas:

```sql
INSERT INTO Turmas (nome_turma, turno) VALUES
('1A Informática', 'Matutino'),
('1B Informática', 'Vespertino');
```

### **1.2.2. Inserindo Disciplinas**

Após a criação das turmas, podemos inserir as disciplinas.

```sql
CREATE TABLE Disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(50) NOT NULL
);
```

Inserindo algumas disciplinas:

```sql
INSERT INTO Disciplinas (nome_disciplina) VALUES
('Banco de Dados'),
('Programação Web');
```

### **1.2.3. Inserindo Professores**

A tabela `Professores` contém uma referência às disciplinas, então deve ser criada após elas.

```sql
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    disciplina_id INT NOT NULL,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina)
);
```

Agora, inserimos alguns professores:

```sql
INSERT INTO Professores (nome, disciplina_id) VALUES
('Lucas Mendes', 1),
('Fernanda Silva', 2);
```

### **1.2.4. Inserindo Alunos**

Agora que já temos turmas cadastradas, podemos inserir os alunos.

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    turma_id INT NOT NULL,
    FOREIGN KEY (turma_id) REFERENCES Turmas(id_turma)
);
```

Adicionando alguns alunos:

```sql
INSERT INTO Alunos (nome, matricula, turma_id) VALUES
('Ana Souza', '2024001', 1),
('Carlos Oliveira', '2024002', 1),
('Mariana Lima', '2024003', 2);
```

### **1.2.5. Inserindo Registros de Chamada**

Com alunos e disciplinas já cadastradas, podemos inserir chamadas.

```sql
CREATE TABLE Registro_Chamada (
    id_chamada INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    data_aula DATE NOT NULL,
    presenca ENUM('Presente', 'Ausente', 'Justificado') NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id_disciplina)
);
```

Inserindo registros de chamada:

```sql
INSERT INTO Registro_Chamada (aluno_id, disciplina_id, data_aula, presenca) VALUES
(1, 1, '2024-03-01', 'Presente'),
(2, 1, '2024-03-01', 'Ausente'),
(3, 2, '2024-03-02', 'Justificado');
```

------

## **1.3. Conclusão**

A inserção de dados é uma etapa essencial para garantir que o sistema **SGSA** funcione corretamente. Neste capítulo, cobrimos a adição de informações essenciais como **turmas, disciplinas, professores, alunos e registros de chamadas**, assegurando que as tabelas estejam bem estruturadas e relacionadas corretamente.

Nas próximas seções, abordaremos **atualização e remoção de dados**, explorando como modificar registros existentes e gerenciar alterações no banco de dados.

🚀 **Agora que aprendemos a inserir dados, estamos prontos para manipular essas informações de maneira eficiente!**

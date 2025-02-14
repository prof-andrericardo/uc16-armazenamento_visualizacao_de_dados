# 📚 Aula 3: Introdução ao MySQL

## ✨ 3.1 Frase Reflexiva

> "Os dados são o novo petróleo. Mas sem um banco de dados bem estruturado, são apenas um oceano sem forma." — Clive Humby

## 🏁 3.2 Introdução

O MySQL é um dos sistemas de gerenciamento de banco de dados relacionais (SGBD) mais utilizados no mundo. Ele permite **armazenar, manipular e recuperar informações** de maneira eficiente, sendo amplamente adotado por empresas, desenvolvedores e instituições acadêmicas.

Nesta aula, vamos: ✅ Configurar o ambiente de trabalho no MySQL.
 ✅ Conhecer os comandos básicos para criar e gerenciar bancos de dados.
 ✅ Explorar o **MySQL Workbench** e sua interface gráfica.

Ao final, você será capaz de **criar seu primeiro banco de dados e explorar suas funcionalidades**. 🚀

------

## 🔍 3.3 Desenvolvimento do Conteúdo

### **🛠️ 3.3.1 Configuração do Ambiente**

Para começar a usar o MySQL, precisamos configurar o ambiente. Vamos abordar duas maneiras principais de acessá-lo:

#### **📌 Acesso ao MySQL pelo Terminal**

Caso esteja usando o **Debian 12.9 em uma máquina virtual**, siga os passos abaixo:

1. Abra o terminal e digite:

   ```bash
   mysql -u root -p
   ```

2. Digite a senha do usuário `root` quando solicitado.

3. Se o login for bem-sucedido, você verá o prompt do MySQL:

   ```sql
   mysql>
   ```

4. Agora, você pode executar comandos SQL diretamente no terminal. 🎯

#### **🖥️ Acesso ao MySQL Workbench**

O **MySQL Workbench** é uma ferramenta gráfica que facilita a administração do banco de dados. Para acessá-lo:

1. **Abra o Workbench** e clique em "New Connection".

2. Preencha os campos:

   - *Hostname:* `localhost`
   - *Username:* `root`
   - *Password:* (a senha definida no MySQL)

3. Clique em **Test Connection** e depois em **OK**.

4. Agora, você pode gerenciar bancos de dados visualmente. ✅

------

### **📄 3.3.2 Comandos Básicos no MySQL**

#### **📌 Criando um Banco de Dados**

Agora vamos criar um banco de dados que utilizaremos ao longo do curso:

```sql
CREATE DATABASE sistema_escolar;
```

📌 **Explicação:** Esse comando cria um **novo banco de dados** que poderá armazenar informações sobre alunos, professores e aulas.

#### **📌 Listando Bancos de Dados**

Para visualizar todos os bancos de dados disponíveis no MySQL:

```sql
SHOW DATABASES;
```

📌 **Saída esperada:**

```
+--------------------+
| Database           |
+--------------------+
| information_schema |
| sistema_escolar    |
| mysql              |
| performance_schema |
| sys                | 
+--------------------+
```

#### **📌 Selecionando um Banco de Dados**

Para indicar que vamos trabalhar dentro de um banco de dados específico, usamos:

```sql
USE sistema_escolar;
```

📌 **Explicação:** Esse comando define `sistema_escolar` como o banco de dados ativo.

------

## 🎯 3.4 Atividades Práticas

### **📌 3.4.1 Em Sala de Aula**

1. Configuração do MySQL:
   - Acesse o MySQL via terminal e crie um banco chamado `sistema_escolar`.
2. Exploração de comandos:
   - Liste os bancos de dados disponíveis.
   - Selecione `sistema_escolar` e descreva seu funcionamento.

### **🏡 3.4.2 Para Casa**

1. MySQL Workbench:
   - Crie um banco chamado `sistema_academico` e explore a interface gráfica.
2. Pesquisa:
   - Descubra a importância do MySQL em sistemas educacionais e empresas.

------

## 📝 3.5 Fixação do Conteúdo

### **🖊️ Questões Dissertativas**

1. Explique a diferença entre os comandos `CREATE DATABASE` e `USE` no MySQL.
2. Como o MySQL Workbench facilita a administração de um banco de dados relacional?

### **📝 Questões de Múltipla Escolha**

1. Qual comando é usado para listar todos os bancos de dados no MySQL?
   - [ ] `LIST DATABASES`
   - [ ] `SHOW DATABASES`
   - [ ] `DISPLAY DATABASES`
   - [ ] `VIEW DATABASES`
2. Qual comando é utilizado para criar um novo banco de dados?
   - [ ] `NEW DATABASE`
   - [ ] `CREATE DATABASE`
   - [ ] `MAKE DATABASE`
   - [ ] `ADD DATABASE`

### **📋 Questões de Caixa de Seleção**

1. Quais comandos são usados no gerenciamento de bancos de dados?
   - [ ] `CREATE DATABASE`
   - [ ] `USE`
   - [ ] `REMOVE TABLE`
   - [ ] `DELETE COLUMN`
   - [ ] `SHOW DATABASES`
2. Quais características pertencem ao MySQL Workbench?
   - [ ] Interface gráfica para bancos de dados
   - [ ] Permite criar tabelas visualmente
   - [ ] Ferramenta exclusiva para backup
   - [ ] Substitui completamente o terminal

### **🔗 Questões de Associação de Colunas**

1. Associe os comandos às suas funções:
   - **CREATE DATABASE** → ( ) Cria um novo banco de dados.
   - **SHOW DATABASES** → ( ) Lista todos os bancos disponíveis.
   - **USE** → ( ) Seleciona um banco para uso.
   - **DROP DATABASE** → ( ) Exclui um banco de dados.

### **⚖️ Questões de Verdadeiro ou Falso**

1. O comando `USE` cria um novo banco de dados.
2. O MySQL Workbench é uma ferramenta gráfica para gerenciar bancos de dados.
3. O MySQL só pode ser acessado via terminal.
4. `SHOW DATABASES` exibe todos os bancos de dados criados.

- [ ] F V V V
- [ ] V F V V
- [ ] V F F V
- [ ] F V F V

------

## 🏁 3.6 Conclusão

Nesta aula, aprendemos a **configurar o MySQL**, **executar comandos básicos** e explorar o **MySQL Workbench**. Isso representa o primeiro passo para manipular bancos de dados e construir aplicações eficientes.

📌 **Na próxima aula, vamos aprofundar a criação e manipulação de tabelas no MySQL!** 🚀

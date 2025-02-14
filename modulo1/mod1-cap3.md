# 🏛 **Módulo 1: Fundamentos de Banco de Dados**

## 📖 **Capítulo 3 - Introdução ao SGBD MySQL**

> **"A informação é o ativo mais valioso do século XXI. E um banco de dados bem estruturado é a chave para organizá-la, protegê-la e acessá-la com eficiência."**

------

## 📌 **Objetivo do capítulo**

Este capítulo apresenta o **SGBD MySQL**, explicando suas **características**, **vantagens**, **instalação no Linux** e seu uso com ferramentas como **MySQL Workbench e MySQL Shell**. Além disso, serão abordados os primeiros passos para manipular dados no MySQL, estabelecendo a base para a criação do **SGSA**.

------

## 🏗 **3.1 O que é um SGBD?**

### 📌 **Definição**

Um **Sistema Gerenciador de Banco de Dados (SGBD)** é um software que **organiza, armazena e gerencia dados de maneira eficiente**, garantindo integridade e segurança das informações.

### 📌 **Principais funções de um SGBD:**

- ✔ **Armazenamento estruturado** – Gerencia grandes volumes de dados organizadamente.
- ✔ **Controle de acesso** – Permite a criação de usuários com diferentes permissões.
- ✔ **Integridade dos dados** – Garante que os dados inseridos sejam coerentes e sigam regras definidas.
- ✔ **Execução de consultas complexas** – Permite recuperar dados rapidamente com o SQL.
- ✔ **Suporte a transações** – Garante operações seguras e consistentes.

🔎 **Exemplo prático:**
 Em uma escola, um **SGBD** pode ser usado para **armazenar informações dos alunos**, **registrar suas notas e frequência** e **gerar relatórios administrativos**.

------

## 🏆 **3.2 Características e Vantagens do MySQL**

O **MySQL** é um dos SGBDs **mais populares do mundo**, sendo amplamente utilizado por empresas como **Facebook, Twitter, Netflix e Google**.

🔹 **Principais características:**
- ✔ **Código aberto** – Disponível gratuitamente sob licença GPL.
- ✔ **Alto desempenho** – Otimizado para processar grandes volumes de dados rapidamente.
- ✔ **Portabilidade** – Funciona em Windows, Linux e macOS.
- ✔ **Segurança** – Suporte a criptografia, autenticação e controle de permissões.
- ✔ **Alta disponibilidade** – Suporte a replicação e clusters para alta confiabilidade.

🔹 **Quando utilizar o MySQL?**
 🎯 Para sistemas que exigem **desempenho, confiabilidade e escalabilidade**, como:
 - ✔ Aplicações Web 📡
 - ✔ Sistemas acadêmicos 🎓
 - ✔ E-commerces 🛒
 - ✔ Aplicações empresariais 🏢

🔎 **Exemplo prático:**
 O **SGSA** usará **MySQL** para armazenar **alunos, professores, chamadas e ocorrências**, garantindo que os dados possam ser **consultados e atualizados rapidamente**.

------

## 🛠️ **3.3 Instalando e Configurando o MySQL no Linux**

### 📌 **Instalação do MySQL no Debian 12**

📢 **Passo 1: Atualize os pacotes do sistema**

```bash
sudo apt update && sudo apt upgrade -y
```

📢 **Passo 2: Instale o MySQL Server**

```bash
sudo apt install mysql-server -y
```

📢 **Passo 3: Verifique o status do MySQL**

```bash
sudo systemctl status mysql
```

Se o serviço estiver rodando corretamente, a saída será semelhante a esta:

```
● mysql.service - MySQL Community Server
   Loaded: loaded (/lib/systemd/system/mysql.service; enabled)
   Active: active (running)
```

📢 **Passo 4: Configurar segurança do MySQL**
 Após a instalação, execute o seguinte comando para definir uma senha de root e reforçar a segurança:

```bash
sudo mysql_secure_installation
```

O sistema fará algumas perguntas, como:
- ✔ **Definir senha para o root** 🛡️
- ✔ **Remover usuários anônimos** 🚫
- ✔ **Desativar acesso remoto do root** 🔒

📢 **Passo 5: Acessar o MySQL pela primeira vez**

```bash
sudo mysql -u root -p
```

Digite a senha definida e pronto! Agora você pode executar comandos SQL.

------

## 💻 **3.4 Utilizando MySQL Workbench e MySQL Shell**

O **MySQL Workbench** e o **MySQL Shell** são ferramentas poderosas para gerenciar o banco de dados.

### 📌 **MySQL Workbench**

O **MySQL Workbench** é uma ferramenta gráfica que facilita:
- ✔ **Criação e edição de tabelas** 📋
- ✔ **Execução de consultas SQL** 🔍
- ✔ **Geração de diagramas de relacionamento** 📊

📢 **Instalação no Linux:**

```bash
sudo apt install mysql-workbench -y
```

📢 **Como conectar ao banco de dados:**

1. Abra o **MySQL Workbench**.
2. Clique em **"New Connection"**.
3. Insira as credenciais:
   - Hostname: `localhost`
   - Username: `root`
   - Senha: *senha definida na instalação*
4. Clique em **"Test Connection"** para verificar a conexão.

------

### 📌 **MySQL Shell**

O **MySQL Shell** permite manipular o banco via linha de comando.

📢 **Instalação:**

```bash
sudo apt install mysql-shell -y
```

📢 **Acesso ao MySQL Shell:**

```bash
mysqlsh
```

📢 **Conectando ao banco via MySQL Shell:**

```sql
\connect root@localhost
```

📢 **Exemplo prático:** Criando um banco de dados no MySQL Shell:

```sql
CREATE DATABASE SGSA;
USE SGSA;
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL
);
```

------

## 🚀 **3.5 Primeiros Passos com MySQL**

Agora que o MySQL está instalado, podemos realizar algumas operações básicas!

📢 **Criando um banco de dados**

```sql
CREATE DATABASE SGSA;
```

📢 **Selecionando um banco de dados**

```sql
USE SGSA;
```

📢 **Criando uma tabela para armazenar alunos**

```sql
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL,
    turma_id INT
);
```

📢 **Inserindo dados na tabela**

```sql
INSERT INTO Alunos (nome, matricula, turma_id) VALUES ('João Silva', '12345', 3);
```

📢 **Consultando os dados cadastrados**

```sql
SELECT * FROM Alunos;
```

------

## 🎓 **Conclusão**

- ✔ **O MySQL é um dos SGBDs mais utilizados no mundo, oferecendo alto desempenho e segurança.**
- ✔ **É uma ferramenta essencial para aplicações que exigem manipulação eficiente de grandes volumes de dados.**
- ✔ **Com o MySQL, podemos armazenar e gerenciar as informações do SGSA de forma estruturada.**
- ✔ **Ferramentas como MySQL Workbench e MySQL Shell facilitam o gerenciamento e execução de comandos SQL.**

Agora que o MySQL está instalado e configurado, estamos prontos para começar a desenvolver o **SGSA**! 🚀

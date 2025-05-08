# 📚 Módulo 1: Fundamentos de Banco de Dados

# 📖 Capítulo 5 - Introdução ao SGBD MySQL

> 🧠 *"O sucesso de um banco de dados começa na escolha do seu SGBD."* – Anônimo

------

## 🎯 **Objetivo do Capítulo**

Neste capítulo, você aprenderá:

✅ O que é um **SGBD (Sistema Gerenciador de Banco de Dados)** e sua importância.

✅ As **características e vantagens** do MySQL.

✅ Como instalar e configurar o **MySQL no Linux e no Windows**.

✅ Como utilizar o **MySQL Workbench** e **MySQL Shell**.

✅ Como criar e conectar ao banco de dados utilizando o **MySQL Workbench**.

Ao final deste capítulo, você terá uma base sólida para iniciar o uso do MySQL como seu principal SGBD.

------

## 🔍 **5.1 O que é um SGBD?**

Um **Sistema Gerenciador de Banco de Dados (SGBD)** é um software que permite **criar, gerenciar e manipular bancos de dados** de forma eficiente. Ele fornece ferramentas para armazenar, recuperar e gerenciar grandes quantidades de informações.

✔ **Organização e integridade dos dados** – Controla a estruturação e consistência dos registros.

✔ **Segurança** – Permite a definição de permissões de acesso para usuários.

✔ **Eficiência e escalabilidade** – Lida com grandes volumes de dados e otimiza consultas.

✔ **Suporte a múltiplos usuários** – Permite acesso simultâneo por diferentes usuários.

🎯 **Exemplo de uso de um SGBD:**

- Em um sistema escolar, um SGBD pode armazenar informações de alunos, professores, notas e frequência.
- Em um site de e-commerce, o SGBD gerencia produtos, pedidos e dados de clientes.

------

## 🏆 **5.2 Características e Vantagens do MySQL**

O **MySQL** é um dos **SGBDs mais populares do mundo**, sendo amplamente utilizado em aplicações web, sistemas empresariais e projetos acadêmicos.

### 🔹 **Características principais:**

✅ **Código aberto** – O MySQL é gratuito e tem suporte da comunidade.

✅ **Alto desempenho** – Capacidade de processar grandes volumes de dados rapidamente.

✅ **Multiplataforma** – Disponível para Linux, Windows e macOS.

✅ **Escalável** – Utilizado tanto em pequenos sistemas quanto em grandes aplicações.

✅ **Compatível com SQL padrão** – Suporte aos principais comandos SQL.

✅ **Ferramentas gráficas** – MySQL Workbench facilita a administração visual do banco.

### 🔹 **Onde o MySQL é utilizado?**

- Aplicações web (WordPress, Joomla, Magento, etc.).
- Redes sociais e serviços de streaming.
- Sistemas de ERP, CRM e e-commerce.

------

## 🏗️ **5.3 Instalação e Configuração no Linux**

A instalação do MySQL no Linux pode ser feita por meio de gerenciadores de pacotes.

### 📌 **Passo 1: Atualizar repositórios**

```bash
sudo apt update && sudo apt upgrade
```

### 📌 **Passo 2: Instalar o MySQL Server**

```bash
sudo apt install mysql-server -y
```

### 📌 **Passo 3: Configurar o MySQL**

Após a instalação, execute o comando abaixo para definir as configurações de segurança:

```bash
sudo mysql_secure_installation
```

Durante esse processo, você poderá definir:

- Senha do usuário root.
- Remoção de usuários anônimos.
- Restrição de acesso remoto.

### 📌 **Passo 4: Verificar status do MySQL**

```bash
sudo systemctl status mysql
```

Se o serviço não estiver ativo, inicie-o:

```bash
sudo systemctl start mysql
```

------

## 🏗️ **5.4 Instalação e Configuração no Windows**

Para instalar o MySQL no Windows, siga os passos abaixo:

### 📌 **Passo 1: Baixar o MySQL Installer**

Acesse o site oficial do MySQL: https://dev.mysql.com/downloads/installer/

### 📌 **Passo 2: Executar o instalador**

- Escolha a opção "Developer Default" para instalar os pacotes principais.
- Configure o servidor MySQL, definindo a senha do usuário `root`.

### 📌 **Passo 3: Verificar instalação**

Abra o prompt de comando e execute:

```cmd
mysql -u root -p
```

Digite a senha e pressione **Enter** para acessar o MySQL.

------

## 🛠️ **5.5 Uso do MySQL Workbench e MySQL Shell**

O MySQL Workbench é uma ferramenta gráfica que facilita a administração do banco.

### 📌 **Principais funcionalidades do MySQL Workbench:**

✔ Modelagem de banco de dados.

✔ Execução de consultas SQL.

✔ Administração de usuários e permissões.

✔ Monitoramento do desempenho do banco.

### 📌 **Instalação do MySQL Workbench:**

- No **Windows**, o MySQL Workbench é instalado junto com o MySQL Installer.
- No **Linux**, instale com o seguinte comando:

```bash
sudo apt install mysql-workbench -y
```

🎯 **Exemplo de conexão ao banco via MySQL Workbench:**

1. Abra o MySQL Workbench.
2. Clique em "+" para adicionar uma nova conexão.
3. Insira o **hostname** (`localhost`), **usuário** (`root`) e **senha**.
4. Clique em "Test Connection" para validar a conexão.

Já o **MySQL Shell** é uma interface de linha de comando moderna para interação com o MySQL. Para acessá-lo, basta executar:

```bash
mysqlsh
```

------

## 🎯 **5.6 Criando e Conectando ao Banco de Dados no MySQL Workbench**

Após instalar e configurar o MySQL, podemos criar nosso primeiro banco de dados.

### 📌 **Passo 1: Criar um Banco de Dados**

No MySQL Workbench, execute o seguinte comando SQL:

```sql
CREATE DATABASE sgsa;
```

Isso criará um banco de dados chamado **SGSA** (Sistema de Gerenciamento de Sala de Aula).

### 📌 **Passo 2: Usar o Banco de Dados**

```sql
USE sgsa;
```

Agora estamos dentro do banco e podemos criar tabelas.

### 📌 **Passo 3: Criar uma Tabela**

```sql
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade TINYINT NOT NULL,
    turma VARCHAR(10) NOT NULL
);
```

Agora o banco de dados está pronto para ser utilizado! 🚀

------

## 🏁 **Conclusão**

Neste capítulo, aprendemos:

✅ O que é um **SGBD** e suas vantagens.

✅ As principais características do **MySQL**.

✅ Como instalar e configurar o MySQL no **Linux** e **Windows**.

✅ Como utilizar o **MySQL Workbench** e **MySQL Shell**.

✅ Como criar e conectar-se a um banco de dados no MySQL.

📌 **Nos próximos capítulos, aprofundaremos na modelagem e manipulação de dados!** 🚀
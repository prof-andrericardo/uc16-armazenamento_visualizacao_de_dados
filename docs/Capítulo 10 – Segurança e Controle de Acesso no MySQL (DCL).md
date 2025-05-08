# 📘 Capítulo 10 – Segurança e Controle de Acesso no MySQL (DCL)

> 🔐 *“Segurança não é apenas impedir o acesso indevido — é garantir que cada um veja apenas o que precisa ver.”*
>  — **IAra, a guardiã do SGSA**

------

## 🧭 Introdução Didática

Em sistemas reais como o SGSA, manter a integridade dos dados vai além de modelagem e estruturação: é essencial **controlar quem pode acessar o quê**. A segurança em banco de dados é fundamental para proteger informações confidenciais, como dados de alunos, chamadas e ocorrências disciplinares.

Neste capítulo, você aprenderá a usar os comandos da **DCL – Data Control Language**, que permite **criar usuários**, **conceder ou remover permissões**, e **auditar privilégios**.

------

## 📂 Missão do Capítulo

🎯 **"Você agora é o Administrador de Segurança do SGSA. Sua missão é garantir que cada usuário do banco tenha acesso apenas às informações e comandos que precisa."**

------

## 📌 O que é DCL – Data Control Language?

📘 DCL é o subconjunto da linguagem SQL responsável por **controlar o acesso aos dados**.

| Comando       | Finalidade                                     |
| ------------- | ---------------------------------------------- |
| `CREATE USER` | Cria um novo usuário do banco                  |
| `GRANT`       | Concede permissões específicas a um usuário    |
| `REVOKE`      | Remove permissões concedidas anteriormente     |
| `SHOW GRANTS` | Exibe as permissões ativas de um usuário       |
| `DROP USER`   | Remove um usuário do sistema de banco de dados |

------

## 🛠️ Configurando Usuários no MySQL

### 📘 Exemplo 1 – Criando um novo usuário

```sql
CREATE USER 'professor_sgsa'@'localhost' IDENTIFIED BY 'senhaSegura@123';
```

> 🔐 Cria um usuário chamado `professor_sgsa` que só pode acessar o banco a partir do próprio servidor (`localhost`).
>  A senha deve ser forte e protegida.

------

### 📘 Exemplo 2 – Concedendo permissões com GRANT

```sql
GRANT SELECT, INSERT ON sgsa.chamadas TO 'professor_sgsa'@'localhost';
```

> 🧠 Esse comando permite que o usuário `professor_sgsa` **visualize (SELECT)** e **registre chamadas (INSERT)**, mas **não pode apagar (DELETE)** ou atualizar (UPDATE) registros.

------

### 📘 Exemplo 3 – Permissões mais amplas para coordenador

```sql
CREATE USER 'coordenador_sgsa'@'localhost' IDENTIFIED BY 'senhaCoord@2025';

GRANT SELECT, INSERT, UPDATE, DELETE ON sgsa.* TO 'coordenador_sgsa'@'localhost';
```

> 👤 O coordenador pode **consultar, adicionar, alterar e excluir** dados de qualquer tabela no banco `sgsa`.

------

### 📘 Exemplo 4 – Usuário apenas para leitura (TI monitoramento)

```sql
CREATE USER 'leitor_sgsa'@'localhost' IDENTIFIED BY 'senhaLeitura@123';

GRANT SELECT ON sgsa.* TO 'leitor_sgsa'@'localhost';
```

> 🔍 Ideal para um profissional de TI que apenas analisa dados ou gera relatórios, **sem modificar nada**.

------

## 👀 Verificando permissões com SHOW GRANTS

```sql
SHOW GRANTS FOR 'professor_sgsa'@'localhost';
```

> 📋 Esse comando exibe todas as permissões atuais do usuário.

------

## 🚫 Removendo privilégios com REVOKE

```sql
REVOKE INSERT ON sgsa.chamadas FROM 'professor_sgsa'@'localhost';
```

> 🧼 Agora o `professor_sgsa` só pode fazer `SELECT` na tabela `chamadas`.

------

## ❌ Excluindo um usuário com DROP USER

```sql
DROP USER 'leitor_sgsa'@'localhost';
```

> 🧹 Remove completamente o usuário do MySQL.

------

## 🧪 Boas Práticas em Segurança de Acesso

✅ **Boas práticas:**

- Crie um usuário diferente para cada perfil (ex: professor, coordenador, suporte);
- Conceda apenas os privilégios estritamente necessários;
- Nunca use o usuário `root` para tarefas rotineiras;
- Mantenha senhas fortes e atualizadas regularmente;
- Use `SHOW GRANTS` para auditar acessos periodicamente.

⚠️ **Erros comuns:**

- Usar o mesmo usuário para todos os acessos;
- Permitir comandos perigosos como `DROP`, `DELETE` indiscriminadamente;
- Deixar usuários sem senha;
- Não revogar privilégios antigos após mudanças de cargo.

------

## 💬 Exemplo Real do SGSA – Simulação de Acesso Restrito

📘 Situação: o professor André deve registrar chamadas, mas não deve poder ver as ocorrências dos alunos.

```sql
CREATE USER 'andre_professor'@'localhost' IDENTIFIED BY 'ProfAndre@2025';

GRANT SELECT, INSERT ON sgsa.chamadas TO 'andre_professor'@'localhost';

-- NENHUMA permissão para a tabela `ocorrencias`
```

> ✅ Resultado: ele consegue registrar presença nas aulas, mas não pode ver dados sensíveis como punições ou advertências.

------

## 🎓 Conclusão Reflexiva

Controlar o acesso ao banco é **mais do que proteger dados** — é garantir que cada pessoa só atue onde deve. Em um sistema escolar como o SGSA, um professor não pode apagar dados de outro, nem um aluno pode ver ocorrências disciplinares. A segurança começa na arquitetura e se fortalece na concessão correta de privilégios.

*“Segurança em banco de dados é como chave de sala: cada um só entra onde tem permissão.”*

------

## 🧠 Seção de Fixação de Conteúdo

### ✅ 1. Questão Dissertativa

**Explique o uso dos comandos `CREATE USER`, `GRANT` e `REVOKE` no contexto do SGSA. Por que esses comandos são importantes para a segurança?**

------

### 🔘 2. Múltipla Escolha

**Qual comando permite visualizar os privilégios de um usuário no MySQL?**

-  GRANT
-  SHOW GRANTS
-  REVOKE
-  DESCRIBE USER

------

### ☑️ 3. Caixa de Seleção

**Quais boas práticas devem ser aplicadas no controle de acesso?**

-  Criar um usuário por função ou perfil
-  Usar senhas fortes
-  Permitir acesso root a todos para facilitar
-  Usar GRANT com os privilégios mínimos necessários
-  Nunca usar REVOKE para evitar erros

------

### 🔗 4. Associação de Colunas

| Comando DCL   | Função                                                      |
| ------------- | ----------------------------------------------------------- |
| `CREATE USER` | (   ) Cria um novo usuário de banco de dados                |
| `GRANT`       | (   ) Concede permissões específicas a um usuário           |
| `REVOKE`      | (   ) Remove permissões anteriormente concedidas            |
| `SHOW GRANTS` | (   ) Exibe os privilégios atribuídos a determinado usuário |
| `DROP USER`   | (   ) Apaga um usuário da base de dados                     |

------

### ✔️ 5. Verdadeiro ou Falso

1. `GRANT` é usado para remover permissões. ( )
2. Um usuário pode ser criado com o comando `CREATE USER`. ( )
3. `REVOKE` serve para cancelar privilégios. ( )
4. Todo usuário deve usar o usuário root. ( )

-  F V F V
-  F V V F
-  V V V V
-  F F V F

------

## 📚 Referências Complementares

- 📘 [Documentação MySQL – DCL](https://dev.mysql.com/doc/refman/8.0/en/account-management-statements.html)
- 🎥 [Curso em Vídeo – Segurança em SQL](https://www.youtube.com/watch?v=3I1x5_Y_jQ4)
- 💬 [Stack Overflow em Português – GRANT e REVOKE](https://pt.stackoverflow.com/questions/tagged/grant)

------

```markdown
#### ⏪ [Capítulo Anterior](<Capítulo 9 – Transações com COMMIT, ROLLBACK e SAVEPOINT.md>)
#### 🏠 [Início](../README.md)
#### ⏩ [Próximo Capítulo](<Capítulo 11 – Funções SQL e Subconsultas.md>)
```
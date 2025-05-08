# 📘 Capítulo 9 – Controle de Transações com COMMIT, ROLLBACK e SAVEPOINT (TCL)

> 🧾 *“Em bancos de dados, nem todo erro é imperdoável — se você souber quando usar ROLLBACK.”*
>  — **IAra, a guardiã do SGSA**

------

## 🧭 Introdução Didática

Imagine o seguinte cenário real da escola: o coordenador vai registrar várias ocorrências disciplinares no sistema, mas no meio do processo percebe que digitou a data errada ou associou a ocorrência ao aluno errado. **Como desfazer isso com segurança?**

É aqui que entra o **TCL – Transaction Control Language**, o conjunto de comandos SQL que permite:

- Agrupar diversas instruções como uma **única transação**;
- **Confirmar** (COMMIT) ou **cancelar** (ROLLBACK) essas alterações;
- Criar **pontos de recuperação** com SAVEPOINT durante operações críticas.

Neste capítulo, vamos entender como garantir a **consistência**, **integridade** e **segurança lógica** dos dados do SGSA em situações reais e críticas.

------

## 📂 Missão do Capítulo

🎯 **"Você agora é o responsável pelo controle das transações no banco do SGSA. Sua missão é garantir que qualquer operação importante seja segura, reversível e confiável."**

------

## 📌 O que é uma Transação em Banco de Dados?

🔍 Uma transação é um **conjunto de comandos SQL** que são executados como **uma única unidade lógica de trabalho**. A transação só é concluída quando o sistema confirma que **todos os passos foram bem-sucedidos**.

### ⚖️ Princípios das Transações (ACID):

| Princípio        | Significado                                                  |
| ---------------- | ------------------------------------------------------------ |
| A – Atomicidade  | Tudo ou nada: a transação é totalmente realizada ou desfeita |
| C – Consistência | Os dados seguem as regras de integridade                     |
| I – Isolamento   | Cada transação ocorre sem interferência externa              |
| D – Durabilidade | Uma vez confirmada, a transação não será desfeita            |

------

## 🧠 Comandos da TCL (Transaction Control Language)

| Comando             | Função                                                       |
| ------------------- | ------------------------------------------------------------ |
| `START TRANSACTION` | Inicia uma nova transação                                    |
| `COMMIT`            | Salva permanentemente todas as alterações feitas na transação |
| `ROLLBACK`          | Desfaz todas as alterações realizadas desde o `START TRANSACTION` |
| `SAVEPOINT`         | Marca um ponto dentro da transação que pode ser revertido parcialmente |
| `ROLLBACK TO`       | Desfaz as ações até um `SAVEPOINT`                           |
| `RELEASE SAVEPOINT` | Remove um savepoint previamente definido                     |

------

## 🧪 Exemplo 1 – Transação Simples com COMMIT

```sql
START TRANSACTION;

INSERT INTO ocorrencias (id_aluno, data, descricao)
VALUES (12, '2025-06-01', 'Aluno usou celular em aula');

COMMIT;
```

> 🧠 Explicação:
>
> - A transação começa com `START TRANSACTION`;
> - A ocorrência é inserida;
> - O comando `COMMIT` salva a operação **de forma permanente**.

📌 Sem o `COMMIT`, o MySQL reverterá automaticamente a transação ao final da sessão ou em erro.

------

## 🧨 Exemplo 2 – Cancelando com ROLLBACK

```sql
START TRANSACTION;

DELETE FROM alunos WHERE id_aluno = 20;

ROLLBACK;
```

> 🧠 Explicação:
>
> - O aluno foi **removido**, mas antes de confirmar, o comando `ROLLBACK` foi executado;
> - Resultado: o aluno **não foi apagado**, a operação foi desfeita.

⚠️ Use ROLLBACK quando perceber que algo deu errado **antes de confirmar com COMMIT**.

------

## 🧷 Exemplo 3 – Uso de SAVEPOINT e ROLLBACK TO

```sql
START TRANSACTION;

INSERT INTO turmas (nome_turma) VALUES ('9A');
SAVEPOINT depois_da_turma;

INSERT INTO alunos (nome, id_turma) VALUES ('Carlos Silva', 99); -- erro: id_turma não existe

ROLLBACK TO depois_da_turma;

COMMIT;
```

> 🧠 Aqui:
>
> - Criamos uma turma;
> - Definimos um ponto de salvamento (SAVEPOINT);
> - Tentamos inserir um aluno com `id_turma = 99` (inexistente);
> - Recuamos até o SAVEPOINT com `ROLLBACK TO`;
> - E finalizamos com `COMMIT` (a turma foi mantida, o aluno não foi adicionado).

------

## 📝 Exemplo com múltiplas operações

```sql
START TRANSACTION;

-- 1. Inserindo aula
INSERT INTO aulas (data, conteudo, id_professor, id_turma)
VALUES ('2025-06-01', 'Revisão de SQL', 3, 2);

-- 2. Inserindo chamada
INSERT INTO chamadas (id_aula, id_aluno, status)
VALUES (LAST_INSERT_ID(), 12, 'presente');

COMMIT;
```

> 💡 Transações garantem que os dois comandos ocorram juntos. Se um falhar, **nenhum é salvo**.

------

## 🧪 Boas Práticas com Transações

✅ **Boas práticas:**

- Use transações para qualquer sequência de comandos críticos;
- Sempre **teste a lógica com SELECTs** antes de confirmar com COMMIT;
- Nomeie SAVEPOINTs com nomes claros;
- Trabalhe com `START TRANSACTION` mesmo em scripts pequenos, quando for importante preservar integridade.

⚠️ **Erros comuns:**

- Usar COMMIT sem revisar os dados inseridos;
- Esquecer de usar ROLLBACK em casos de erro;
- Confundir transação com backup (não são a mesma coisa).

------

## 💬 Analogia com o mundo real

🖱️ Imagine que você está escrevendo um e-mail e só envia quando clica em “Enviar” — isso é o `COMMIT`.

Agora, imagine que você digitou algo errado e clicou em “Desfazer” — isso é o `ROLLBACK`.

E se você salva um rascunho no meio do texto? Isso é o `SAVEPOINT`.

------

## 🎓 Conclusão Reflexiva

Sistemas reais como o SGSA não podem correr riscos: um erro de digitação, uma exclusão em massa, ou uma falha durante múltiplas inserções pode prejudicar toda uma base de dados. O uso de transações traz **segurança, controle e confiança** para os dados escolares.

*“Saber desfazer é tão importante quanto saber fazer.”*

------

## 🧠 Seção de Fixação de Conteúdo

### ✅ 1. Questão Dissertativa

**O que é uma transação no banco de dados? Por que usamos comandos como COMMIT e ROLLBACK em sistemas como o SGSA? Dê exemplos.**

------

### 🔘 2. Múltipla Escolha

**Qual comando é usado para cancelar as ações feitas desde o início de uma transação?**

-  COMMIT
-  SAVEPOINT
-  ROLLBACK
-  RELEASE SAVEPOINT

------

### ☑️ 3. Caixa de Seleção

**O que os comandos TCL controlam?**

-  Execução de múltiplos comandos como uma única operação
-  Possibilidade de desfazer alterações com ROLLBACK
-  Criação de tabelas temporárias
-  Criação de pontos intermediários com SAVEPOINT
-  Criação de índices automaticamente

------

### 🔗 4. Associação de Colunas

| Comando TCL         | Função                                                       |
| ------------------- | ------------------------------------------------------------ |
| `START TRANSACTION` | (   ) Inicia uma nova transação                              |
| `COMMIT`            | (   ) Salva todas as alterações realizadas                   |
| `ROLLBACK`          | (   ) Desfaz todas as alterações desde o início da transação |
| `SAVEPOINT`         | (   ) Marca um ponto parcial de reversão                     |
| `ROLLBACK TO`       | (   ) Desfaz até um ponto marcado anteriormente              |

------

### ✔️ 5. Verdadeiro ou Falso

1. `COMMIT` confirma definitivamente as mudanças no banco. ( )
2. `ROLLBACK` apaga todas as tabelas do banco. ( )
3. Podemos usar `SAVEPOINT` dentro de uma transação. ( )
4. Ao usar `ROLLBACK TO`, tudo após o SAVEPOINT é desfeito. ( )

-  V V F V
-  V F F F
-  V F V V
-  V V V F

------

## 📚 Referências Complementares

- 📘 [Documentação MySQL – Transaction Statements](https://dev.mysql.com/doc/refman/8.0/en/commit.html)
- 🎥 [Curso em Vídeo – Transações SQL](https://www.youtube.com/watch?v=sypsmKLVS4I)
- 💬 [Stack Overflow PT – Uso de COMMIT e ROLLBACK](https://pt.stackoverflow.com/questions/tagged/transaction)

------

```markdown
#### ⏪ [Capítulo Anterior](<Capítulo 8 – Otimização de Consultas e Índices.md>)
#### 🏠 [Início](../README.md)
#### ⏩ [Próximo Capítulo](<Capítulo 10 – Segurança e Controle de Acesso no MySQL.md>)
```
# 📘 Capítulo 12 – Ferramentas e Boas Práticas

> 🛠️ *“Um bom desenvolvedor não apenas escreve código: ele documenta, organiza, versiona e compartilha o conhecimento.”*
>  — **IAra, a guardiã do SGSA**

------

## 🧭 Introdução Didática

Neste capítulo, vamos consolidar as práticas profissionais que complementam o uso da linguagem SQL. Ferramentas como **MySQL Workbench**, scripts bem documentados, uso de **controle de versão com Git** e estratégias de **padronização de nomenclatura** são tão importantes quanto saber escrever um `SELECT`.

Você aprenderá como estruturar, documentar e versionar seus projetos com clareza, seguindo boas práticas de mercado.

------

## 🧰 Ferramentas Utilizadas

| Ferramenta        | Finalidade Principal                            |
| ----------------- | ----------------------------------------------- |
| MySQL Workbench   | Modelagem visual, execução de scripts, ERD      |
| Terminal MySQL    | Execução rápida de comandos SQL via shell       |
| Git + GitHub      | Versionamento, backup e colaboração de projetos |
| Markdown (.md)    | Documentação clara, leve e multiplataforma      |
| Diagrama ER (ERD) | Representação visual do banco de dados          |

------

## 📐 Padronização de Nomes

### 🟩 Convenções recomendadas:

- Nomes de tabelas em **minúsculas** e **plural**: `alunos`, `turmas`, `ocorrencias`;
- Nomes de colunas em **snake_case**: `id_turma`, `data_entrega`;
- Tipos de dados bem definidos: `VARCHAR`, `DATE`, `ENUM`, `INT`;
- Não usar espaços, acentos ou caracteres especiais em nomes.

------

## 💻 Boas Práticas com MySQL Workbench

- Crie e salve modelos visuais (.mwb);
- Utilize o menu “Forward Engineer” para gerar scripts automaticamente;
- Teste comandos SQL individualmente em abas separadas;
- Utilize comentários (`--`) para organizar blocos de código.

------

## 🧪 Uso de Git para Projetos de Banco de Dados

### Etapas básicas:

```bash
# 1. Inicialize o repositório
$ git init

# 2. Adicione seus arquivos SQL e documentação
$ git add scripts/*.sql docs/*.md

# 3. Faça um commit com descrição clara
$ git commit -m "Criação da estrutura inicial do banco SGSA"

# 4. Publique no GitHub
$ git remote add origin https://github.com/usuario/repositorio.git
$ git push -u origin main
```

✅ **Dica:** use `.gitignore` para ignorar arquivos temporários, backups, logs e senhas.

------

## 📦 Estrutura recomendada para repositórios

```bash
uc16-sgsa/
├── docs/                 # Documentação Markdown
│   ├── Capítulo 1 – ....md
│   ├── 00-sumario-completo.md
│   └── ...
├── scripts/              # Scripts SQL organizados por tema
│   ├── schema.sql
│   ├── insert.sql
│   ├── consultas.sql
│   └── tcl_dcl.sql
└── README.md             # Arquivo principal de documentação
```

------

## 📄 Backup e Restore com mysqldump

### 🧾 Criando um backup:

```bash
mysqldump -u root -p sgsa > backup_sgsa.sql
```

### 🔄 Restaurando o backup:

```bash
mysql -u root -p sgsa < backup_sgsa.sql
```

✅ Sempre documente os comandos de backup usados em produção.

------

## 🔍 Checklist de Boas Práticas no SGSA

✅ Tabelas com chaves primárias e estrangeiras claras
 ✅ Scripts bem comentados e executáveis em ordem
 ✅ Repositório com README e sumário didático
 ✅ Controle de alterações com Git
 ✅ Modelagem visual salva no Workbench (arquivo `.mwb`)
 ✅ Pastas organizadas (`docs/`, `scripts/`, `relatorios/`)
 ✅ Exportação de consultas úteis em `.sql` e `.md`

------

## 🎓 Conclusão Reflexiva

Um banco de dados eficiente depende tanto da **sua estrutura técnica** quanto da **forma como ele é documentado, mantido e compartilhado**. Dominar ferramentas e aplicar boas práticas garante que seus projetos sejam compreendidos, reaproveitados e escaláveis.

*“O melhor banco de dados é aquele que pode ser entendido, mantido e evoluído por qualquer pessoa da equipe.”*

------

## 📚 Referências

- [Documentação Oficial MySQL](https://dev.mysql.com/doc/)
- [MySQL Workbench Manual](https://dev.mysql.com/doc/workbench/en/)
- [Git Handbook – GitHub](https://guides.github.com/introduction/git-handbook/)
- [Markdown Guide](https://www.markdownguide.org/)
- [Boas práticas em bancos de dados relacionais](https://pt.stackoverflow.com/questions/4464)

------

#### ⏪ [Capítulo Anterior](<Capítulo 11 – Funções SQL e Subconsultas.md>)
#### 🏠 [Início](../README.md)
#### ⏩ [Próximo Capítulo](<Capítulo 13 – Projeto Final: Implementação Completa do SGSA.md>)

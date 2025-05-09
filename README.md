# 🎓 SGSA – Sistema de Gerenciamento de Sala de Aula

![GitHub repo size](https://img.shields.io/github/repo-size/prof-andrericardo/uc16-sgsa)
![GitHub last commit](https://img.shields.io/github/last-commit/prof-andrericardo/uc16-sgsa)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Status do Projeto](https://img.shields.io/badge/status-completo-brightgreen)

> 📚 Projeto educacional completo desenvolvido na disciplina **UC16 – Armazenamento e Visualização de Dados**, voltado para alunos do **3º ano do Ensino Médio Técnico em Informática**.

---

## 📖 Sumário

- [📑 Sumário Completo da UC16]()
- [📚 Sobre o Repositório]()
- [🧠 Objetivo Geral]()
- [📁 Hierarquia]()
- [📘 Conteúdo Programático por Capítulo]()
- [📦 Scripts Disponíveis]()
- [▶️ Como Executar os Scripts]()
- [📊 Relatórios Temáticos]()
- [🧩 Projeto Final]()
- [📚 Créditos e Referências]()

---

## 📚 Sobre o Repositório

Repositório da disciplina UC16 – Armazenamento e Visualização de Dados, com foco no desenvolvimento do **SGSA (Sistema de Gerenciamento de Sala de Aula)** utilizando MySQL, aplicando conceitos de DDL, DML, DQL, JOINs, funções, transações e segurança.

---

## 🧠 Objetivo Geral

Desenvolver um banco de dados completo utilizando **MySQL**, aplicando todos os conceitos fundamentais da linguagem SQL: DDL, DML, DQL, JOINs, Funções, Subconsultas, Transações (TCL) e Segurança (DCL), com foco na implementação de um sistema real de uso escolar: **SGSA – Sistema de Gerenciamento de Sala de Aula**.

---

## 📁 Hierarquia do Repositório `uc16-sgsa/`

```bash
uc16-sgsa/
├── README.md                         # Documentação principal do projeto
├── LICENSE                           # Licença MIT
│
├── docs/                             # Capítulos e materiais didáticos em Markdown
│   ├── 00-sumario-completo.md
│   ├── Capítulo 1 – Fundamentos de Banco de Dados.md
│   ├── Capítulo 2 – Modelagem Conceitual e Normalização até a 3ª Forma Normal (3FN).md
│   ├── Capítulo 3 – Tipos de Dados no SQL.md
│   ├── Capítulo 4 – Linguagem DDL: Criando Tabelas e Definindo Estruturas.md
│   ├── Capítulo 5 – Manipulando Dados.md
│   ├── Capítulo 6 – SELECT e filtros (DQL).md
│   ├── Capítulo 7 – JOINs e Relacionamentos entre Tabelas.md
│   ├── Capítulo 8 – Otimização de Consultas e Índices.md
│   ├── Capítulo 9 – Transações e Controle de Alterações (TCL).md
│   ├── Capítulo 10 – Segurança e Controle de Acesso no MySQL (DCL).md
│   ├── Capítulo 11 – Funções SQL e Subconsultas.md
│   ├── Capítulo 12 – Ferramentas e Boas Práticas.md
│   └── Capítulo 13 – Projeto Final: Implementação Completa do SGSA.md
│
├── scripts/                          # Scripts SQL organizados por função
│   ├── schema.sql                    # Criação de todas as tabelas (DDL)
│   ├── insert.sql                    # População inicial do banco (DML)
│   ├── consultas.sql                 # Consultas JOIN, filtros, funções (DQL)
│   ├── tcl_dcl.sql                   # Transações e segurança (TCL e DCL)
│
├── relatorios/                       # Relatórios temáticos prontos para uso
│   ├── faltas_por_aluno.sql
│   ├── faltas_por_aluno.md
│   ├── ocorrencias_por_turma.sql
│   ├── ocorrencias_por_turma.md
│   ├── media_presenca_por_aluno.sql
│   ├── media_presenca_por_aluno.md
│
└── modelo-logico/
    └── sgsa_modelo.mwb              # (opcional) Modelagem visual do banco no Workbench
```

---

## 📘 Conteúdo Programático por Capítulo

| Capítulo | Título                                                                                                                                  | Conteúdo Central                       | Trimestre |
| -------- | --------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------- | --------- |
| 1        | [Fundamentos de Banco de Dados](<./docs/Capítulo 01 – Fundamentos de Banco de Dados.md>)                                                 | Conceitos, SGBD, tabelas               | 1º        |
| 2        | [Modelagem Conceitual e Normalização até 3FN](<./docs/Capítulo 02 – Modelagem Conceitual e Normalização até a 3ª Forma Normal (3FN).md>) | Entidade-relacionamento, 3FN           | 1º        |
| 3        | [Tipos de Dados no MySQL](<./docs/Capítulo 03 – Tipos de Dados no SQL.md>)                                                               | INT, VARCHAR, ENUM, DATE               | 1º        |
| 4        | [Linguagem DDL: Criando Tabelas e Definindo Estruturas](<./docs/Capítulo 04 – Linguagem DDL: Criando Tabelas e Definindo Estruturas.md>) | CREATE, ALTER, DROP                    | 2º        |
| 5        | [Manipulando Dados](<./docs/Capítulo 5 – Manipulando Dados.md>)                                                                         | DML                                    | 2º        |
| 6        | [SELECT e Filtros (DQL)](<./docs/Capítulo 06 – SELECT e filtros (DQL).md>)                                                               | DQL                                    | 2º        |
| 7        | [JOINs e Relacionamentos entre Tabelas](<./docs/Capítulo 07 – JOINs e Relacionamentos entre Tabelas.md>)                                 | INNER, LEFT, multi-JOINs               | 2º        |
| 8        | [Otimização de Consultas e Índices](<./docs/Capítulo 08 – Otimização de Consultas e Índices.md>)                                         | EXPLAIN, CREATE INDEX                  | 2º        |
| 9        | [Transações e Controle de Alterações (TCL)](<./docs/Capítulo 09 – Transações e Controle de Alterações (TCL).md>)                         | TCL                                    | 3º        |
| 10       | [Segurança e Controle de Acesso no MySQL (DCL)](<./docs/Capítulo 10 – Segurança e Controle de Acesso no MySQL (DCL).md>)                | DCL: GRANT, REVOKE, USERS              | 3º        |
| 11       | [Funções SQL e Subconsultas](<./docs/Capítulo 11 – Funções SQL e Subconsultas.md>)                                                      | COUNT, AVG, SUBQUERY, HAVING           | 3º        |
| 12       | [Ferramentas e Boas Práticas](<./docs/Capítulo 12 – Ferramentas e Boas Práticas.md>)                                                    | Workbench, versionamento, padronização | 3º        |
| 13       | [Projeto Final: Implementação Completa do SGSA](<./docs/Capítulo 13 – Projeto Final: Implementação Completa do SGSA.md>)                | Aplicação de todos os conceitos        | 3º        |

---

## 📦 Scripts Disponíveis

- `scripts/schema.sql` → Criação das tabelas do SGSA
- `scripts/insert.sql` → Dados simulados (alunos, professores, aulas, etc.)
- `scripts/consultas.sql` → Exemplos de SELECTs, JOINs, GROUP BY
- `scripts/tcl_dcl.sql` → Transações e segurança

---

## ▶️ Como Executar os Scripts

1. Abra o MySQL Workbench ou o terminal MySQL.
2. Execute o script de criação do banco:

```sql
source scripts/schema.sql;
```

1. Insira os dados simulados:

```sql
source scripts/insert.sql;
```

1. Execute as consultas de exemplo:

```sql
source scripts/consultas.sql;
```

1. Para testar transações e segurança:

```sql
source scripts/tcl_dcl.sql;
```

---

## 📊 Relatórios Temáticos

Este repositório contém relatórios SQL úteis e suas versões documentadas em Markdown:

- [📄 faltas_por_aluno.sql](./relatorios/faltas_por_aluno.sql) – total de faltas por aluno
- [📝 faltas_por_aluno.md](./relatorios/faltas_por_aluno.md)
- [📄 ocorrencias_por_turma.sql](./relatorios/ocorrencias_por_turma.sql) – ocorrências disciplinares por turma
- [📝 ocorrencias_por_turma.md](./relatorios/ocorrencias_por_turma.md)
- [📄 media_presenca_por_aluno.sql](./relatorios/ocorrencias_por_turma.sql) – taxa de presença em % por aluno
- [📝 media_presenca_por_aluno.md](./relatorios/ocorrencias_por_turma.md)

---

## 🧩 Projeto Final

O Capítulo 12 apresenta a **implementação completa do SGSA**, simulando um cenário real com:

- Estrutura relacional completa;
- Inserções com DML;
- Consultas com funções, subconsultas e filtros;
- Transações protegidas por `ROLLBACK` e `SAVEPOINT`;
- Criação de usuários com permissões específicas (DCL);
- Relatórios como: “Faltas por aluno”, “Ocorrências por turma”, “Lições por período”.

🎯 O desafio final consiste em criar uma subconsulta que retorna, para cada turma, o professor com mais aulas.

---

## 📚 Créditos e Referências

- [Documentação Oficial MySQL](https://dev.mysql.com/doc/refman/8.0/en/)
- [Curso em Vídeo – SQL Completo](https://www.youtube.com/playlist?list=PLHz_AreHm4dmGuLII3tsvryMMD7VgcT7x)
- [Bóson Treinamentos](https://www.youtube.com/c/BosonTreinamentos)
- [Stack Overflow em Português](https://pt.stackoverflow.com/questions/tagged/sql)

---

## 📜 Licença

Distribuído sob a licença [MIT](./LICENSE).

---

> 📌 Desenvolvido por [Professor André Ricardo](https://github.com/prof-andrericardo) – UC16 – Colégio Victorino

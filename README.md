# 📊 Dashboard Executivo: Inteligência de E-commerce (Olist Dataset)

![Power BI](https://img.shields.io/badge/Power_BI-F2C94C?style=for-the-badge&logo=powerbi&logoColor=black)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-Advanced-blue?style=for-the-badge)
![LGPD](https://img.shields.io/badge/Governance-LGPD_Compliant-green?style=for-the-badge)

## 📌 Visão Geral do Projeto
Este projeto consiste em uma solução end-to-end de Business Intelligence desenvolvida para analisar a jornada de e-commerce da Olist. O objetivo principal foi transformar dados brutos em um relatório executivo estruturado em 4 páginas, cobrindo faturamento, eficiência logística, concentração de vendedores e inteligência financeira de custos de frete.

---

## 🛠️ Tech Stack & Arquitetura de Dados
* **Python (Scripts & CLI):** Utilizado via linha de comando para automação da ingestão, validação preliminar e tratamento de dados brutos.
* **PostgreSQL:** Armazenamento relacional e estruturação de views otimizadas para modelagem.
* **Power BI & DAX:** Modelagem Star Schema, inteligência temporal com calendário contínuo e medidas avançadas.
* **Governança (LGPD):** Implementação de mascaramento dinâmico de IDs de parceiros comerciais utilizando funções de ranking (`RANKX`).
* **UX/UI Design:** Padronização visual com foco executivo (C-Level), paleta corporativa e visuais orientados a proporção de margem.

---

## 📂 Estrutura do Relatório (PDF Carrossel)
O projeto conta com uma apresentação executiva consolidada (disponível na pasta `/docs`):
1. **Visão Geral de Vendas:** Faturamento, volume de pedidos, ticket médio e distribuição por categorias.
2. **Desempenho Logístico & Entregas:** Monitoramento de SLA de entrega, cancelamentos e valor médio de frete.
3. **Desempenho & Concentração de Vendedores:** Mapeamento de parceiros líderes com anonimização de dados.
4. **Inteligência Financeira & Custos:** Composição proporcional do ticket (Produto vs. Frete) e representatividade de custos.

---

## 📁 Estrutura do Repositório
```text
├── sql/                  -> Scripts SQL e views consolidadas no PostgreSQL
├── python/               -> Scripts em Python para automação e ETL via CLI
├── docs/                 -> Apresentação em PDF do projeto e documentação DAX
└── README.md             -> Documentação principal do repositório

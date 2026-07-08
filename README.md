# 🛡️ Lab: Engenharia de Prompts & Analise Forense no SOC Bancário

Este repositório foi desenvolvido como entrega para o **Desafio Criativo da DIO**. O projeto une a engenharia de prompts com a simulação de um pipeline de dados ponta a ponta (SQL, Python e Power BI) voltado para Segurança da Informação.

> 💡 **Nota de Isenção:** Todo o material, dados de clientes, logs e valores contidos neste laboratório são **estritamente fictícios**. Eles foram gerados e manipulados com o único propósito de aplicar os conhecimentos práticos desenvolvidos durante as aulas e servir como material de apoio didático para quem busca uma base de estudos na área.

---

## 🎯 O Desafio de Prompt (Engenharia de IA)
Em conformidade com as diretrizes da atividade, o objetivo principal foi estruturar um comando mestre (prompt) capaz de orientar uma Inteligência Artificial a atuar como especialista de segurança, analisando cenários sem expor dados sensíveis (LGPD).

*   O arquivo completo com a construção passo a passo e o comando final está disponível em: `DESAFIO_CRIATIVO_PROMPT.md`.

---

## 🛠️ Arquitetura e Processo de Desenvolvimento

O projeto foi lapidado em 3 camadas técnicas complementares, utilizando ferramentas modernas de mercado e conceitos de nuvem:

1. **Modelagem e Infraestrutura de Dados (SQL & Supabase):** 
   * Criação e hospedagem do banco de dados relacional (PostgreSQL) na nuvem utilizando a plataforma **Supabase**.
   * Estruturação de tabelas e inserção de logs de transações financeiras simuladas.
   * Validação e auditoria direta dos dados brutos através do comando:
     ```sql
     SELECT * FROM log_transacoes;
     ```

2. **Pipeline de Engenharia e Execução Moderna (Python - ETL & UV):** 
   * Desenvolvimento de um script focado em extração, limpeza de dados nulos e aplicação de máscaras de privacidade (LGPD).
   * Utilização do gerenciador de pacotes de alta performance **`uv`** para rodar o pipeline de forma isolada, injetando dinamicamente as bibliotecas necessárias para a engenharia de dados através do comando:
     ```bash
     uv run --with pandas --with psycopg2-binary --with sqlalchemy --with python-dotenv 08_etl_python.py
     ```

3. **Dashboard Forense (Power BI):** 
   * Criação de uma central de monitoramento visual (SOC/Threat Hunting) interativa para rastrear volumetria de incidentes, canais visados (como o Pix) e bloqueios preventivos.
---

## 📸 Prova Visual do Painel (SOC)

Aqui está o resultado final da lapidação visual dos dados higienizados:

![Dashboard do SOC](dashboard/dashboard_soc1.png)
![Dashboard do SOC](dashboard/dashboard_soc2.PNG)
![Dashboard do SOC](dashboard/dashboard_soc3.PNG)
![Dashboard do SOC](dashboard/dashboard_soc4.PNG)

---

## ⚖️ Licença e Direitos Autorais (Dual-Licensing)

Este projeto adota um modelo de **Dupla Licença** para garantir a proteção e a máxima liberdade de estudo da comunidade:

* **Códigos e Scripts (`.py`, `.sql`):** Distribuídos sob a **Licença MIT** (Livre para uso e modificação comercial ou privada).
* **Documentação, Prompts e Dashboards (`.md`, `.pbix`, imagens):** Distribuídos sob a Licença **Creative Commons Atribuição-CompartilhaIgual 4.0 Internacional (CC BY-SA 4.0)**, exigindo menção dos créditos ao autor original e redistribuição aberta.

O autor não oferece garantias de nenhuma natureza e fica totalmente isento de responsabilidades pelo uso das ferramentas e dados fictícios aqui disponibilizados. Veja o arquivo [LICENSE](LICENSE) para ler o termo jurídico completo.

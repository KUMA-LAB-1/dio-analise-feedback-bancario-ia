# 🛡️ Lab: Engenharia de Prompts & Analise Forense no SOC Bancário

Este repositório foi desenvolvido como entrega para o **Desafio Criativo da DIO**. O projeto une a engenharia de prompts com a simulação de um pipeline de dados ponta a ponta (SQL, Python e Power BI) voltado para Segurança da Informação.

> 💡 **Nota de Isenção:** Todo o material, dados de clientes, logs e valores contidos neste laboratório são **estritamente fictícios**. Eles foram gerados e manipulados com o único propósito de aplicar os conhecimentos práticos desenvolvidos durante as aulas e servir como material de apoio didático para quem busca uma base de estudos na área.

---

## 🎯 O Desafio de Prompt (Engenharia de IA)
Em conformidade com as diretrizes da atividade, o objetivo principal foi estruturar um comando mestre (prompt) capaz de orientar uma Inteligência Artificial a atuar como especialista de segurança, analisando cenários sem expor dados sensíveis (LGPD).

*   O arquivo completo com a construção passo a passo e o comando final está disponível em: `DESAFIO_CRIATIVO_PROMPT.md`.

---

## 🛠️ Arquitetura e Processo de Desenvolvimento

O projeto foi lapidado em 3 camadas técnicas complementares, baseadas em pesquisas de mercado e melhores práticas de DevSecOps:

1. **Modelagem de Dados (SQL):** Estruturação de tabelas e inserção de logs de transações financeiras simuladas.
2. **Pipeline de Engenharia (Python - ETL):** Desenvolvimento de um script automatizado (`etl_process.py`) focado em extração, limpeza de dados nulos e aplicação de máscaras de privacidade (Anonimização de nomes e CPFs em conformidade estrita com a LGPD).
3. **Dashboard Forense (Power BI):** Criação de uma central de monitoramento visual (SOC/Threat Hunting) interativa para rastrear volumetria de incidentes, canais visados (como o Pix) e bloqueios preventivos.

---

## 📸 Prova Visual do Painel (SOC)

Aqui está o resultado final da lapidação visual dos dados higienizados:

![Dashboard do SOC](dashboard/dashboard_soc.png)

---

## ⚖️ Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

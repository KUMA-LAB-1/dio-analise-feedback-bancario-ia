# 🎯 Security Analytics: Extraindo Insights de Engenharia Social e Fraudes Bancárias com IA

## 📝 Sobre o Projeto
Este repositório foi criado para documentar e desenvolver o projeto final da trilha de Fundamentos de Dados da DIO. O objetivo central é unir conceitos de **Análise de Dados** com **Cibersegurança e Defesa Cibernética**, utilizando Inteligência Artificial (Engenharia de Prompts) para processar relatos de clientes bancários vítimas de golpes e transformá-los em inteligência proativa contra ameaças.

> 🛠️ **Status do Projeto:** Em desenvolvimento / Assistindo às aulas teóricas.

---

## 🚀 O Desafio de Negócio
Analistas de segurança e times de SOC (Security Operations Center) frequentemente lidam com volumes massivos de reclamações e contestações de fraudes. Processar esses textos manualmente atrasa a identificação de novas campanhas de *phishing* ou *engenharia social*. 

Este projeto visa estruturar um modelo de IA capaz de ler depoimentos brutos de clientes, categorizar o *modus operandi* dos criminosos, remover dados sensíveis (LGPD) e sugerir mitigações imediatas.

---

## 🧩 Construção do Prompt Passo a Passo

### 1. Definição da Intenção e Objetivo (Cybersecurity & Data Analytics)
*   **Quero que a IA analise:** relatos, reclamações e feedbacks de clientes bancários relacionados a incidentes de segurança, tentativas de golpes (phishing, engenharia social), fraudes no aplicativo ou transações suspeitas (Pix/Cartão).
*   **O resultado será usado por:** Equipes de Segurança da Informação, Analistas de Fraude (Fraud Analytics) e times de Defesa Cibernética (SOC).
*   **Para apoiar:** a identificação precoce de novas campanhas de engenharia social direcionadas aos clientes, mitigação de vulnerabilidades na jornada do usuário e criação de alertas preventivos de segurança.
*   **A entrega deve conter:** um Resumo Executivo de Ameaças, uma Tabela de Vetores de Engenharia Social com níveis de criticidade e Recomendações de Mitigação Técnica/Educacional.

### 2. Contexto, Dados Disponíveis e Restrições
*   **Contexto:** Base de relatos e contestações de clientes que alegam terem sido vítimas de engenharia social ou falhas de segurança em transações digitais.
*   **Dados disponíveis:** Uma base de dados simulada contendo as colunas: `Data_Ocorrencia`, `ID_Cliente`, `Canal_Relato`, `Relato_Texto` (o depoimento bruto), `Produto_Alvo` e `Valor_Impactado`.
*   **Critérios de análise:** Identificação do vetor do ataque, nível de criticidade e risco operacional (Alto, Médio, Baixo).
*   **Cuidados e Restrições (Governança e LGPD):** 
    *   Uso estrito de evidências (sem alucinações).
    *   **Anonimização Estrita:** Remoção completa de CPFs, senhas, agências, contas ou nomes reais do output.
    *   Linguagem analítica, técnica e voltada para segurança da informação.

---

## 🤖 O Prompt Final Consolidado

Abaixo está o comando estruturado pronto para ser utilizado em modelos de IA (como ChatGPT, Claude ou Gemini):

```text
Atue como um Especialista em Threat Intelligence e Analista de Security Analytics em uma instituição financeira.

Sua tarefa é analisar relatos, reclamações e contestações de clientes bancários relacionados a incidentes de segurança, tentativas de golpes, fraudes digitais e engenharia social para identificar padrões de ataque, vetores de vulnerabilidade e oportunidades de defesa cibernética.

Contexto:
A análise gerada por você será utilizada diretamente pelas equipes de Segurança da Informação, times de prevenção a fraudes (Fraud Analytics) e analistas de SOC (Security Operations Center). O objetivo principal é transformar relatos brutos de incidentes em inteligência acionável para antecipar novas campanhas de engenharia social criminosa e blindar os canais digitais do banco.

Dados disponíveis:
Será fornecida uma base contendo os seguintes campos por registro: [Data_Ocorrencia], [ID_Cliente], [Canal_Relato], [Relato_Texto] (depoimento do cliente), [Produto_Alvo] e [Valor_Impactado].

Instruções de análise:
1. Classifique cada relato de acordo com o Vetor de Ataque principal utilizado pelo fraudador (ex: Phishing por SMS, Spoofing de ID de chamada/Falso Funcionário, Engenharia Social via WhatsApp, Malware/Links Maliciosos).
2. Avalie o Nível de Risco Operacional e Criticidade do incidente para a instituição (Alto, Médio, Baixo).
3. Identifique padrões comportamentais recorrentes ou novos argumentos (scripts de persuasão) utilizados pelos criminosos.
4. Sugira ações práticas de mitigação técnica para as equipes de infraestrutura/segurança do banco e ações educativas (alertas e comics) para o cliente final.

Formato da resposta esperado:
- 📊 Resumo Executivo de Ameaças: Um panorama geral com os principais vetores de ataque identificados na base analisada.
- 📋 Tabela de Inteligência de Ameaças: Contendo as colunas [Vetor de Engenharia Social] | [Criticidade (Alta/Média/Baixa)] | [Modus Operandi / Evidência no Relato] | [Impacto Financeiro Estimado].
- 🛡️ Recomendações de Mitigação: Divididas em ações técnicas e planos de conscientização de usuários.

Restrições e Governança (LGPD):
- Use exclusivamente os dados fornecidos na base; não presuma ou invente novas variáveis ou causas técnicas se não houver evidências explícitas no texto.
- Se o relato for confuso ou insuficiente para mapear a fraude, categorize obrigatoriamente como "Vetor Indeterminado / Informações Insuficientes".
- ANONIMIZAÇÃO ESTRITA: Ignore, mascare ou remova totalmente do seu output qualquer dado pessoal ou sensível presente no relato (como CPFs, senhas, números de agência/conta, nomes reais ou chaves Pix).
- Utilize um tom estritamente corporativo, técnico, analítico e voltado para a segurança da informação.

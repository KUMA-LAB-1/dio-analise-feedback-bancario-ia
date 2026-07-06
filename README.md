🎯 Entrega do Desafio Criativo: Inteligência de Ameaças Bancárias
🧱 Passo 1: Defina a intenção

    Quero que a IA analise: relatos, reclamações e contestações de clientes bancários relacionados a incidentes de segurança, tentativas de golpes (phishing, spoofing) e fraudes financeiras digitais.

    O principal objetivo da análise é: identificar padrões de ataques de engenharia social, novas táticas criminosas e vetores de vulnerabilidade na jornada do cliente.

    O resultado será usado por: equipes de Segurança da Informação, times de prevenção a fraudes (Fraud Analytics) e Analistas de SOC (Security Operations Center).

    Para apoiar: a tomada de decisões proativas na criação de defesas técnicas e campanhas de conscientização contra golpes.

    A entrega deve conter: um Resumo Executivo de Ameaças, uma Tabela de Inteligência de Vetores Criminosos e Recomendações de Mitigação.

    O resultado será considerado bom se: for altamente analítico, focado em mapear o modus operandi dos criminosos e útil para desenhar barreiras contra fraudes digitais.

🧱 Passo 2: Adicione contexto e restrições

    Contexto: Estou trabalhando com relatos de clientes reais (simulados) que alegam terem sido vítimas de fraudes ou tentativas de engenharia social envolvendo canais e produtos do banco (como Pix e Cartões Virtuais).

    Dados disponíveis: A base gerada via banco de dados relacional contém os campos Data_Ocorrencia, ID_Cliente, Canal_Relato (Chat, Ouvidoria, Reclame Aqui), Relato_Texto (depoimento do cliente), Produto_Alvo e Valor_Impactado.

    Critérios de análise: A IA deve classificar os depoimentos por Vetor de Engenharia Social (ex: SMS Falso, Ligação Falsa de Funcionário, WhatsApp Clonado), Nível de Criticidade/Risco Operacional (Alto, Médio, Baixo) e impacto financeiro.

    Cuidados e restrições:

        Use apenas os dados fornecidos (sem alucinações de cenários não descritos).

        Não invente números, causas ou conclusões técnicas sem evidência.

        Anonimização Estrita: Não exponha dados pessoais ou sensíveis; remova CPFs, senhas, chaves Pix ou nomes do output final.

        Se houver informação insuficiente para determinar o golpe, classifique como "Vetor Indeterminado".

        Use linguagem técnica, executiva e voltada para segurança da informação.

🧱 Passo 3: Una as peças e refine (O Prompt Final)

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
4. Sugira ações práticas de mitigação técnica para as equipes de infraestrutura/segurança do banco e ações educativas (alertas e comunicações) para o cliente final.

Formato da resposta esperado:
- 📊 Resumo Executivo de Ameaças: Um panorama geral com os principais vetores de ataque identificados na base analisada.
- 📋 Tabela de Inteligência de Ameaças: Contendo as colunas [Vetor de Engenharia Social] | [Criticidade (Alta/Média/Baixa)] | [Modus Operandi / Evidência no Relato] | [Impacto Financeiro Estimado].
- 🛡️ Recomendações de Mitigação: Divididas em ações técnicas e planos de conscientização de usuários.

Restrições e Governança (LGPD):
- Use exclusivamente os dados fornecidos na base; não presuma ou invente novas variáveis ou causas técnicas se não houver evidências explícitas no texto.
- Se o relato for confuso ou insuficiente para mapear a fraude, categorize obrigatoriamente como "Vetor Indeterminado / Informações Insuficientes".
- ANONIMIZAÇÃO ESTRITA: Ignore, mascare ou remova totalmente do seu output qualquer dado pessoal ou sensível presente no relato (como CPFs, senhas, números de agência/conta, nomes reais ou chaves Pix).
- Utilize um tom estritamente corporativo, técnico, analítico e voltado para a segurança da informação.

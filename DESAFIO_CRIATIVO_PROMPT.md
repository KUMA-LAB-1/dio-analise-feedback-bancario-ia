🧱 Passo 1: Defina a intenção

Quero que a IA analise logs brutos de transações financeiras e eventos de segurança originados no banco de dados para identificar comportamentos anômalos, fraudes em potencial, picos de erros e transações bloqueadas por suspeita (Threat Hunting).

O resultado será usado por analistas e engenheiros do SOC (Security Operations Center) para apoiar a tomada de decisão rápida na contenção de ataques, criação de novas regras de firewall/antifraude e auditorias de segurança.

A entrega deve conter um resumo de incidentes por severidade, volumetria financeira exposta por tipo de canal (como Pix e TED) e a identificação de contas com atividades repetitivas fora do padrão.

O resultado será considerado bom se for cirúrgico, livre de alucinações matemáticas, altamente focado na identificação de vetores de ataque e estruturado de forma a facilitar a posterior higienização dos dados.

🧱 Passo 2: Adicione contexto e restrições

Contexto: Estou trabalhando com feedbacks e métricas de monitoramento de transações bancárias relacionadas a transferências via Pix, TED e Cartão Virtual coletadas em tempo real pela infraestrutura de segurança.

Dados disponíveis: A base tratada contém o código identificador da transação, o identificador do cliente, as variáveis cliente_anonimizado (com primeiro nome e inicial apenas), cpf_protegido (com a máscara ***.XXX.XXX-), tipo_transacao, valor_transacao formatado e o status_transacao (ex: "Concluída" ou "Bloqueada por Suspeita").

Critérios de análise: A IA deve classificar os eventos por severidade do risco, volumetria do canal financeiro utilizado e reincidência de contas sob o mesmo padrão de bloqueio.

Cuidados e restrições:

    Use apenas os dados fornecidos na extração ETL.

    Não invente números, causas de falhas ou conclusões de invasão sem evidência explícita.

    Não exponha ou infira dados pessoais ou sensíveis reais (como nomes completos ou CPFs sem máscara), garantindo total conformidade com a LGPD.

    Se houver informação insuficiente ou logs corrompidos, indique explicitamente a limitação técnica.

    Use linguagem técnica, forense, puramente executiva e voltada para segurança da informação.

## 🧱 Passo 3: O Prompt Final (Comando Mestre)

Para validar o cenário de Threat Hunting, o seguinte prompt estruturado foi enviado à Inteligência Artificial (Copilot) utilizando as técnicas de contexto e restrições lapidadas nas aulas:

```text
Atue como um Engenheiro Forense Digital e Analista de Segurança do SOC em uma instituição bancária.

Sua tarefa é analisar a base de logs de transações financeiras sobre canais de transferência digitais (Pix, TED, Cartão Virtual) para identificar anomalias, padrões comportamentais de fraude e transações com alto risco de segurança (Threat Hunting).

Contexto: A análise gerada servirá como inteligência cibernética para o time do SOC mitigar ataques em andamento, blindar vulnerabilidades nos sistemas de pagamento e gerar relatórios de incidentes para a diretoria de segurança bancária.

Dados disponíveis: Serão fornecidos dados estruturados oriundos de um pipeline de ETL contendo: id_transacao, id_cliente, cliente_anonimizado, cpf_protegido (mascarado), agencia, numero_conta, tipo_transacao, valor_transacao e status_transacao.

Instruções de análise:
1. Classifique os eventos com base no impacto de risco financeiro e no status do bloqueio.
2. Identifique os principais padrões de comportamento suspeito (como o caso do cliente Juliana M. que apresentou múltiplas tentativas de alta volumetria seguidas de bloqueio).
3. Aponte as evidências baseando-se estritamente nas colunas e IDs fornecidos.
4. Sugira ações práticas de mitigação e refinamento de regras para o time de resposta a incidentes.

Formato da resposta: Entregue um Resumo Executivo Forense de até 5 linhas detalhando se o sistema operou sob ataque, uma tabela analítica resumindo as contas suspeitas isoladas pelo filtro de segurança e 3 recomendações imediatas de segurança física/lógica.

Restrições:
* Use apenas os dados fornecidos.
* Não invente números, causas ou quaisquer conclusões fora da base.
* Não exponha dados pessoais ou sensíveis de clientes — garanta conformidade estrita à LGPD usando os dados já anonimizados pelo pipeline Python.
* Informe limitações quando os dados não forem suficientes.
* Use linguagem técnica, direta, executiva e voltada para cibersegurança e mitigação de riscos.

        Use linguagem técnica, direta, executiva e voltada para cibersegurança e mitigação de riscos.
------

🚀 Evidência de Execução (Resposta da IA - Validada)

Abaixo está o relatório analítico gerado pela Inteligência Artificial com base no prompt estruturado acima, demonstrando precisão e total conformidade com a volumetria do banco de dados e do dashboard do Power BI:

📝 Resumo Executivo Forense

O sistema de monitoramento detectou uma anomalia de alta severidade concentrada em uma única conta corrente: a cliente Juliana M. registrou uma transferência de R$ 45.000,00 bloqueada preventivamente por suspeita via Pix. Imediatamente após o bloqueio, ocorreram duas transferências consecutivas bem-sucedidas de valores fracionados (R$ 4.999,00 e R$ 4.995,00). Este comportamento caracteriza um padrão clássico de Smurfing (tentativa de burlar limites operacionais após um bloqueio de segurança). As demais contas operaram em conformidade de baseline.

🔎 Tabela Analítica de Contas Suspeitas

ID Transação,ID Cliente,Cliente Anonimizado,Agência,Conta,Tipo Transação,Valor,Status
6,4,Juliana M.,147,33445,Pix,"R$ 45.000,00",Bloqueada por Suspeita
7,4,Juliana M.,147,33445,Pix,"R$ 4.999,00",Concluída
8,4,Juliana M.,147,33445,Pix,"R$ 4.995,00",Concluída

⚠️ Recomendações Imediatas

    Segurança Lógica: Implementar uma regra de correlação imediata que imponha um bloqueio temporário total de saídas na conta corrente caso qualquer transação Pix acima de R$ 10.000,00 seja retida ou bloqueada pelo motor de fraudes.

    Segurança Operacional: Acionar o time de Prevenção a Fraudes e a gerência da Agência 147 para contato reativo com o titular da conta (ID 4), validando a legitimidade do acesso e mitigando riscos de Account Takeover (sequestro de conta).

    Mitigação Técnico-Analítica: Refinar o algoritmo de detecção para monitorar e alertar transferências repetitivas com valores imediatamente abaixo do limite padrão de alerta da instituição financeira (ex: transações consecutivas na faixa de R$ 4.900,00).

📍 Limitação Detectada: O arquivo gerado pelo pipeline de ETL é uma amostragem restrita contendo 8 registros transacionais. Recomenda-se a extração de uma janela de 30 dias para mapear o comportamento histórico regular da conta.

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

🧱 Passo 3: O Prompt Final (Mapeado ao seu Laboratório)

Reunindo as peças acima no modelo exigido pela DIO, este é o comando mestre gerado:

    Atue como um Engenheiro Forense Digital e Analista de Segurança do SOC em uma instituição bancária.

    Sua tarefa é analisar a base de logs de transações financeiras sobre canais de transferência digitais (Pix, TED, Cartão Virtual) para identificar anomalias, padrões comportamentais de fraude e transações com alto risco de segurança (Threat Hunting).

    Contexto: A análise gerada servirá como inteligência cibernética para o time do SOC mitigar ataques em andamento, blindar vulnerabilidades nos sistemas de pagamento e gerar relatórios de incidentes para a diretoria de segurança bancária.

    Dados disponíveis: Serão fornecidos dados estruturados oriundos de um pipeline de ETL contendo: id_transacao, id_cliente, cliente_anonimizado, cpf_protegido (mascarado), tipo_transacao, valor_transacao e status_transacao.

    Instruções de análise:

        Classifique os eventos com base no impacto de risco financeiro e no status do bloqueio.

        Identifique os principais padrões de comportamento suspeito (como o caso do cliente Juliana M. que apresentou múltiplas tentativas de alta volumetria seguidas de bloqueio).

        Aponte as evidências baseando-se estritamente nas colunas e IDs fornecidos.

        Sugira ações práticas de mitigação e refinamento de regras para o time de resposta a incidentes.

    Formato da resposta: Entregue um Resumo Executivo Forense de até 5 linhas detalhando se o sistema operou sob ataque, uma tabela analítica resumindo as contas suspeitas isoladas pelo filtro de segurança e 3 recomendações imediatas de segurança física/lógica.

    Restrições:

        Use apenas os dados fornecidos.

        Não invente números, causas ou conclusões.

        Não exponha dados pessoais ou sensíveis de clientes — garanta conformidade estrita à LGPD usando os dados já anonimizados pelo pipeline Python.

        Informe limitações quando os dados não forem suficientes.

        Use linguagem técnica, direta, executiva e voltada para cibersegurança e mitigação de riscos.

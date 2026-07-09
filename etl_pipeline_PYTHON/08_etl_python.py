import os
import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv

# ============================================================================
# MODELO 2: ETL COM PYTHON & PANDAS (ANONIMIZAÇÃO AUTOMATIZADA - SOC)
# PROJETO: SECURITY ANALYTICS & THREAT HUNTING BANCÁRIO
# ============================================================================

print("🔄 Iniciando o processo de ETL do SOC...")

# Ativa a leitura do arquivo .env
load_dotenv()

# 1. Puxa a string de conexão direta completa do arquivo .env
DATABASE_URL = os.getenv("DATABASE_URL")

if not DATABASE_URL:
    print("❌ Erro: A variável DATABASE_URL não foi encontrada no arquivo .env")
    exit()

# Criando o motor de conexão direto com a URL do Pooler
engine = create_engine(DATABASE_URL)

try:
    # 2. EXTRACT (Extração dos dados brutos direto das tabelas do Supabase)
    print("📥 Puxando dados brutos do Supabase...")
    df_clientes = pd.read_sql_table("tbl_clientes", engine)
    df_transacoes = pd.read_sql_table("tbl_transacoes", engine)
    df_contas = pd.read_sql_table("tbl_contas", engine)

    # 3. TRANSFORM (Tratamento e Anonimização via Pandas - Alinhado à LGPD)
    print("✂️ Aplicando regras de proteção de dados e LGPD...")

    # Remover a coluna de telefone (Dado sensível descartado)
    df_clientes = df_clientes.drop(columns=["telefone"])

    # Mascarar o Nome Completo (Manter apenas primeiro nome e inicial do sobrenome)
    # Ex: "Carlos Eduardo Silva" -> "Carlos E."
    df_clientes["nome_completo"] = df_clientes["nome_completo"].apply(
        lambda nome: nome.split()[0] + " " + nome.split()[1][0] + "." if len(nome.split()) > 1 else nome
    )

    # Mascarar o CPF (Ex: "123.456.789-00" -> "***.456.789-**")
    df_clientes["cpf"] = df_clientes["cpf"].apply(
        lambda cpf: "***." + cpf[4:11] + "-**" if len(str(cpf)) >= 14 else "***.***.***-**"
    )

    # Cruzando as tabelas (Fazendo os JOINS via Python)
    print("🔗 Consolidando tabelas de transações e logs...")
    df_consolidado = df_transacoes.merge(df_contas, left_on="id_conta_origem", right_on="id_conta")
    df_final = df_consolidado.merge(df_clientes, on="id_cliente")

    # Selecionando e organizando as colunas finais que vão para o relatório público do SOC
    colunas_relatorio = [
        "id_transacao", "id_cliente", "nome_completo", "cpf", "agencia", "numero_conta", 
        "tipo_transacao", "valor_transacao", "data_hora_transacao", "status_transacao"
    ]
    df_relatorio_final = df_final[colunas_relatorio]

    # Rename das colunas
    df_relatorio_final = df_relatorio_final.rename(columns={
        "nome_completo": "cliente_anonimizado",
        "cpf": "cpf_protegido"
    })

    # 4. LOAD (Carga dos dados em um arquivo de auditoria limpo)
    print("💾 Salvando relatório final higienizado...")
    df_relatorio_final.to_csv("extracao_para_analise_etl.csv", index=False, encoding="utf-8")
    
    print("✅ Processo concluído com sucesso! Arquivo 'relatorio_soc_higienizado.csv' gerado.")

except Exception as e:
    print(f"❌ Erro detectado no pipeline de ETL: {e}")

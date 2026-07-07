# 🔄 Processo de ETL e Governança de Dados (Power Query / Linguagem M)

Este documento descreve as etapas de Extração, Transformação e Carga (ETL) realizadas via Power Query para garantir a conformidade com a LGPD e a preparação dos dados para a análise de fraudes.

## 1. Extração (Extract)
A conexão foi estabelecida diretamente com o banco de dados PostgreSQL hospedado no Supabase utilizando a string de conexão oficial e credenciais restritas.

```powerquery
// Exemplo de conexão inicial na Linguagem M
Fonte = PostgreSQL.Database("aws-0-sa-east-1.pooler.supabase.com:5432", "postgres"),
tbl_clientes_db = Fonte{[Schema="public", Item="tbl_clientes"]}[Data]
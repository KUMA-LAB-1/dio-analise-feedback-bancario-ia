-- ============================================================================
-- SCRIPT DE POPULAÇÃO (SEEDS) - TRANSAÇÕES E LOGS LEGÍTIMOS
-- PROJETO: SECURITY ANALYTICS & THREAT HUNTING BANCÁRIO
-- ============================================================================

-- 1. Histórico de Logins Legítimos (Clientes acessando de seus locais e aparelhos comuns)
INSERT INTO tbl_logs_seguranca (id_cliente, data_hora_acesso, endereco_ip, dispositivo_modelo, localizacao_estimada, evento_tipo, status_alerta) VALUES
(1, '2026-07-05 09:15:00', '189.125.43.12', 'iPhone 14', 'São Paulo - SP', 'Login Sucesso', FALSE),
(2, '2026-07-05 10:30:22', '201.23.85.110', 'Samsung Galaxy S23', 'São Paulo - SP', 'Login Sucesso', FALSE),
(3, '2026-07-05 11:00:05', '177.42.19.88', 'Motorola Edge 40', 'Rio de Janeiro - RJ', 'Login Sucesso', FALSE),
(4, '2026-07-05 14:22:18', '186.221.5.4', 'MacBook Pro / Chrome', 'Piracicaba - SP', 'Login Sucesso', FALSE),
(5, '2026-07-05 18:45:10', '191.185.92.33', 'Xiaomi Redmi Note 12', 'Belo Horizonte - MG', 'Login Sucesso', FALSE),
-- Um cliente errando a senha uma vez, comportamento comum do dia a dia:
(2, '2026-07-05 20:10:00', '201.23.85.110', 'Samsung Galaxy S23', 'São Paulo - SP', 'Falha de Senha', FALSE),
(2, '2026-07-05 20:10:45', '201.23.85.110', 'Samsung Galaxy S23', 'São Paulo - SP', 'Login Sucesso', FALSE);

-- 2. Histórico de Transações Legítimas (Fluxo financeiro padrão)
-- id_conta_origem 1 e 2 = Carlos | 3 = Mariana | 4 = Roberto | 5 = Juliana | 6 = Fernanda
INSERT INTO tbl_transacoes (id_conta_origem, tipo_transacao, valor_transacao, data_hora_transacao, id_dispositivo_origem, status_transacao) VALUES
(1, 'Pix', 120.00, '2026-07-05 09:30:00', 'iOS-UUID-999888', 'Concluída'),
(3, 'Cartão Virtual', 45.90, '2026-07-05 11:15:00', 'AND-IMEI-112233', 'Concluída'),
(5, 'TED', 5000.00, '2026-07-05 15:00:00', 'WEB-BROWSER-CHROME', 'Concluída'),
(6, 'Pix', 35.00, '2026-07-05 19:00:00', 'AND-IMEI-445566', 'Concluída'),
(1, 'Pix', 250.00, '2026-07-05 21:30:00', 'iOS-UUID-999888', 'Concluída');

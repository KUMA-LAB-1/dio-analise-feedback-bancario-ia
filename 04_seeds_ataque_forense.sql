-- ============================================================================
-- SCRIPT DE POPULAÇÃO (SEEDS) - ANOMALIAS E ATAQUE CRICIMINOSO (FORENSE)
-- PROJETO: SECURITY ANALYTICS & THREAT HUNTING BANCÁRIO
-- ============================================================================

-- 1. Logs de Ataque e Engenharia Social (Juliana - id_cliente: 4)
-- O atacante tenta logar na madrugada, erra a senha, acerta, vincula dispositivo e altera o limite do Pix.
INSERT INTO tbl_logs_seguranca (id_cliente, data_hora_acesso, endereco_ip, dispositivo_modelo, localizacao_estimada, evento_tipo, status_alerta) VALUES
(4, '2026-07-06 02:10:00', '45.232.180.15', 'Linux / Unknown Emulator', 'Foz do Iguaçu - PR', 'Falha de Senha', FALSE),
(4, '2026-07-06 02:11:15', '45.232.180.15', 'Linux / Unknown Emulator', 'Foz do Iguaçu - PR', 'Login Sucesso', FALSE),
(4, '2026-07-06 02:12:00', '45.232.180.15', 'Linux / Unknown Emulator', 'Foz do Iguaçu - PR', 'Dispositivo Novo Vinculado', TRUE), -- Sistema dispara Alerta!
(4, '2026-07-06 02:13:45', '45.232.180.15', 'Linux / Unknown Emulator', 'Foz do Iguaçu - PR', 'Alteração de Limite Pix', TRUE); -- Outro alerta crítico

-- 2. Movimentações Financeiras Fraudulentas da Invasão
-- Atacante tenta raspar a conta da Juliana (id_conta: 5) na madrugada realizando transferências de alto valor
INSERT INTO tbl_transacoes (id_conta_origem, tipo_transacao, valor_transacao, data_hora_transacao, id_dispositivo_origem, status_transacao) VALUES
(5, 'Pix', 45000.00, '2026-07-06 02:15:00', 'EMULATOR-HACK-999', 'Bloqueada por Suspeita'), -- O motor de fraude travou o primeiro
(5, 'Pix', 4999.00, '2026-07-06 02:17:22', 'EMULATOR-HACK-999', 'Concluída'),          -- O criminoso fracionou o valor e passou
(5, 'Pix', 4995.00, '2026-07-06 02:19:10', 'EMULATOR-HACK-999', 'Concluída');          -- Passou mais uma antes do bloqueio total da conta

-- 3. Atualização do saldo da conta da vítima após o roubo bem-sucedido (R$ 9.994,00 levados)
UPDATE tbl_contas 
SET saldo_atual = saldo_atual - 9994.00 
WHERE id_conta = 5;
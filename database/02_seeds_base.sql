-- ============================================================================
-- SCRIPT DE POPULAÇÃO BASE (SEEDS) - OPERAÇÃO LEGÍTIMA
-- PROJETO: SECURITY ANALYTICS & THREAT HUNTING BANCÁRIO
-- ============================================================================

-- Inserindo Clientes Fictícios (Alvos em potencial)
INSERT INTO tbl_clientes (nome_completo, cpf, telefone) VALUES
('Carlos Eduardo Silva', '123.456.789-00', '(11) 98888-1111'),
('Mariana Costa Ribeiro', '234.567.890-11', '(11) 97777-2222'),
('Roberto Almeida Santos', '345.678.901-22', '(21) 96666-3333'),
('Juliana Mendes Vieira', '456.789.012-33', '(19) 95555-4444'),
('Fernanda Souza Lima', '567.890.123-44', '(34) 94444-5555');

-- Inserindo Contas Bancárias (Simulando o padrão de Agências Bancária)
-- Agência 0147 (Prime), Agência 3200 (Varejo)
INSERT INTO tbl_contas (id_cliente, agencia, numero_conta, digito_verificador, tipo_conta, saldo_atual) VALUES
(1, '0147', '0012345', '6', 'Corrente', '15450.00'),
(1, '0147', '0098765', '2', 'Poupança', '50000.00'),
(2, '3200', '0054321', '8', 'Corrente', '2350.10'),
(3, '3200', '0088112', '4', 'Corrente', '780.00'),
(4, '0147', '0033445', '1', 'Corrente', '120500.45'),
(5, '3200', '0077665', '9', 'Salário', '4200.00');

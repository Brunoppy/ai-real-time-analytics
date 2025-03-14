-- AI Real-Time Analytics Schema (PT-BR)
CREATE TABLE registros_eventos (
    id_evento SERIAL PRIMARY KEY,
    tipo_evento VARCHAR(50),
    data_hora_evento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    dados_evento JSONB
);

-- Índice para consultas rápidas por tempo
CREATE INDEX idx_data_hora_evento ON registros_eventos (data_hora_evento DESC);

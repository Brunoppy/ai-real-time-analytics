-- AI Real-Time Analytics Schema
CREATE TABLE event_logs (
    event_id SERIAL PRIMARY KEY,
    event_type VARCHAR(50),
    event_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    event_data JSONB
);

-- Index para consultas rápidas por tempo
CREATE INDEX idx_event_timestamp ON event_logs (event_timestamp DESC);

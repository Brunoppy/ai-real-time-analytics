-- AI Real-Time Analytics Schema
CREATE TABLE event_logs (
    event_id SERIAL PRIMARY KEY,
    event_type VARCHAR(50),
    event_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    event_data JSONB
);

-- Index for quick queries by time
CREATE INDEX idx_event_timestamp ON event_logs (event_timestamp DESC);

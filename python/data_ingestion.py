import json
import psycopg2
from datetime import datetime

# Conexão com o banco
conn = psycopg2.connect("dbname=analytics user=admin password=secret host=localhost")
cur = conn.cursor()

def insert_event(event_type, event_data):
    query = """INSERT INTO event_logs (event_type, event_data) VALUES (%s, %s)"""
    cur.execute(query, (event_type, json.dumps(event_data)))
    conn.commit()

# Exemplo de evento em tempo real
insert_event("sensor_reading", {"temperature": 22.5, "humidity": 60, "timestamp": str(datetime.now())})

cur.close()
conn.close()

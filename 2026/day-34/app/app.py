from flask import Flask
import psycopg2
import redis
import os

app = Flask(__name__)

db_host = os.environ.get("DB_HOST")
redis_host = os.environ.get("REDIS_HOST")

def check_db():
    try:
        conn = psycopg2.connect(
            host=db_host,
            database="mydb",
            user="postgres",
            password="postgres"
        )
        return "Database Connected"
    except:
        return "Database Not Ready"

def check_cache():
    try:
        r = redis.Redis(host=redis_host, port=6379)
        r.ping()
        return "Redis Connected"
    except:
        return "Redis Not Ready"


@app.route("/")
def home():
    db = check_db()
    cache = check_cache()
    return f"""
    <h1>🚀 Docker Compose Multi-Container App</h1>
    <p>{db}</p>
    <p>{cache}</p>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
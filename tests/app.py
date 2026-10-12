from fastapi import FastAPI

app = FastAPI(title="DevOps Delivery API")


@app.get("/")
def home():
    return {
        "application": "DevOps Delivery API",
        "version": "1.0.0",
        "message": "Application is running"
    }


@app.get("/health")
def health():
    return {"status": "healthy"}

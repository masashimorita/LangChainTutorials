from fastapi import FastAPI

# Define FastAPI app
app = FastAPI()

# Define root API
@app.get("/")
def read_root():
    return {"Hello": "World"}

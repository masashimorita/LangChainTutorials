from fastapi import FastAPI

from .ice_breaker import ice_break_with_linkedin

# Define FastAPI app
app = FastAPI()

# Define root API
@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/ice_breaker/linkedin")
def ice_breaker_linkedin():
    return ice_break_with_linkedin()

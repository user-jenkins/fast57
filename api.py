from fastapi import FastAPI
from pydantic import BaseModel
import uvicorn
app = FastAPI()

class State(BaseModel):
    name: str
    abbreviation: str

@app.get("/states")
def get_states():
    return [{"name": "Alabama", "abbreviation": "AL"}, {"name": "Alaska", "abbreviation": "AK"}, ...]

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)

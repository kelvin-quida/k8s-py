from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_index():
    return {"Hello": "World"}


@app.get("/api/v1/hello-world")
def read_hello_world():
    return {"what": "road", "where": "kubernetes", "version": "v1"}


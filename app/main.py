from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.api.v1 import routes

def create_app() -> FastAPI:
    app = FastAPI(title="flowboard-api")
    app.add_middleware(
        CORSMiddleware,
        allow_origins=["*"],
        allow_credentials=True,
        allow_methods=["*"],
        allow_headers=["*"],
    )
    app.include_router(routes.router, prefix="/api/v1")

    @app.get("/healthz")
    def health():
        return {"status": "ok"}

    return app

app = create_app()

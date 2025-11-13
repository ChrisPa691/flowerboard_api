from fastapi import APIRouter

router = APIRouter()


@router.get("/welcome")
def welcome():
    return {"message": "Welcome to Flowboard API v1"}

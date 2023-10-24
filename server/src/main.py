from fastapi import FastAPI, Depends, HTTPException, status, Response
from sqlalchemy.orm import Session

from model.entity.cursoEntity import CursoEntity
from database.database import engine, Base, get_db
from model.repository.cursoRepository import CursoRepository
from model.cursoModel import CursoRequest, CursoResponse

Base.metadata.create_all(bind=engine)

app = FastAPI()
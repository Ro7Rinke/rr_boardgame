from sqlalchemy.orm import Session

from model.entity.cursoEntity import CursoEntity

class CursoRepository:
    @staticmethod
    def find_all(db: Session) -> list[CursoEntity]:
        return db.query(CursoEntity).all()

    @staticmethod
    def save(db: Session, curso: CursoEntity) -> CursoEntity:
        if curso.id:
            db.merge(curso)
        else:
            db.add(curso)
        db.commit()
        return curso

    @staticmethod
    def find_by_id(db: Session, id: int) -> CursoEntity:
        return db.query(CursoEntity).filter(CursoEntity.id == id).first()

    @staticmethod
    def exists_by_id(db: Session, id: int) -> bool:
        return db.query(CursoEntity).filter(CursoEntity.id == id).first() is not None

    @staticmethod
    def delete_by_id(db: Session, id: int) -> None:
        curso = db.query(CursoEntity).filter(CursoEntity.id == id).first()
        if curso is not None:
            db.delete(curso)
            db.commit()

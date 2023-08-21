

from typing import List, Optional
from sqlalchemy import Column, String
from sqlmodel import SQLModel, Field, Relationship

from app.database import Base
from sqlalchemy.types import String, Integer


class Users(Base):
    __tablename__= "users"
    id = Column(String, primary_key=True, index=True)
    username = Column(String)
    email = Column(String)
    password = Column(String)
    person_id = Column(String)

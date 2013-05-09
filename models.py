import datetime
from sqlalchemy import Column, Integer, String, DateTime, Boolean, Text

from db import Base

TABLENAME = "table"


class Table(Base):
    """
    Object representation of a table in the database.
    """
    __tablename__ = TABLENAME

    row = Column(String(128), primary_key=True)

    def __init__(self, row):
        self.row = row

    def __repr__(self):
        return "Subject(%s)" % (self.table)

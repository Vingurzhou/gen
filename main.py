from sqlalchemy import create_engine, select, func
from gen import cmd_sql
from sqlalchemy.orm import sessionmaker

engine = create_engine("mysql+pymysql://root:Z00a0319@127.0.0.1:3306/cmd")

SessionLocal = sessionmaker(bind=engine)

with SessionLocal() as session:
    query = session.query(cmd_sql.Cmd)
    print(query)
    cmdList = query.all()
    for cmd in cmdList:
        # print(vars(cmd))
        pass

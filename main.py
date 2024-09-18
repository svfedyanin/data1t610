import psycopg2
from psycopg2 import Error


def data_test(user, password, host, port, database):
    try:
        conn = psycopg2.connect(user=user, password=password, host=host, port=port, database=database)
        with conn.cursor() as curs:
            SQL = "SELECT MIN(age) min_age, MAX(age) max_age FROM test_table WHERE  LENGTH (name) < 6;"
            curs.execute(SQL)
            record = curs.fetchone()
            return record
    except (Exception, Error) as error:
        print("Ошибка при работе с PostgreSQL", error)



if __name__ == '__main__':
    db_user = 'postgres'
    db_password = 'password'
    db_host = 'db'
    db_port = '5432'
    db_name = 'fedyanin'

    # engine = create_engine(f"postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}")
    result = data_test(db_user, db_password, db_host, db_port, db_name)
    print(f"Максимальный возраст  для имен, длина которых меньше 6 - {result[1]} ")
    print(f"Минимальный возраст  для имен, длина которых меньше 6 - {result[0]} ")

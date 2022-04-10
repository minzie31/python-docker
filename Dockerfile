FROM python:3.9

RUN pip install -i https://pypi.python.org/simple pipenv

ENV PROJECT_DIR /opt

COPY ./hello.py ${PROJECT_DIR}
COPY ./app.py ${PROJECT_DIR}
WORKDIR ${PROJECT_DIR}

COPY Pipfile Pipfile.lock ${PROJECT_DIR}/

RUN pipenv install --system --deploy
CMD ["python3", "-m", "flask", "run"]
#CMD ["ls", "/opt/.venv"]
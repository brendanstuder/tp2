FROM python:3.9

WORKDIR /code

COPY ./setup.py /code/setup.py
COPY ./pyproject.toml /code/pyproject.toml

COPY ./src /code/src

RUN pip install /code[serve]

COPY ./controller /code/controller

CMD ["uvicorn", "controller.controller:app", "--host", "0.0.0.0", "--port", "80"]

FROM python:3.9

WORKDIR /code

COPY ./setup.py /code/setup.py

COPY ./src /code/src

RUN pip install /code

COPY ./controller /code/controller

CMD ["uvicorn", "controller.controller:app", "--host", "0.0.0.0", "--port", "80"]

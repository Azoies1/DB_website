# syntax=docker/dockerfile:1

FROM python:3.9.7-slim-buster

COPY . .

RUN pip3 install -r req.txt

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
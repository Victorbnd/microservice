FROM python:3.8.10-alpine

WORKDIR microservice /microservice

COPY . .

RUN pip install Flask

EXPOSE 8282

CMD [ "python3", "microservice/server.py" ]
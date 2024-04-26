FROM ubuntu:latest

WORKDIR /usr/src/

RUN apt-get update && apt-get install -y python3 python3-pip

RUN useradd --create-home appuser

USER appuser

COPY . /usr/src/

EXPOSE 8000

CMD [ "python3", "app.py" ]
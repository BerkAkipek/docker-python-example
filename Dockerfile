FROM python:3.13.0a6-slim

WORKDIR /usr/src/

RUN useradd --create-home appuser

USER appuser

COPY . /usr/src/

EXPOSE 8000

CMD [ "python3", "app.py" ]
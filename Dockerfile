FROM python:3.11.4

WORKDIR /app

COPY ./src/ /app

COPY ./conf/entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

RUN apt-get update && \
    apt-get install -y python3-pip python3-dev python3-venv

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/python -m pip install --upgrade pip

RUN /opt/venv/bin/python -m pip install -r requirements.txt

CMD ["./entrypoint.sh"]
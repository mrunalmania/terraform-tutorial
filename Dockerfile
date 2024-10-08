FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV MONGO_HOST=localhost
ENV MONGO_PORT=27017

CMD ["python3", "app.py"]

# Select python3.7 buster image
FROM python:3.7-slim-buster

# Metadata
LABEL version="0.6"

# Copy requirements file
COPY ./requirements.txt /requirements.txt

# Install requirements
RUN pip install -r requirements.txt

# Copy content folder into /app directory
COPY ./app /app

WORKDIR /app

EXPOSE 5000

ENV FLASK_APP=flask-app.py

CMD ["flask", "run", "--host", "0.0.0.0"]

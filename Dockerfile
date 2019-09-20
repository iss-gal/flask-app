# Select python3.7 buster image
FROM python:3.7-slim-buster

# Metadata
LABEL version="0.4"

# Copy content folder into /app directory
COPY ./app /app

WORKDIR /app

# Install requirements
RUN pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=flask-app.py

CMD ["flask", "run", "--host", "0.0.0.0"]

# Select python3.7 buster image
FROM python:3.7-buster

# Metadata
LABEL version="0.2"

# Copy content folder into /app directory
COPY . /app

WORKDIR /app

# Install requirements
RUN pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=hello.py

CMD ["flask", "run", "--host", "0.0.0.0"]

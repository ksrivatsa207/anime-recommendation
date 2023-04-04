# Base image
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy the project files to the working directory
COPY . .

# Install the required packages
RUN pip install -r requirements.txt

ENV FLASK_APP=app.py

CMD ["flask", "run", "--host=0.0.0.0"]

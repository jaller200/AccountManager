# syntax=docker/dockerfile:1

# Python Base
FROM python:3.8-slim-buster

# Working Directory
WORKDIR /app

# Copy Source
COPY . .

# Install Dependencies
RUN pip3 install -r requirements.txt

# Expose Ports
EXPOSE 5000

# Entrypoint
ENTRYPOINT [ "python3", "app.py" ]
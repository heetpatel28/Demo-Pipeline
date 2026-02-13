# Base image
FROM python:3.9-slim

# Working directory
WORKDIR /app

# Requirements 
COPY requirements.txt .
RUN pip install -r requirements.txt


COPY . .

# Port expose 
EXPOSE 5000

# App run 
CMD ["python", "app.py"]
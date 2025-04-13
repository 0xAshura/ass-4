FROM python:3.9-slim

WORKDIR /app

# Copy requirements.txt from app folder
COPY app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy everything inside app folder into the container
COPY app/ .

EXPOSE 5000

CMD ["python", "app.py"]

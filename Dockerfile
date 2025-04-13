FROM python:3.9-slim

WORKDIR /app

COPY app/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .  # Copy contents of app/ into /app

EXPOSE 5000

CMD ["python", "app/app.py"]

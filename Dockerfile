FROM python:3.9-slim

WORKDIR /app

COPY app/ .  # This brings app.py and requirements.txt into /app in image

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]

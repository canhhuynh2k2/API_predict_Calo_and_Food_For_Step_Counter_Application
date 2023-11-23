
FROM python:3.11.4
# FROM tensorflow/tensorflow:2.13.0

WORKDIR /app

COPY . /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["python", "main.py"]

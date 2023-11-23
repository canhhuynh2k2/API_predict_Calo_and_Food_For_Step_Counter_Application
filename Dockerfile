FROM ubuntu:latest
# FROM python:3.11.4
# FROM tensorflow/tensorflow:2.13.0

WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential hdf5-tools liblg1 libgtk2.8-dev 
COPY . /app

RUN pip3 install -r requirements.txt
EXPOSE 8000
CMD ["python3", "main.py"]

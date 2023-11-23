# FROM tensorflow/tensorflow:2.4.0rc1-gpu-jupyter
FROM tensorflow/tensorflow:2.10.0
# FROM tensorflow/tensorflow:2.13.0-gpu
# FROM python:3.11.4
# FROM tensorflow/tensorflow:2.13.0

WORKDIR /app
# RUN apt-get update -y
# RUN apt-get install -y python3-pip python3-dev build-essential hdf5-tools libgl1 libgtk2.0-dev
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python", "main.py"]

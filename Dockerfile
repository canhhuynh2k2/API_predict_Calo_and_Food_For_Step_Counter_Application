FROM ubuntu:latest
# FROM tensorflow/tensorflow:2.13.0-gpu
FROM bazelbuild/bazel:0.26.1

# FROM python:3.11.4
# FROM tensorflow/tensorflow:2.13.0

WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev git build-essential hdf5-tools libgl1 libgtk2.0-dev wget
RUN git clone https://github.com/tensorflow/tensorflow.git
WORKDIR /tensorflow
RUN bazel build //tensorflow/tools/pip_package:build_pip_package --copt=-mavx --copt=-mavx2
RUN bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
RUN pip3 install /tmp/tensorflow_pkg/*.whl

COPY . /app

RUN pip3 install -r requirements.txt
EXPOSE 8000
CMD ["python3", "main.py"]

# Sử dụng một hình ảnh có sẵn của Python
FROM python:3.11.4
# FROM tensorflow/tensorflow:2.13.0
# Tạo thư mục app và đặt thư mục làm thư mục làm việc
WORKDIR /app

COPY . /app

# COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8000

# Chạy ứng dụng Flask khi container được khởi động
CMD ["python", "main.py"]

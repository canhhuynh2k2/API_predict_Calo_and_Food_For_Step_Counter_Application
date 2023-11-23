# Sử dụng một hình ảnh có sẵn của Python
FROM python:3.11.4

# Tạo thư mục app và đặt thư mục làm thư mục làm việc
WORKDIR /app

# Sao chép tất cả các file từ thư mục hiện tại vào thư mục /app trên hình ảnh
COPY . /app

# Cài đặt các thư viện từ file requirements.txt (nếu có)
# COPY requirements.txt /app/requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Cài đặt các thư viện cần thiết
RUN pip install flask keras numpy

# Mở cổng 5000 để kết nối với Flask
EXPOSE 8000

# Chạy ứng dụng Flask khi container được khởi động
CMD ["python", "main.py"]

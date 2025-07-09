FROM nginx:stable-alpine

# Xóa thư mục mặc định
RUN rm -rf /usr/share/nginx/html/*

# Copy tất cả file ở thư mục hiện tại (.) vào html
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

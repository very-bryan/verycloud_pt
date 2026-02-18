FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY . /app
COPY nginx.conf /etc/nginx/nginx.conf
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]

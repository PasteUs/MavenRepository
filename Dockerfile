FROM nginx:1.16
LABEL maintainer="Lucien Shui" \
      email="lucien@lucien.ink"
COPY ./ /www/
RUN cd /www/ && \
    rm -rf .git .gitignore .github docker-compose.yml Dockerfile LICENSE && \
    echo 'server{listen 80;server_name default;root /www;autoindex on;autoindex_exact_size on;autoindex_localtime on;}' > /etc/nginx/conf.d/default.conf 
EXPOSE 80

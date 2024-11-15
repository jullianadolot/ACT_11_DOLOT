# Use an official Nginx image as a base
FROM nginx:alpine

# Install MySQL
RUN apk add --no-cache mysql mysql-client

# Copy your web application files to the Nginx web directory
# Replace 'your-web-app' with your actual web app directory
COPY your-web-app /usr/share/nginx/html

# Copy MySQL configuration files if you have any
# COPY my.cnf /etc/mysql/my.cnf

# Expose ports for Nginx and MySQL
EXPOSE 80 3306

# Start Nginx and MySQL
CMD ["sh", "-c", "nginx -g 'daemon off;' & mysqld"]

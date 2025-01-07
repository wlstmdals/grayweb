# Step 1: Base image
FROM nginx:latest

# Step 2: Remove default Nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your static files to the Nginx directory
COPY . /usr/share/nginx/html

# Step 4: Expose the Nginx default port
EXPOSE 80

# Step 5: Start Nginx
CMD ["nginx", "-g", "daemon off;"]


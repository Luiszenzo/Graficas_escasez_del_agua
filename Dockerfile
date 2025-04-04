# Use Nginx as base image
FROM nginx:alpine

# Remove default Nginx configuration
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file to Nginx's default serving directory
COPY graficas.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
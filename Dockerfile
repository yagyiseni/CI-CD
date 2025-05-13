# Use an official nginx image from the Docker Hub
FROM nginx:alpine

# Copy the index.html file to the default nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to make the container accessible from outside
EXPOSE 80

# Nginx will automatically run in the foreground
CMD ["nginx", "-g", "daemon off;"]

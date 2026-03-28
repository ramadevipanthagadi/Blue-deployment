# Use official nginx image
FROM nginx:latest

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files
COPY index.html /usr/share/nginx/html/

# Expose port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

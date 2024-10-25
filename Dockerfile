# Use an official Nginx image as the base image
FROM nginx:alpine

# Set up environment variables
ENV APP_DIR /usr/share/nginx/html

# Copy HTML files from the GitHub repository to the Nginx directory
# Clone the GitHub repository containing the HTML files
RUN apk add --no-cache git && \
    git clone https://github.com/your-username/your-repository.git /temp && \
    cp -r /temp/* $APP_DIR && \
    rm -rf /temp

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

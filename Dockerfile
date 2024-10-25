# Use a minimal Alpine image
FROM alpine:latest

# Create a directory to hold the HTML files
WORKDIR /usr/share/html

# Copy your HTML files into the container
COPY . .

# Install a lightweight web server (like BusyBox's httpd)
RUN apk add --no-cache busybox-extras

# Expose port 80
EXPOSE 80

# Start the HTTP server
CMD ["httpd", "-f", "-p", "80", "-h", "/usr/share/html"]

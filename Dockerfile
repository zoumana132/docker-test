# Use the httpd base image
FROM httpd

# Install unzip command (Debian-based)
RUN apt-get update && apt-get install -y unzip

# Set working directory
WORKDIR /usr/local/apache2/htdocs/

# Copy the developer code
ADD https://linux-devops-course.s3.amazonaws.com/halloween.zip /usr/local/apache2/htdocs/
RUN unzip halloween.zip && rm halloween.zip

# Open port 80
EXPOSE 80

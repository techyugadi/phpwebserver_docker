# Pull base image.
FROM ubuntu

# Install PHP
RUN \
  apt-get update && \
  apt-get install -y php5-cli

# Create an index page for testing
COPY index.php /index.php

# Create a volume so that content files are persisted
VOLUME /content

# Define default command.
# Start PHP in-built web server
CMD ["php","-S","0.0.0.0:80"]

# Expose ports.
EXPOSE 80

# Use a lightweight Nginx image based on Alpine Linux
FROM nginx:1.27-alpine

# Set metadata labels (optional but good practice)
LABEL maintainer="you@example.com"
LABEL description="Movie Ticket Booking UI served by Nginx"

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy the static HTML file into the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Copy a custom Nginx config (optional) — we'll use inline here
# If you want a custom config, uncomment the next line and create nginx.conf
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to the outside world
EXPOSE 80

# Nginx runs in the foreground by default with the official image
# (the base image already sets: CMD ["nginx", "-g", "daemon off;"])
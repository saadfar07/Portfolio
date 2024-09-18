# Step 1: Use the official NGINX image as the base image
FROM nginx:alpine

# Step 2: Remove the default NGINX website
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy the HTML, CSS, and JS files to the NGINX web directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY scripts.js /usr/share/nginx/html/

# Step 4: Expose port 80 to the outside world
EXPOSE 80

# Step 5: Start NGINX server
CMD ["nginx", "-g", "daemon off;"]

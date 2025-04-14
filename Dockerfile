# Build Node.js application
FROM node:16

WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy application code
COPY . .

# Expose the Node.js server port
EXPOSE 3000

# Start the Node.js server
CMD ["node", "server.js"]

# Configure Nginx as reverse proxy
FROM nginx:latest

# Copy static files into the container's web root
COPY ./public /usr/share/nginx/html

# Copy custom Nginx configuration file
COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for external access
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

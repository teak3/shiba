# Stage 1: Build the Next.js app
FROM node:14 as builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire application directory to the container
COPY . .

# Build the Next.js app
RUN npm run build

# Stage 2: Serve the Next.js app using Nginx
FROM nginx:alpine

# Copy the built Next.js app from the previous stage to the Nginx server
COPY --from=builder /app/out /usr/share/nginx/html

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy a custom Nginx configuration (if you have one)
# COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

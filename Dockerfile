# Stage 1: Build the Next.js app
FROM node:18 as builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire application directory to the container
COPY . .

# Build the Next.js app
RUN npm run dev
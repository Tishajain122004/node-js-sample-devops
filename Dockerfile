# Use official Node image
FROM node:18-alpine

# Create working directory inside container
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining app files
COPY . .

# Expose app port
EXPOSE 5000

# Start application
CMD ["node", "index.js"]

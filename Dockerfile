# Use official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package files into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Environment variable
ENV NAME mantraspeaker

# Command to run the application
CMD ["npm", "start"]

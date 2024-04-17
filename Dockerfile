# Use official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package files into the container
COPY . /app

# Install dependencies
RUN npm install

# Expose port 3000 to the outside world
EXPOSE 3000

ENV NAME mantraspeaker

# Command to run the application
CMD ["npm", "start"]

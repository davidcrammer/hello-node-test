# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy your application code into the container
COPY . .

# Expose the port your Node.js application is running on
EXPOSE 8080

# Define the command to run your Node.js application
CMD [ "node", "index.js" ]

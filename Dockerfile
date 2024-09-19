# Using the official lightweight Node.js base image
FROM node:14-alpine
  
# Set the working directory in the Docker container
WORKDIR /app
  
# Copy the package.json file from your local directory to the working directory in Docker
COPY package*.json ./
  
# Running npm install command within Docker to install all dependencies
RUN npm install
  
# Copying the rest of your code into Docker 
COPY . .
  
# Setting the port for the application
EXPOSE 8080
  
# At the end, running the node server
CMD ["node", "server.js"]

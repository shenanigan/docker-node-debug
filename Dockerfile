# Download the slim version of node
FROM node:17-slim

# Needed for monitoring any file changes
RUN npm install -g nodemon

# Set the work directory to app folder. 
# We will be copying our code here
WORKDIR /node

#Copy package.json file in the node folder inside container
COPY . .

# Install the dependencies in the container
RUN npm install

# Run the node server with server.js file
CMD ["node", "server.js"]

# Expose the service over PORT 3000
EXPOSE 3000
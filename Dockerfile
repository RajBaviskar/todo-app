# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source files to the working directory
COPY . .

# Build the React app
RUN npm run build

# Specify the command to run the app (usually starts a server)
CMD ["npm", "start"]

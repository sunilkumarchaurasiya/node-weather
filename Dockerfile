# Use the official Node.js Alpine image as the base image, you may change according to it.
FROM node:21-alpine3.18

# Set the working directory inside the container
WORKDIR /weather-app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which your application will run (adjust as needed)
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]

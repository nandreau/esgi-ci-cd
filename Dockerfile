# Use the official Node.js image as the base image
FROM node:19

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY ./package.json ./package-lock.json /app/

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY ./index.js /app/

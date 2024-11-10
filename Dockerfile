# Use the official Node.js image.
# Specify the version you need (e.g., Node 18)
FROM node:20.18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install

# If you're using Yarn, replace RUN npm install with RUN yarn install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (e.g., 3000)
EXPOSE 5000

# Define the command to run the app
CMD ["npm", "start"]

# If your app uses a different script to run, replace "start" with the appropriate script

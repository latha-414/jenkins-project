FROM node:18  # Use Node.js 18 as the base image
WORKDIR /app  # Set the working directory inside the container
COPY package.json .  # Copy package.json to install dependencies
RUN npm install  # Install dependencies
COPY . .  # Copy all project files
EXPOSE 3000  # Expose port 3000
CMD ["node", "server.js"]  # Start the server

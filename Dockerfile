# Use an official Node.js runtime as a parent image
FROM node:21

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Copy the entrypoint script
# COPY docker-entrypoint.sh /usr/local/bin/

# Make the script executable
# RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Install dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 3000

# Set the entrypoint script
ENTRYPOINT ["docker-entrypoint.sh"]

# Run the application by default
CMD ["npm", "start"]

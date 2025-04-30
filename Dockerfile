FROM node:18

WORKDIR /app

# Copy package files and install dependencies
COPY server/package*.json ./
RUN npm install

# Copy server code
COPY server/ ./

# Set environment variables
ENV PORT=5000

# Expose the port
EXPOSE 5000

# Start the server
CMD ["node", "server.js"] 
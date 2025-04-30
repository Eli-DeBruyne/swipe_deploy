FROM node:18

WORKDIR /app

# Copy package files and install dependencies
COPY server/package*.json ./
RUN npm install

# Copy server code
COPY server/ ./

# Start the server
CMD ["node", "server.js"] 
# Use the official Node.js image as a base
FROM node:22-alpine

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npx install

# Copy all source files
COPY . .

# Build the app for production
RUN npm run build

# Expose Vite preview server port
EXPOSE 4173

# Start Vite preview server
CMD ["npm", "run", "preview"]
<<<<<<< HEAD
# Use the official Node.js image as a base
=======
# Stage 1: Build
# FROM node:22-alpine AS build
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# RUN npm run build


# docker build -t my-frontend-dev .
# docker run -p 5173:5173 my-frontend-dev
>>>>>>> c7be8404b7fd42dafcf7f2bcfbeb027ef75e77b7
FROM node:22-alpine

WORKDIR /app
<<<<<<< HEAD

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
=======
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host"]

# Stage 2: Serve with nginx
#FROM nginx:latest
#COPY --from=build /app/dist /usr/share/nginx/html
#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]
>>>>>>> c7be8404b7fd42dafcf7f2bcfbeb027ef75e77b7

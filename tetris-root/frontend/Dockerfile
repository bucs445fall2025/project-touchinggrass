# Stage 1: Build
# FROM node:22-alpine AS build
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# RUN npm run build


FROM node:22-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . /app
EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host"]

# Stage 2: Serve with nginx
#FROM nginx:latest
#COPY --from=build /app/dist /usr/share/nginx/html
#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]

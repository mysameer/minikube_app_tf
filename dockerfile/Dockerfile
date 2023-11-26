# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000


#The -d flag (short for --detach) runs the container in the background.
# The -p flag (short for --publish) creates a port mapping between the host and the container.
# The -p flag takes a string value in the format of HOST:CONTAINER, where HOST is the address on the host, and CONTAINER is the port on the container.
# The command publishes the container's port 3000 to 127.0.0.1:3000 (localhost:3000) on the host.
# Without the port mapping, you wouldn't be able to access the application from the host.
FROM node:18.18-alpine

# Install git
RUN apk add --no-cache git

# Copy local files
COPY . /todo-app

# Set the working directory
WORKDIR /todo-app

# Install dependencies
RUN yarn install --production

# Start the application
CMD ["yarn", "run", "dev"]
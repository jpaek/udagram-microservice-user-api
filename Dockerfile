# Use NodeJS base image
FROM node:11

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Copy app source
COPY . .

# Install dependencies
RUN npm install

# Bind the port that the image will run on
EXPOSE 8081

# Define the Docker image's behavior at runtime
#CMD ["node", "server.js"]
CMD  ["npm", "run", "dev"]

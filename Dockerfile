FROM node:16-alpine

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build

EXPOSE 8080

CMD [ "node", "index.js" ]

# # Use the official lightweight Node.js image.
# # https://hub.docker.com/_/node
# FROM node:18-slim

# # Create and change to the app directory.
# WORKDIR /usr/src/app

# # Copy application dependency manifests to the container image.
# # A wildcard is used to ensure copying both package.json AND package-lock.json (when available).
# # Copying this first prevents re-running npm install on every code change.
# COPY package*.json ./

# # Install production dependencies.
# # If you add a package-lock.json, speed your build by switching to 'npm ci'.
# # RUN npm ci --only=production
# # RUN npm install -g npm@10.1.0
# # RUN npm install -g @angular/cli
# # RUN npm install --save-dev @angular-devkit/build-angular
# # RUN npm install --only=production
# # RUN npm update
# RUN npm install -g @angular/cli
# RUN npm install
# RUN npm run build


# # Copy local code to the container image.
# COPY . ./

# # Run the web service on container startup.
# CMD [ "npm", "start" ]
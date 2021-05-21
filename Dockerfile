FROM quay.io/toni0/hello-webserver-golang

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./
# If you are building your code for production
# RUN npm ci --only=production
# RUN npm install
COPY . .
RUN LS
# Bundle app source

EXPOSE 8080

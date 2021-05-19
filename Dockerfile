FROM golang:1.16

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./

# If you are building your code for production
# RUN npm ci --only=production
# RUN npm install

# Bundle app source

EXPOSE 8080
CMD [ "sleep", "3000" ]

FROM golang

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./
WORKDIR /opt/apt-root/src
# If you are building your code for production
# RUN npm ci --only=production
# RUN npm install
COPY . .
RUN ls
# Bundle app source


CMD [ "go","run","main.go" ]
EXPOSE 8080

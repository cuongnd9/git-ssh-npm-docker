FROM node:12

WORKDIR /app

ARG SSH_PRIVATE_KEY
RUN mkdir -p /root/.ssh
RUN echo $SSH_PRIVATE_KEY > /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
RUN ssh-keyscan -H github.com >> /etc/ssh/ssh_known_hosts
RUN ssh -vT git@github.com

COPY package.json /app
COPY yarn.lock /app

RUN yarn

COPY . /app

RUN yarn build

EXPOSE 9000

CMD ["yarn", "start"]

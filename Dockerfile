FROM node:12-alpine

ARG SSH_PRIVATE_KEY

RUN apk add git openssh-client

COPY package.json yarn.lock ./

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN ssh-agent sh -c 'echo $SSH_PRIVATE_KEY | base64 -d | ssh-add - ; yarn --network-concurrency 1'

COPY . .

RUN yarn build

EXPOSE 9000

CMD ["yarn", "start"]

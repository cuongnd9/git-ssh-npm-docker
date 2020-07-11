# docker-npm-git-ssh

docker + npm + git + ssh

```sh
yarn add git+ssh://git@your_git_server.com:your_username/your_private_repo_name.git
docker build -t 103cuong/docker-npm-git-ssh --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)" .
```

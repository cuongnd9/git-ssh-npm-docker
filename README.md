# docker-npm-git-ssh

docker + npm + git + ssh

```sh
yarn add git+ssh://git@your_git_server_domain:your_username/your_private_repo_name.git
```
example: `yarn add git+ssh://git@github.com:103cuong/uid.git`

```sh
docker build -t 103cuong/docker-npm-git-ssh --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa | base64)" .
```

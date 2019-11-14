# GitHub Actions Dockerized

Dockerized Self-hosted runner for GitHub Actions.

This Project is inspired by [GitHub Blog: Self-hosted runners for GitHub Actions is now in beta](https://github.blog/2019-11-05-self-hosted-runners-for-github-actions-is-now-in-beta/).

## Python

```sh
docker pull docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:latest-2.160.2
docker run \
  -eREPOSITORY=jeongukjae/github-actions-dockerized \
  -eTOKEN=TOKENS \
  docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:latest-2.160.2
```

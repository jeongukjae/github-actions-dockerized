# GitHub Actions Dockerized

Dockerized Self-hosted runner for GitHub Actions.

This Project is inspired by [GitHub Blog: Self-hosted runners for GitHub Actions is now in beta](https://github.blog/2019-11-05-self-hosted-runners-for-github-actions-is-now-in-beta/).

## Python

```sh
docker pull docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:latest-2.160.2
docker run \
  -eREPOSITORY=${YOUR_REPOSITORY_INCLUDING_ORAGANIZATION} \
  -eTOKEN=${TOKEN_ISSUED_FOR_YOUR_REPOSITORY} \
  docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:latest-2.160.2
```

You can check your token in Actions tab from your repository’s settings.

ex>

```sh
docker pull docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:latest-2.160.2
docker run \
  -eREPOSITORY=jeongukjae/github-actions-dockerized \
  -eTOKEN=AKDIG..................... \
  docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:latest-2.160.2
```

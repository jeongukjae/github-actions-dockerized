# GitHub Actions Dockerized

Dockerized Self-hosted runner for GitHub Actions.

This Project is inspired by [GitHub Blog: Self-hosted runners for GitHub Actions is now in beta](https://github.blog/2019-11-05-self-hosted-runners-for-github-actions-is-now-in-beta/).

## Python

### Usage

```sh
docker pull docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:latest-2.160.2
docker run \
  -eREPOSITORY=${YOUR_REPOSITORY_INCLUDING_ORAGANIZATION} \
  -eTOKEN=${TOKEN_ISSUED_FOR_YOUR_REPOSITORY} \
  -eNAME=${OPTIONAL__NAME_OF_RUNNER} \
  -eWORKDIR=${OPTIONAL__WORKDIR_OF_RUNNER} \
  docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:latest-2.160.2
```

You can check your token in Actions tab from your repository’s settings.

ex>

```sh
docker pull docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:latest-2.160.2
docker run \
  -eREPOSITORY=jeongukjae/github-actions-dockerized \
  -eTOKEN=AKDIG..................... \
  -eNAME=test-runner \
  docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:latest-2.160.2
```

### Image Name & Tags

format: `docker.pkg.github.com/jeongukjae/github-actions-dockerized/python:${PYTHON_VERSION}-${ACTIONS_RUNNER_VERSION}`

Available `PYTHON_VERSION`:

* 3.6
* 3.7
* 3.8

Available `ACTIONS_RUNNER_VERSION`:

* 2.160.2

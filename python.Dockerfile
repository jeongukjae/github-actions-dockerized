ARG BASE_IMAGE=python
FROM ${BASE_IMAGE}

ARG ACTIONS_RUNNER_VERSION=2.160.2

RUN useradd -ms /bin/bash ga-runner
USER ga-runner
WORKDIR /home/ga-runner

RUN curl -O https://githubassets.azureedge.net/runners/${ACTIONS_RUNNER_VERSION}/actions-runner-linux-x64-${ACTIONS_RUNNER_VERSION}.tar.gz
RUN tar xzf ./actions-runner-linux-x64-${ACTIONS_RUNNER_VERSION}.tar.gz && rm actions-runner-linux-x64-${ACTIONS_RUNNER_VERSION}.tar.gz

ENV REPOSITORY=
ENV TOKEN=

ADD entrypoint.sh entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
CMD ["./run.sh"]

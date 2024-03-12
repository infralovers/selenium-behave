ARG SELENIUM_BASE
# hadolint ignore=DL3006
FROM $SELENIUM_BASE

USER root

# hadolint ignore=DL3013,DL3008
RUN apt-get update -q \
    && apt-get install -y python3-pip python3-virtualenv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER seluser

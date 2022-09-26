ARG baseimage=selenium/standalone-firefox:4
FROM ${baseimage}

USER root
RUN apt-get update -q \
    && apt-get install -y python3-pip \
    && pip3 install virtualenv behave \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER seluser
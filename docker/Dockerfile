FROM phusion/baseimage:bionic-1.0.1
LABEL maintainer="KII Developers <dev@kii.org>"
LABEL description="Dockerised KII, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /kii

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} kii
RUN useradd -u ${USER_ID} -g kii -s /bin/bash -m -d /kii kii
RUN mkdir /kii/.kii
RUN chown kii:kii -R /kii

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER kii

VOLUME ["/kii"]

EXPOSE 5815 9999 15815 15816

WORKDIR /kii

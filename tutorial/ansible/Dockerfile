FROM ubuntu:20.04
LABEL maintainer="Khan Adil"

ENV DEBIAN_FRONTEND noninteractive
# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       openssh-client \
       apt-utils \
       build-essential \
       locales \
       libffi-dev \
       libssl-dev \
       libyaml-dev \
       python3-dev \
       python3-setuptools \
       python3-pip \
       python3-yaml \
       software-properties-common \
       rsyslog systemd systemd-cron sudo iproute2 \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean
RUN sed -i 's/^\($ModLoad imklog\)/#\1/' /etc/rsyslog.conf

# Upgrade pip to latest version.
RUN pip3 install --upgrade pip

RUN pip3 install ansible
# Install Ansible inventory file.
RUN mkdir -p /etc/ansible
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

WORKDIR /work

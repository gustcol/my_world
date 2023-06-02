FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
### Install the following dependenices in the docker image

# curl iproute2 sshfs unzip less groff

RUN apt-get update && apt-get install -y \
    curl \
    iproute2 \
    sshfs \
    unzip \
    less \
    groff \
    awscli

# Install kubectl from https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl
#
RUN curl -LO "https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/
# Install AWS CLI from https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
# Installed using apt-get
# Install the above tools, unpack and make it available in the PATH executable
###

CMD ["/bin/bash"]

FROM mcr.microsoft.com/azure-cli:2.7.0

LABEL MAINTAINER="Akos Veres <v@ako.sh>"

ENV terraform_version=0.12.26

RUN curl -O -J -L https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip \
    && unzip terraform_${terraform_version}_linux_amd64.zip \
    && mv terraform /usr/local/bin/terraform \
    && rm -rf terraform_${terraform_version}_linux_amd64.zip

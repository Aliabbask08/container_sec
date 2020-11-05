FROM ubuntu
MAINTAINER <bloglearn72@gmail.com @Aliabbas_dvlx>
RUN apt-get update -y \
    apt-get install unzip -y
WORKDIR /usr/local/bin
COPY bin/* .
RUN unzip terraform_0.13.5_linux_amd64.zip -C . \
    rm -rf terraform_0.13.5_linux_amd64.zip




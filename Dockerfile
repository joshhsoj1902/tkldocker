FROM turnkeylinux/tkldev-14.1
MAINTAINER joshhsoj1902

WORKDIR /turnkey/fab/products/docker

COPY . ./

RUN tkldev-setup

RUN make

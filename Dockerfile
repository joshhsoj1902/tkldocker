FROM turnkeylinux/tkldev-14.1
MAINTAINER joshhsoj1902

WORKDIR /turnkey/fab/products/docker

COPY . ./

RUN tkldev-setup

RUN ls -ltr

RUN ls -ltr ../

RUN ls -ltr ../../

RUN ls -ltr /turnkey
RUN ls -ltr /turnkey/fab
RUN ls -ltr /turnkey/fab/common
RUN ls -ltr /turnkey/fab/common/mk


RUN make

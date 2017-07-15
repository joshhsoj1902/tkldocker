FROM turnkeylinux/tkldev-14.1
MAINTAINER joshhsoj1902

WORKDIR /turnkey/fab/products/docker

COPY . ./

ENV FAB_PATH /turnkey/fab
ENV POLIPO_PORT 8124
ENV FAB_APT_PROXY http://127.0.0.1:8124
ENV FAB_HTTP_PROXY http://127.0.0.1:8124
ENV FAB_POOL f

RUN tkldev-setup

RUN ls -ltr

RUN ls -ltr ../

RUN ls -ltr ../../

RUN ls -ltr /turnkey
RUN ls -ltr /turnkey/fab
RUN ls -ltr /turnkey/fab/products
RUN ls -ltr /turnkey/fab/common
RUN ls -ltr /turnkey/fab/common/mk


RUN cd ../core && make

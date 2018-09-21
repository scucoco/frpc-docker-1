FROM apline

MAINTAINER Chen Gang<372763861@qq.com>

ADD frpc /frpc
ADD frpc.ini /frpc.ini

RUN chmod 777 /frpc
RUN apk update && apk add --no-cache tzdata
RUN cp -r -f /usr/share/zoneinfo/Hongkong /etc/localtime


ENTRYPOINT ["/frpc", "-c", "/frpc.ini"]

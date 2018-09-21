FROM apline:3.4

MAINTAINER Chen Gang<372763861@qq.com>

ADD ./ /
ADD frpc /frpc
ADD frpc.ini /frpc.ini

RUN chmod 777 /frpc
RUN apk add -U tzdata && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENTRYPOINT ["/frpc", "-c", "/frpc.ini"]

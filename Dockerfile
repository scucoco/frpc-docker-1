FROM alpine

MAINTAINER Chen Gang<372763861@qq.com>

ADD frpc /frpc
ADD frpc.ini /frpc.ini

RUN chmod 777 /frpc

RUN apk -U add dnsmasq
EXPOSE 53 53/udp
ENTRYPOINT ["/frpc", "-c", "/frpc.ini"]

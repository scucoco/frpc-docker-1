FROM scratch

MAINTAINER Chen Gang<372763861@qq.com>

ADD frpc /frpc
ADD frpc.ini /frpc.ini

RUN chmod 777 /frpc

ENTRYPOINT ["/frpc", "-c", "/frpc.ini"]

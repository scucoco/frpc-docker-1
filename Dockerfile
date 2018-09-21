FROM apline

MAINTAINER Chen Gang<372763861@qq.com>

ADD frpc /frpc
ADD frpc.ini /frpc.ini
ADD setdate /setdate

RUN chmod 777 /frpc




ENTRYPOINT ["/bin/sh", "/setdate"]
ENTRYPOINT ["/frpc", "-c", "/frpc.ini"]

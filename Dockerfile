FROM alpine
MAINTAINER Chen Gang<372763861@qq.com>
ADD frpc /bin/frpc
ADD frpc.ini /frpc.ini

RUN chmod 777 /bin/frpc \
    && apk add tzdata \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata

CMD ["frpc", "-c", "/frpc.ini"]

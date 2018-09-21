FROM apline

MAINTAINER Chen Gang<372763861@qq.com>

ADD frpc /frpc
ADD frpc.ini /frpc.ini

RUN chmod 777 /frpc




CMD ["apk add --no-cache tzdata"]
CMD ["cp -r -f /usr/share/zoneinfo/Hongkong /etc/localtime"]
CMD ["echo 'Asia/Shanghai' > /etc/timezone"]
ENTRYPOINT ["/frpc", "-c", "/frpc.ini"]

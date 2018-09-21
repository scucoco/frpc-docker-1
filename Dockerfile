FROM alpine:3.4

ADD frpc /bin/frpc
ADD frpc.ini /frpc.ini

RUN chmod 777 /bin/frpc \
    && apk add -U tzdata \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo -ne "Alpine Linux 3.4 image. (`uname -rsv`)\n" >> /root/.built \
    && apk del tzdata

CMD ["frpc", "-c", "/frpc.ini"]

FROM alpine:3.4

ADD ./ /
ADD frpc /frpc
ADD frpc.ini /frpc.ini


RUN apk update && apk add tzdata \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo -ne "Alpine Linux 3.4 image. (`uname -rsv`)\n" >> /root/.built

CMD ["/frpc", "-c", "/frpc.ini"]

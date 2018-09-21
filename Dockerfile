FROM scratch

MAINTAINER Chen Gang<372763861@qq.com>

ADD frpc /bin/frpc
ADD frpc.ini /bin/frpc.ini

RUN chmod 777 /bin/frpc

CMD ["/bin/frpc -c /bin/frpc.ini"]

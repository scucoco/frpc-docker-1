FROM busybox

MAINTAINER Chen Gang<372763861@qq.com>

ADD frpc /frpc
ADD frpc.ini /frpc.ini

RUN chmod 777 /frpc
RUN time=`wget -qO- "http://quan.suning.com/getSysTime.do"|awk -F "\"" '{print $8}'`
RUN date -s "$time"


ENTRYPOINT ["/frpc", "-c", "/frpc.ini"]

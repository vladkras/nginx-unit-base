FROM alpine:3.7

ENV DESTDIR /opt/unit/

RUN apk add --update --no-cache git curl build-base

RUN git clone https://github.com/nginx/unit.git

RUN cd unit && ./configure --log=/var/log/unitd.log && make && make install

CMD ["/opt/unit/sbin/unitd", "--no-daemon", "--control", "unix:/var/run/control.unit.sock"]


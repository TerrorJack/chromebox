FROM debian:unstable-slim

ENV LANG=C.UTF-8

WORKDIR /root

COPY bootstrap.sh /tmp/bootstrap.sh

RUN /bin/sh -e /tmp/bootstrap.sh

EXPOSE 3000

CMD ["/usr/bin/google-chrome-unstable", "--flag-switches-begin", "--javascript-harmony", "--flag-switches-end", "--headless", "--no-sandbox", "--remote-debugging-address=0.0.0.0", "--remote-debugging-port=3000"]

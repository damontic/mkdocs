FROM alpine:3.8

RUN apk update
RUN apk add python3
RUN pip3 install mkdocs

EXPOSE 8080

WORKDIR /mkdocs
COPY init.sh /mkdocs/bin/init.sh
RUN chmod u+x /mkdocs/bin/init.sh

ENTRYPOINT ["/mkdocs/bin/init.sh"]

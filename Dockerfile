FROM alpine:3.8

RUN apk update
RUN apk add python3
RUN pip3 install mkdocs

EXPOSE 8080

WORKDIR /mkdocs
COPY mkdockerize.sh /mkdocs/bin/mkdockerize.sh
RUN chmod u+x /mkdocs/bin/mkdockerize.sh

ENTRYPOINT ["/mkdocs/bin/mkdockerize.sh"]

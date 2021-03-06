FROM catalog.shurenyun.com/library/drone_build:0.2

COPY . /go/src/github.com/drone/drone
WORKDIR /go/src/github.com/drone/drone

ENV PATH $PATH:/go/bin
ENV GO15VENDOREXPERIMENT 1

RUN make gen_static && make build_static

ADD .env.sample .env

ENTRYPOINT ["./drone_static"]

EXPOSE 9898



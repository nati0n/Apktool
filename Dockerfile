FROM --platform=linux/amd64 ubuntu:20.04 as builder

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-8-jdk gradle

ADD . /apktool
WORKDIR /apktool
RUN ./gradelw

#FROM ubuntu:20.04 as package

#COPY --from=builder /expandpass/expandpass /expandpass
#COPY --from=builder /expandpass/seed.txt /seed.txt

# Technically build and 'package'
# build step with required supporting packages
# package step new docker with binaryldd
# go make gcc cmake clang curl

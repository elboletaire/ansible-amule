FROM williamyeh/ansible:ubuntu12.04

RUN apt-get update
RUN tests/test.sh

EXPOSE 6379

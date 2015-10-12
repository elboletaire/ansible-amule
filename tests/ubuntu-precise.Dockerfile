FROM williamyeh/ansible:ubuntu12.04

RUN apt-get update
CMD ["sh", "tests/test.sh"]

EXPOSE 6379

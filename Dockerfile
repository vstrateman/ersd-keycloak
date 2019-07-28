FROM ubuntu

RUN apt-get update && \
  apt-get install -y jq curl

COPY ./configure ./configure

CMD ["./configure"]
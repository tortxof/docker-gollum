FROM ruby:2.2
MAINTAINER Daniel Jones <tortxof@gmail.com>

RUN groupadd -r app && useradd -r -g app app

RUN apt-get update && \
    apt-get install -y libicu-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN gem install gollum

USER app

VOLUME ["/data"]

WORKDIR /data

EXPOSE 4567

CMD ["gollum", "--h1-title", "--allow-uploads", "dir"]

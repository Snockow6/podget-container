FROM ubuntu:20.04

ENV PUID=1000
ENV PGID=1000
ENV Refresh=1d

# update cache and install wget and make
RUN apt-get update -y
RUN apt-get install wget make -y
RUN apt-get clean

# create User and Goup
RUN useradd -u $PUID -d /podget abc
RUN groupmod -g $PGID abc
RUN usermod -aG abc abc

# create and configure folders
RUN mkdir -p /podget/POD
RUN mkdir -p /podget/.podget
RUN chown -R abc /podget

COPY ./run.sh /
RUN chmod +x /run.sh

#get podget release from github and put it into tmp directory
RUN wget https://github.com/dvehrs/podget/archive/refs/tags/v0.8.8.tar.gz -P /tmp

#Extract release tar into tmp directory
RUN tar -xvf /tmp/v0.8.8.tar.gz -C /tmp

#install podget
RUN cd /tmp/podget-0.8.8 && make install

CMD ["/run.sh"]

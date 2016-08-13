FROM ubuntu:16.04
MAINTAINER Rowan Wookey <admin@rwky.net>
RUN apt update && apt -yq upgrade && apt -y install graphite-carbon
EXPOSE 2003 2004 7002
CMD ["carbon-cache", "--config=/etc/carbon/carbon.conf", "start", "--debug"]

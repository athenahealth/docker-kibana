FROM kibana:4.5.4

MAINTAINER Stas Alekseev <salekseev@athenahealth.com>

RUN gosu kibana kibana plugin --install elasticsearch/marvel/2.3.3

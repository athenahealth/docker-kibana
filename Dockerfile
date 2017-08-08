FROM docker.elastic.co/kibana/kibana:5.5.1

MAINTAINER Stas Alekseev <salekseev@athenahealth.com>

RUN bin/kibana-plugin remove x-pack

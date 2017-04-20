FROM kibana:4.5.4

MAINTAINER Stas Alekseev <salekseev@athenahealth.com>

RUN sed -ri "s!^(\#\s*)?(elasticsearch\.requestTimeout:).*!\2 60000!" /opt/kibana/config/kibana.yml \
    && grep -q 'elasticsearch.requestTimeout: 60000' /opt/kibana/config/kibana.yml \
    && gosu kibana kibana plugin --install elasticsearch/marvel/2.3.3

FROM kibana:4.5.4

MAINTAINER Stas Alekseev <salekseev@athenahealth.com>

RUN sed -ri "s!^(\#\s*)?(elasticsearch\.requestTimeout:).*!\2 60000!" /opt/kibana/config/kibana.yml \
    && grep -q 'elasticsearch.requestTimeout: 60000' /opt/kibana/config/kibana.yml \
    && /opt/kibana/bin/kibana plugin --install elastic/timelion

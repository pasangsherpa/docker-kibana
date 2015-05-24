#
# Kibana Dockerfile
#
# https://github.com/pasangsherpa/docker-kibana
#

# Pull base image.
FROM java:7-jre

ENV KIBANA_PKG_NAME kibana-4.0.2-linux-x64

# Install Kibana.
RUN cd /opt && \
    wget https://download.elasticsearch.org/kibana/kibana/$KIBANA_PKG_NAME.tar.gz && \
    tar -xzvf $KIBANA_PKG_NAME.tar.gz && \
    rm $KIBANA_PKG_NAME.tar.gz && \
    mv $KIBANA_PKG_NAME kibana

# Add kibana to PATH.
ENV PATH /opt/kibana/bin:$PATH

# Mount kibana.yml config.
COPY config /opt/kibana/config

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["kibana"]
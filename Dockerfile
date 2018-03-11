FROM node:4

RUN apt-get update && \
    apt-get install -y libzmq3-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    npm install -g bitcore@4.1.0

VOLUME /root/.bitcore

EXPOSE 3001

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bitcored"]
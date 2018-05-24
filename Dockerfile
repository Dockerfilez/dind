FROM docker:dind
RUN mkdir -p /etc/docker/certs.d/registry.bestplayers.ru
COPY ca.cer /etc/docker/certs.d/registry.bestplayers.ru/ca.cer
VOLUME /var/lib/docker
EXPOSE 2375
ENTRYPOINT [ "dockerd-entrypoint.sh" ]
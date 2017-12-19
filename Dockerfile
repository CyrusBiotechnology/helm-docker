FROM busybox

ENV HELM_VERSION=v2.7.2
ENV PATH=$PATH:/opt/helm

ADD https://storage.googleapis.com/kubernetes-helm/helm-$HELM_VERSION-linux-amd64.tar.gz /tmp/helm.tar.gz

RUN mkdir -p /opt/helm \
  && tar xf /tmp/helm.tar.gz --strip-components=1 -C /opt/helm

ENTRYPOINT ["helm"]

FROM alpine

RUN apk add --no-cache curl bash openssl ca-certificates \
  && curl -L https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash \
  && apk del curl bash openssl \
  && helm init -c

ENTRYPOINT ["helm"]

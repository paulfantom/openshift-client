FROM frolvlad/alpine-glibc:latest as builder

# specify the version string of the oc release
ARG OC_VERSION="v3.10.0"
ARG OC_RELEASE="openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit"

# install the oc client tools
ADD https://github.com/openshift/origin/releases/download/$OC_VERSION/$OC_RELEASE.tar.gz /opt/oc/release.tar.gz
RUN apk add --no-cache ca-certificates && \
    tar --strip-components=1 -xzvf /opt/oc/release.tar.gz -C /opt/oc/

FROM frolvlad/alpine-glibc:latest

COPY --from=builder /opt/oc/oc /usr/bin/oc

VOLUME /root/.kube

#EXPOSE 8001

ENTRYPOINT ["/usr/bin/oc"]

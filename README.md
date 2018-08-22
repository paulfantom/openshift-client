[![Docker Automated build](https://img.shields.io/docker/automated/paulfantom/openshift-client.svg)](https://hub.docker.com/r/paulfantom/openshift-client/)

# OpenShift Client Tools in a container

This is based on initial work from https://github.com/e-bits/openshift-client

## Run

To allow for peristent config, we mount `/root/.kube` configuration into a named volume `oc_cli`.

#### With podman

```sh
podman run --rm -it -v oc_cli:/root/.kube paulfantom/openshift-client help
```

#### With docker
```sh
docker run --rm -it -v oc_cli:/root/.kube paulfantom/openshift-client help
```

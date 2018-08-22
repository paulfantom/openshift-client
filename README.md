[![Docker Automated build](https://img.shields.io/docker/automated/paulfantom/openshift-client.svg)](https://hub.docker.com/r/paulfantom/openshift-client/)

# OpenShift Client Tools in a container

This is based on initial work from https://github.com/e-bits/openshift-client

## Run

To allow for peristent config, we need to mount `/root/.kube` directory.

#### With podman

```sh
mkdir /opt/oc_cli
podman run --rm -it -v /opt/oc_cli:/root/.kube paulfantom/openshift-client help
```

#### With docker
```sh
docker run --rm -it -v oc_cli:/root/.kube paulfantom/openshift-client help
```

### Bash alias

Add it to your bash aliases and use as if it was installed on host:
```sh
alias oc="docker run --rm -it -v oc_cli:/root/.kube paulfantom/openshift-client"
```

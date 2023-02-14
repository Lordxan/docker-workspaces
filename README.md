# Usage
## docker
```console
docker run --rm -it -v ${PWD}:/repos ghcr.io/lordxan/docker-workspaces:basic
```
## wsl
```console
docker run --rm -it -v ${PWD}:/repos ghcr.io/lordxan/docker-workspaces:basic
docker export ${CONTAINER_ID} > wsl.tar
wsl --import ${INSTANCE_NAME} ${INSTANCE_PATH} wsl.tar
```

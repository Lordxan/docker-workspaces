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

# Included tools
## Basic 
  - [lf](https://github.com/gokcehan/lf)
  - [zsh](https://github.com/ohmyzsh/ohmyzsh)
  - [p10k](https://github.com/romkatv/powerlevel10k)
  - [helix](https://github.com/helix-editor/helix)
  - [zellij](https://github.com/zellij-org/zellij)
  - [gitui](https://github.com/extrawurst/gitui)

## Node.js
  - [nvm](https://github.com/nvm-sh/nvm)
  - [pnpm](https://github.com/pnpm/pnpm)
  - [ncu](https://github.com/raineorshine/npm-check-updates)
  - [npkill](https://github.com/voidcosmos/npkill)

## Rust
  - [rust-analyzer](https://github.com/rust-lang/rust-analyzer)

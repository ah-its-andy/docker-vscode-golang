# docker-vscode-golang
Golang development environment for Visual Studio Code Remote in Container

# NOTICE
Make sure you had install `Remote - Containers` extension in Visual Studio Code. You can find instruction at [https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

# Usages
## Run container as daemon mode

`
docker run -d standardcore/vscode-golang:tag /usr/bin/daemon.sh
`

# Pre-Installed Golang packages
- github.com/uudashr/gopkgs/v2/cmd/gopkgs
- github.com/ramya-rao-a/go-outline
- github.com/cweill/gotests/gotests
- github.com/fatih/gomodifytags
- github.com/josharian/impl
- github.com/haya14busa/goplay/cmd/goplay
- github.com/go-delve/delve/cmd/dlv

# Pre-Installed toolchains
- wget
- git

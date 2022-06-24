#! /bin/bash

GO_VERSIONS=("go1.17.11")
for((i=0;i<${#GO_VERSIONS[@]};i++));
do
  echo "========== standardcore/vscode-golang:${GO_VERSIONS[i]}-${VSCODE_GOLANG_CPU_ARCH}-$1 =========="
  echo "=============================================================================="
  docker build ./ --build-arg GO_BIN_URL=https://golang.google.cn/dl/${GO_VERSIONS[i]}.linux-${VSCODE_GOLANG_CPU_ARCH}.tar.gz -t standardcore/vscode-golang:${GO_VERSIONS[i]}-${VSCODE_GOLANG_CPU_ARCH}-$1
  docker push standardcore/vscode-golang:${GO_VERSIONS[i]}-${VSCODE_GOLANG_CPU_ARCH}-$1
  docker image rm standardcore/vscode-golang:${GO_VERSIONS[i]}-${VSCODE_GOLANG_CPU_ARCH}-$1
done



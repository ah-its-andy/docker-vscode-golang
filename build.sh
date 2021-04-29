#! /bin/bash

GO_VERSIONS=("go1.16.3" "go1.16.2" "go1.16.1" "go1.16" "go1.15.11" "go1.15.10" "go1.15.9" "go1.15.8" "go1.15.7" "go1.15.6" "go1.15.5" "go1.15.4" "go1.15.3" "go1.15.2" "go1.15.1" "go1.15")
ARCHS=("amd64" "arm64")
for((i=0;i<${#GO_VERSIONS[@]};i++));
do
   for((a=;a<${#ARCHS[@]};a++));
   do
      docker build ./ --build-args GO_BIN_URL=https://golang.google.cn/dl/${GO_VERSIONS[i]}.linux-${ARCHS[a]}.tar.gz -t standardcore/vscode-golang:${GO_VERSIONS[i]}-${ARCHS[a]}
   done
done




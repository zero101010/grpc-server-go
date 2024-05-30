#!/bin/bash
## install protoc compiler of protocol buffer
brew install protobuf
## Install packages to use in golang
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2
## grpc client
brew tap ktr0731/evans
brew install evans
## Install dependencies
go mod tidy

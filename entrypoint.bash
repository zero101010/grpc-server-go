#!/bin/bash
## Generate protol buffer
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
protoc --go_out=. --go-grpc_out=. proto/course_category.proto

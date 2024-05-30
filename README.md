# grpc-server-go

## Definition
### Protol Buffers
- Documentation: https://protobuf.dev
- Serializing structured data, transfer binary data
- Structured data that will be assign 

### Protocol Buffers VS Json
- Binários < JSON
- Serializing process it's easy to CPU work,faster and request less network resources

### REST VS gRPC
- Rest: Text/JSON, Hight latency, without contract(Big chance of errors), without streaming support
- gRPC: Protocol Buffers, Assync, low latency, use Contract(.proto), streaming support


## Code

- Create a protofile and use this file to generate the assign contract using protocol buffer
- Create the methods and interface using this command to generate the proto files
```
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
protoc --go_out=. --go-grpc_out=. proto/course_category.proto

```
After that you need to create the `db.sqlite`, you can do this running this command:
```
sqlite3 db.sqlite
```
and after create this table inside of sqlite
```
create table categories (id string, name string, description string)
```

To run this application we can use this command:
```
go run cmd/grpc-server/main.go
```
To make the request it's only install `grpcurl` and run the commands in `client.bash` if do you prefer you can use `evans` to make the requests


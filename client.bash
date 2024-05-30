## Call grpc service
### List all the services
grpcurl -plaintext localhost:50051 list
### Describe the services 
grpcurl -plaintext localhost:50051 describe pb.CategoryService
### Call the list Categories service
grpcurl -plaintext -d '{}' localhost:50051 pb.CategoryService/ListCategories
### Call the get Category service
grpcurl -plaintext -d '{}' localhost:50051 pb.CategoryService/CreateCategory 
### Create Category
grpcurl -plaintext -d '{"name": "New Category", "description": "This is a new category"}' localhost:50051 pb.CategoryService/CreateCategory
### Get one specific category
grpcurl -plaintext -d '{"id": "0e741e3b-fbd3-4809-8b4f-c02b3782ccca"}' localhost:50051 pb.CategoryService/GetCategory

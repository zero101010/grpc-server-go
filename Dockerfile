# Use the official Golang image as base
FROM golang:1.21 AS builder

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go mod and sum files
COPY . .

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

RUN go build cmd/grpc-server/main.go

CMD ["./main"]
# # Start a new stage from scratch
# FROM scratch

# # Set the Current Working Directory inside the container
# WORKDIR /app

# # Copy the Pre-built binary file from the previous stage
# COPY --from=builder /app/main .

# # Command to run the executable
# CMD ["./main"]
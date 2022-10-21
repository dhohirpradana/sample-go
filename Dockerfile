FROM golang:1.16-alpine
WORKDIR /app

COPY . .
RUN go mod download

RUN go build -o /entry_point server.go

CMD ["/entry_point"]

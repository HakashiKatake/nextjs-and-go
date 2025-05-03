FROM golang:1.24-alpine3.20

WORKDIR /app

COPY . .

#Download dependencies
RUN go get -d -v ./...

#Build the app
RUN go build -o api .

#Expose the port
EXPOSE 8080

#Run the app
CMD ["./api"]
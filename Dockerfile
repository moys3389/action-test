FROM golang:alpine AS build

WORKDIR /src

COPY . .

RUN go build -o action-test


FROM alpine

WORKDIR /app

COPY --from=build /src/action-test .

EXPOSE 8080

CMD [ "./action-test" ]

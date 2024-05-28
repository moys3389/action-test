FROM alpine

WORKDIR /app

COPY ./action-test .

EXPOSE 8080

CMD [ "./action-test" ]

FROM openjdk:8-alpine

ENV LC_ALL=C.UTF-8 
EXPOSE 8080

WORKDIR /app
RUN adduser -D app && \
    chown -R app /app 
USER app
COPY --chown=app . . 
RUN ./mvnw package
CMD java -jar ./target/docker-example-1.1.3.jar

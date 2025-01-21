FROM maven:3.8.5-openjdk-17 as builder

WORKDIR /app

COPY . .

RUN mvn clean install -DskipTests=true

RUN chmod -R 777 target

FROM maven:3.8.5-openjdk-17

WORKDIR /app

COPY --from=builder /app/target/crickbackend-0.0.1-SNAPSHOT.jar /app/newapp.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/newapp.jar"]


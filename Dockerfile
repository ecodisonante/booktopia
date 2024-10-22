FROM eclipse-temurin:21 AS buildstage 

RUN apt-get update && apt-get install -y maven

WORKDIR /app

COPY pom.xml .
COPY src /app/src
COPY wallet /app/wallet

ENV TNS_ADMIN=./wallet

RUN mvn clean package

FROM eclipse-temurin:21 

COPY --from=buildstage /app/target/booktopia-0.0.1-SNAPSHOT.jar /app/booktopia.jar

COPY wallet /app/wallet

ENV TNS_ADMIN=./wallet
EXPOSE 8080

ENTRYPOINT [ "java", "-jar","/app/booktopia.jar" ]




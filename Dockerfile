FROM openjdk:11.0-oracle
ARG JAR_FILE=build/libs/spring-gateway-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} gateway.jar
EXPOSE 8889
ENTRYPOINT ["java","-jar","/gateway.jar"]
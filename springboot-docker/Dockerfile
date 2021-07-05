FROM maven:3.6.1-jdk-8-alpine AS MAVEN_BUILD
WORKDIR /java
COPY ./ ./
RUN mvn clean package

FROM openjdk:8-jre-alpine3.9
COPY --from=MAVEN_BUILD /java/target/*.jar /demo.jar
CMD ["java", "-jar", "/demo.jar"]

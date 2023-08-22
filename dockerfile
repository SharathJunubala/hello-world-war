FROM maven:3.8.4-openjdk-11 AS builder
WORKDIR /app
COPY src ./src
COPY pom.xml .
RUN mvn clean package

FROM tomcat
COPY --from=build /app/target/file.war /usr/local/tomcat/webapps
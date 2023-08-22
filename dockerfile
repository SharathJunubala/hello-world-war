FROM maven:3.8.4-openjdk-11 AS builder
COPY src ./src
COPY pom.xml .
RUN mvn clean package
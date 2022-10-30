FROM adoptopenjdk/openjdk15:ubi
COPY target/*.jar app.jar
Expose 8080
CMD ["java", "-jar", "app.jar"]

# FROM eclipse-temurin:17-jdk-jammy
# COPY .mvn/ .mvn
# COPY mvnw pom.xml ./
# RUN ./mvnw dependency:resolve
# COPY src ./src
# CMD ["./mvnw", "spring-boot:run"]

# FROM openjdk:8-jdk-alpine
# MAINTAINER itcodescanner.com
# ARG JAR_FILE=target/*.jar
# COPY ${JAR_FILE} app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]
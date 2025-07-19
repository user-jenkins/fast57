FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY target/fast57.jar /app/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "fast57.jar"]

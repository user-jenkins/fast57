FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY . /app
RUN javac Main.java
RUN java Main
EXPOSE 8080
CMD ["java", "Main"]

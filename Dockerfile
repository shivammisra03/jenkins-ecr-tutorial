FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:8-jdk
COPY --from=build /home/app/target/shivam-ecr-demo.jar /usr/local/lib/shivam-ecr-demo.jar
VOLUME /ecr
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/local/lib/shivam-ecr-demo.jar"]
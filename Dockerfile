FROM maven:3.8.5-openjdk-17 AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:17-alpine
COPY --from=build /home/app/target/promo88-directory-0.0.1-SNAPSHOT.jar /usr/local/lib/
ENTRYPOINT ["java","-jar","promo88-directory-0.0.1-SNAPSHOT.jar"]
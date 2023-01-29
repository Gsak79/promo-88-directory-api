FROM maven:3.8.5-openjdk-17 AS maven
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN mvn clean package 

FROM openjdk:17-alpine
ARG JAR_FILE=promo88-directory-0.0.1-SNAPSHOT.jar
WORKDIR /opt/app
COPY --from=maven /usr/src/app/target/${JAR_FILE} /opt/app/
ENTRYPOINT ["java","-jar","promo88-directory-0.0.1-SNAPSHOT.jar"]
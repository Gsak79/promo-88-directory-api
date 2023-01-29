FROM openjdk:17-alpine
WORKDIR /usr/src/app
COPY ./target/promo88-directory-0.0.1-SNAPSHOT.jar /usr/src/app/
EXPOSE 8080
ENTRYPOINT ["java","-jar","promo88-directory-0.0.1-SNAPSHOT.jar"]
FROM java:8
FROM maven:3.5.4-alpine
RUN mvn clean package
VOLUME /tmp
ADD /target/test-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 888
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
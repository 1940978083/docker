FROM maven:3.5.4-alpine
ADD . /app
WORKDIR /app/
RUN mvn clean package
ADD test-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 888
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
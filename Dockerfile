FROM openjdk:8-jre-alpine

ENV WIREMOCK_VERSION 2.27.2

WORKDIR /wiremock
RUN wget https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-jre8-standalone/$WIREMOCK_VERSION/wiremock-jre8-standalone-$WIREMOCK_VERSION.jar
    
COPY map.json ./mappings/map.json
CMD java -jar wiremock-jre8-standalone-$WIREMOCK_VERSION.jar --port 5000

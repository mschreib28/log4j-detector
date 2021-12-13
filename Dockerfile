FROM openjdk:11
RUN mkdir -p /usr/src/log4j-detector
COPY ./log4j-detector-2021.12.13.jar /usr/src/log4j-detector
COPY ./Dockerfile /usr/src/log4j-detector
WORKDIR /usr/src/log4j-detector
ENTRYPOINT ["java", "-jar", "/usr/src/log4j-detector/log4j-detector-2021.12.13.jar"]

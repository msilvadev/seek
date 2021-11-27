FROM adoptopenjdk/openjdk11
VOLUME /tmp
ARG JAR_FILE=build/libs/*-all.jar
COPY ${JAR_FILE} seek.jar
#COPY src/main/resources/logback-dev.xml /tmp/logback.xml
#CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","-Dlogging.config=/tmp/logback.xml","/gpi-manager-1.0.0.jar"]
#CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","-Dlogging.config=/tmp/logback.xml","/seek.jar"]
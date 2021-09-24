FROM java:8

EXPOSE 8080

ADD target/dockerapidemo.jar dockerapidemo.jar

ENTRYPOINT ["java","-jar","dockerapidemo.jar"]
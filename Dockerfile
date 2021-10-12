FROM java:8

EXPOSE 8088

ADD target/dockerapidemo.jar dockerapidemo.jar

ENTRYPOINT ["java","-jar","dockerapidemo.jar"]
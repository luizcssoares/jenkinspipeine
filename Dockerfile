FROM java:8

EXPOSE 8080

ADD C:/WINDOWS/system32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/pipeline-maven-git/target/dockerapidemo.jar dockerapidemo.jar

ENTRYPOINT ["java","-jar","dockerapidemo.jar"]
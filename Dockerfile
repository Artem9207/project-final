FROM openjdk:17
WORKDIR /tmp
COPY target/jira-1.0.jar/ /tmp
COPY resources ./resources
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "jira-1.0.jar", "--spring.profiles.active=prod"]
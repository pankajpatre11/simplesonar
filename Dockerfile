FROM openjdk:8
ADD target/*.war app.war
ENTRYPOINT ["java", "-jar","app.war"]
EXPOSE 8085

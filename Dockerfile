FROM openjdk:17-alpine

# Refer to Maven build -> finalName
ARG JAR_FILE=target/uniovi-avib-morphingprojections-gateway-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /opt/app
 
# spring boot profile
ARG ARG_SPRING_PROFILES_ACTIVE
ENV SPRING_PROFILES_ACTIVE=$ARG_SPRING_PROFILES_ACTIVE

COPY ${JAR_FILE} app.jar
 
EXPOSE 8080

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
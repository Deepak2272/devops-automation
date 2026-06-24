# Lightweight JRE base image for running a pre-built Spring Boot JAR
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Copy the pre-built JAR into the image
# Update the filename below to match what's actually in build/libs after your Gradle build
COPY build/libs/*.jar devops-automation-0.0.1.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "devops-automation-0.0.1.jar"]
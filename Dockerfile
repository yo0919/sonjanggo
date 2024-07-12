# Use Amazon Corretto JDK 17 as a base image
FROM amazoncorretto:17

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/sonjango-0.0.1-SNAPSHOT.jar /app/sonjango.jar

# Expose the port the application runs on
EXPOSE 8080

# Set the timezone and run the application
CMD ["java", "-Duser.timezone=Asia/Seoul", "-jar", "/app/sonjango.jar"]

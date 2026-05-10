# Use lightweight Java 17 image
FROM eclipse-temurin:17-jre

# Set working directory
WORKDIR /app

# Copy built jar
COPY target/*.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run application
ENTRYPOINT ["java", "-jar", "app.jar"]
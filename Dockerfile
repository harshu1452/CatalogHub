# Use official Java 17 image
FROM eclipse-temurin:17-jre

# Set working directory
WORKDIR /app

# Copy the built jar into the container
COPY target/cataloghub-1.0.0.jar app.jar

# Expose port (Render will set PORT env var)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]

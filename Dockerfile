# --------- Build stage ---------
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copy pom.xml and source code
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# --------- Run stage ---------
FROM eclipse-temurin:17-jre
WORKDIR /app

# Copy jar from build stage
COPY --from=build /app/target/cataloghub-1.0.0.jar app.jar

# Expose port (Render sets PORT env var)
EXPOSE 8085

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]

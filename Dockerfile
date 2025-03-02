# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project files to the container
COPY . /app

# Build the application
RUN ./mvnw package -DskipTests

# Expose port 8080
EXPOSE 8080

# Run the Spring mvc application
ENTRYPOINT ["java", "-jar", "target/test_spring_mvc.jar"]

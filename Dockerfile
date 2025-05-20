# Use a base image with Java
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app


# Install mysql-client so wait-for-db.sh works
RUN apt-get update && apt-get install -y default-mysql-client

# Copy your JAR file into the container
COPY target/todo-demo.jar app.jar

# Copy the wait-for-db script
COPY wait-for-db.sh .

# Make the script executable
RUN chmod +x wait-for-db.sh

# Run the wait-for-db script as the entrypoint
ENTRYPOINT ["./wait-for-db.sh"]

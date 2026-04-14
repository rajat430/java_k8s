FROM maven:3.9.6-eclipse-temurin-17 AS build
COPY . .
RUN mvn clean package

FROM maven:3.9.6-eclipse-temurin-17
# USER app
WORKDIR /opt/app
COPY --from=build target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "/opt/app/app.jar"]
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD curl -f http://localhost:8080/health || exit 1








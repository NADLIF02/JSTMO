# Use the official SonarQube image as a base
FROM sonarqube:lts-community

# Set environment variable to disable Elasticsearch bootstrap checks
ENV SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true

# Copy custom configuration files (assuming you have them in the 'conf' directory of your project)
COPY conf/sonar.properties /opt/sonarqube/conf/sonar.properties

# Expose the default SonarQube port
EXPOSE 9000

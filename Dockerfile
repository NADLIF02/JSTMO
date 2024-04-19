# Use the official SonarQube image from Docker Hub
FROM sonarqube:latest

# Expose the SonarQube port on the container
EXPOSE 9000

# Start SonarQube server
CMD ["/opt/sonarqube/bin/run.sh"]

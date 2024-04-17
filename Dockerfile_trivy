# Using Ubuntu as the base image
FROM ubuntu:latest

# Install required packages
RUN apt-get update && \
    apt-get install -y wget apt-transport-https gnupg lsb-release

# Add Trivy's GPG key to the keyring
RUN wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | tee /usr/share/keyrings/trivy.gpg > /dev/null

# Add Trivy's repository
RUN echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | tee -a /etc/apt/sources.list.d/trivy.list

# Update package lists and install Trivy
RUN apt-get update && \
    apt-get install -y trivy

# Set the Trivy server to listen on all network interfaces
CMD ["trivy", "server", "--listen", "0.0.0.0:4954"]

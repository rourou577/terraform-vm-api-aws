#!/bin/bash
# install.sh

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y docker.io git

# Enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Clone the API repository
git clone https://github.com/rourou577/terraform-vm-api-aws.git /home/ubuntu/api

# Navigate to API directory and build the Docker image
cd /home/ubuntu/api
sudo docker build -t my-api .

# Run the API container
sudo docker run -d -p 8080:8080 my-api

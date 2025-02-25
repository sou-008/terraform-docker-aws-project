# Flask and Express Deployment with Docker and AWS
This project demonstrates how to deploy two web applications (Flask and Express) as Docker containers on AWS using services like ECR, ECS, VPC, and ALB. Terraform is used to automate the infrastructure setup.

## Objective
<br>Deploy Flask and Express as Docker containers using AWS services:

- ECR: To store Docker images.
- ECS: To run the Docker containers.
- VPC: To provide network isolation for the resources.
- ALB: To route traffic to the appropriate services.

## Technologies Used
- Flask: Python-based web framework.
- Express: Node.js-based web framework.
- Docker: Containerization of applications.
- Terraform: Infrastructure as Code (IaC) tool for provisioning AWS resources.
- AWS Services: ECR, ECS, VPC, and ALB.

## Infrastructure Overview
- ECR (Elastic Container Registry): Stores the Docker images for both Flask and Express.
- ECS (Elastic Container Service): Manages the deployment of the Docker containers.
- VPC (Virtual Private Cloud): Configures network settings for the application.
- ALB (Application Load Balancer): Routes HTTP requests to the appropriate ECS services based on the URL.


## Steps to Deploy
1. Set up ECR Repositories
<br>We will create two Elastic Container Registry (ECR) repositories: one for the Flask app and another for the Express app.

2. Build and Push Docker Images
- Build Docker images for both Flask and Express.
- Push these images to their respective ECR repositories.

3. Set up the VPC
<br> A Virtual Private Cloud (VPC) will be created, which includes:

- Subnets
- Route tables
- Security groups

4. Set up ECS Cluster
<br>An ECS cluster will be set up using ECS Fargate to deploy the applications (Flask and Express).

5. Provision Application Load Balancer (ALB)
<br>The ALB will be configured to route incoming requests to the correct ECS service (Flask or Express).

6. Accessing the Applications
<br>After the deployment, the Flask and Express applications will be accessible via the following URLs:

## Flask Application URL:
<br>http://<FLASK_ALB_DNS_NAME>

## Express Application URL:
<br>http://<EXPRESS_ALB_DNS_NAME>

## Expected Outcomes
- Terraform configuration files for provisioning AWS resources (ECR, ECS, VPC, ALB).
- Flask and Express Docker images uploaded to ECR.
- ECS services deployed and accessible through the ALB.


## Conclusion
<br>This setup deploys Flask and Express applications as Docker containers on AWS. The infrastructure is provisioned automatically using Terraform, and the applications are exposed through an Application Load Balancer for easy access.
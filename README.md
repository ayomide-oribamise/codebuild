# Deploying the Coworking Space Service with Kubernetes, Helm, and AWS CodeBuild

## Overview

This README provides detailed instructions for deploying the Coworking Space Service using Kubernetes, Helm, AWS CodeBuild, and other AWS services. Follow the steps below to set up the environment, configure the database, enable continuous integration with AWS CodeBuild, and deploy the service.

## Setup

### 1. Clone Repository
Clone this repository to your local computer to get started.

### 2. Create an EKS Cluster
Ensure that your AWS CLI is configured correctly and has the necessary IAM permissions.
Install eksctl and use it to create an EKS cluster.
Update the Kubeconfig to configure access to the EKS cluster.
Configure a Database for the Service

### 3. Install PostgreSQL with Helm
Add the cetic repository and update it.
Install PostgreSQL with Helm, passing the necessary parameters.
Verify that the pod is running and create tables and load data into the PostgreSQL database.
Set up CI with AWS CodeBuild

### 4. Create an ECR Repository
Create an ECR repository where Docker images will be stored.

### 5. Create a CodeBuild Project
Set up environment variables and their values.
Push Dockerfile, buildspec.yml, and the analytics folder to your repository.
AWS CodeBuild will build and push an image to your ECR repo. Grab the image URI for later use.
Deploy the Application

### 6. Deploy the Application
Create a ConfigMap to store plaintext variables.
Store the DB_PASSWORD as a secret.
Deploy the application by running kubectl apply -f coworking.yaml.
Conclusion

Follow these instructions to successfully deploy the Coworking Space Service using Kubernetes, Helm, AWS CodeBuild, and other AWS services.






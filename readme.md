# Terraform AWS Multi-Environment Infrastructure (Dev / Staging / Prod)

This project demonstrates how to design, build, and manage a **multi-environment AWS infrastructure** using **Terraform (Infrastructure as Code)**.  
A single reusable codebase is used to deploy isolated environments for **Development, Staging, and Production** following real-world DevOps practices.

---

## 📌 Why This Project

Modern applications require separate environments to ensure:

- Safe development and testing  
- Stable staging validation  
- Reliable production deployment  

This project shows how Terraform can automate the creation of consistent cloud environments with minimal manual effort.

---

## 🏗 Architecture Overview

Each environment contains:

- VPC with public & private subnets  
- EC2 instance  
- Security Groups  
- S3 bucket (per environment)  
- Optional DynamoDB table for state locking  

Instance sizing per environment:

- Dev → t2.micro  
- Staging → t2.small  
- Prod → t2.medium  

*(Attach architecture diagram image here)*

---

## 🛠 Technology Stack

- Terraform  
- AWS EC2  
- AWS VPC  
- AWS S3  
- AWS DynamoDB  
- Git & GitHub  
- Linux  

---

## 📂 Repository Structure
terraform-aws-multi-env-infra/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── provider.tf
├── vpc.tf
├── ec2.tf
├── s3.tf
└── README.md


---

## ⚙ Prerequisites

- Terraform >= 1.5  
- AWS CLI configured  
- AWS Account  

Check versions:

```bash
terraform -version
aws configure

# PearlThoughts_Assignment
# 🚀 Medusa ECS Fargate Deployment (Terraform)

This Terraform project deploys the **Medusa open-source headless commerce backend** to **AWS ECS using Fargate**, without using an ALB or RDS — making it free-tier friendly.

---

## 📦 What This Does

- Creates an ECS Cluster with a Fargate service
- Builds a Docker image of Medusa (via GitHub Actions) and pushes to Amazon ECR
- Deploys the container with **SQLite DB** and exposes **port 9000**
- Public IP is assigned 
- GitHub Actions automatically triggers deployment on push

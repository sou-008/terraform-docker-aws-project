# AWS Region
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-north-1"
}

# ECR Repository Names
variable "flask_ecr_repo" {
  description = "Flask ECR Repository Name"
  type        = string
  default     = "flask-backend-repo"
}

variable "express_ecr_repo" {
  description = "Express ECR Repository Name"
  type        = string
  default     = "express-frontend-repo"
}

# VPC Configuration
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the Subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# Security Group Name
variable "security_group_name" {
  description = "Security Group Name"
  type        = string
  default     = "ecs-sg"
}

# ALB Configuration
variable "alb_name" {
  description = "Name for the Application Load Balancer"
  type        = string
  default     = "ecs-alb"
}
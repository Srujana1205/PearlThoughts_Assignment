variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the ECS cluster"
  default     = "medusa-cluster"
}

variable "task_cpu" {
  description = "CPU units for Fargate task"
  default     = "512"
}

variable "task_memory" {
  description = "Memory for Fargate task"
  default     = "1024"
}

variable "container_port" {
  description = "Port exposed by the Medusa container"
  default     = 9000
}

output "ecs_cluster_name" {
  value       = aws_ecs_cluster.medusa_cluster.name
  description = "ECS cluster name"
}

output "ecs_service_name" {
  value       = aws_ecs_service.medusa_service.name
  description = "ECS service name"
}

output "task_definition_arn" {
  value       = aws_ecs_task_definition.medusa_task.arn
  description = "ECS task definition ARN"
}

output "subnet_id" {
  value       = aws_subnet.public.id
  description = "ID of the public subnet used"
}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}

output "medusa_access_info" {
  description = "Instructions to access Medusa backend"
  value       = <<EOT
Access your Medusa app using the public IP of the ECS Task on port 9000.

Steps:
1. Go to AWS Console → ECS → Clusters → medusa-cluster → Tasks
2. Click the running task.
3. Under 'Networking', get the public IP.
4. Open: http://<public-ip>:9000/store/products
EOT
}

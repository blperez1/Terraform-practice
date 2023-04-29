output "instance_id" {
  description = "Id of EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_id" {
  description = "Public IP address of EC2 Instance"
  value       = aws_instance.app_server.public_ip
}
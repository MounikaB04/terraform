output "ec2_complete_id" {
  description = "The ID of the instance"
  value       = aws_instance.ec2.id
}

output "ec2_complete_arn" {
  description = "The ARN of the instance"
  value       = aws_instance.ec2.arn
}

output "private_ip" {
  value = aws_instance.ec2.private_ip
}
//child output.tf

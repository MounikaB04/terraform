output "ec2_complete_id" {
  description = "The ID of the instance"
  value       = module.example.ec2_complete_id
}

output "ec2_complete_arn" {
  description = "The ARN of the instance"
  value       = module.example.ec2_complete_arn
}
output "private_ip" {
  value = module.example.private_ip
}

output "bucket_names" {
 value = [for b in data.aws_s3_bucket.existing_buckets : b.bucket]
}

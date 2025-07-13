data "aws_s3_bucket" "existing_buckets" {
 for_each = toset(var.s3_bucket)
 bucket = each.value
}


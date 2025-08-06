resource "aws_s3_bucket" "example" {
  bucket = "annapurna-terraform-bucket1001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
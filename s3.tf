resource "aws_s3_bucket" "example" {
  bucket = "mounika-terraform-bucket101"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
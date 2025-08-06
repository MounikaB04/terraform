resource "aws_s3_bucket" "example" {
  bucket = "vinay101-terraform-bucket101"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
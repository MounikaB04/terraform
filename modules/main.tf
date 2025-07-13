resource "aws_instance" "ec2" {
  ami           = var.ami  
  instance_type = "t2.micro"

  tags = {
    Name = "ec2"
    created_by = var.creator
  }
}
//child main.tf

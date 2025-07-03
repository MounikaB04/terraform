resource "aws_instance" "ec2" {
  ami           = "ami-0c5d10c64897b15df"
  instance_type = "t2.micro"

  tags = {
    Name = "ec2"
    
  }
}

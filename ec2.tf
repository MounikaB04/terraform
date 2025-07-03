resource "aws_instance" "ec2" {
  #ami           = "ami-0c5d10c64897b15df"
  ami = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"

  tags = {
    Name = "ec2"
    
  }
}

variable "ami" {
  type    = string
  default = "ami-05ffe3c48a9991133"
}

variable "creator" {
  type    = string
  default = "mounika"
}

variable "s3_bucket" {
  description = "List of S3 bucket names"
  type        = list(string)
  default = [ "mounika-terraform-bucket101"]
}






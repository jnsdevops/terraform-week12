variable "ami" {
 description = "Amazon machine image"
 type = string
 default = "ami-0e8a34246278c21e4"
}

variable "region" {
  description = "Amazon region"
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "Name" {
  default = "Dev-server"
}
variable "ec2_count" {
  default = "1"
}

variable "ami_id" {}

variable "subnet_id" {}

variable "instance_type" {
  default = "t2.micro"
}

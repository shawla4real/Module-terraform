provider "aws" {

  region = "us-east-1"

   }

data "aws_availability_zones" "available" {
                  state = "available"
                }

module "solavpc" {
  source = "/home/ec2-user/terraform-app/modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  tenancy = "default"
  vpc_id = "${module.solavpc.vpc_id}"
  subnet_cidr = "10.0.1.0/24"
}
module "solaec2" {
  source = "/home/ec2-user/terraform-app/modules/ec2"
  ec2_count = 1
  instance_type = "t2.micro"
  subnet_id = "${module.solavpc.subnet_id}"
  ami_id = "ami-000db10762d0c4c05"
 }



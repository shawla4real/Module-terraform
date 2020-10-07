resource "aws_vpc" "modterraform" {

cidr_block = "${var.vpc_cidr}"
instance_tenancy = "${var.tenancy}"


tags = {

Name = "modterraform"

   }
}

resource "aws_subnet" "publicsub" {

vpc_id = "${var.vpc_id}"

cidr_block = "${var.subnet_cidr}"


map_public_ip_on_launch = true

}


output"vpc_id" {
value = "${aws_vpc.modterraform.id}"


}

output"subnet_id" {
value = "${aws_subnet.publicsub.id}"


}


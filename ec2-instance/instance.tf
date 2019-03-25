resource "aws_instance" "new_instance" {
ami	= "${lookup(var.AMIS, var.AWS_REGION)}"
instance_type = "t2.micro"
tags {
 name = "Terraform"
 os   = "centos"
 }
}

# Availability Zones Data Source
data "aws_availability_zones" "my_azones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

# Resource: aws instance
resource "aws_instance" "myec2vm" {
	ami			= data.aws_ami.amazon-ubuntu.id
#	instance_type		= var.instance_type
	instance_type		= var.instance_type_list[1]
#	instance_type		= var.instance_type_map["prod"]
	key_name		= var.instance_keypair
	vpc_security_group_ids	= [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
#	count			= 2
	# Create EC2 Instance in all Availability Zones of a VPC
	for_each		= toset(data.aws_availability_zones.my_azones.names)
	availability_zone	= each.key
	# You can also use each.value because for list items each.key == each.value
	tags			= {
		Name		= "For_Each-Demo-${each.value}"
	}
}

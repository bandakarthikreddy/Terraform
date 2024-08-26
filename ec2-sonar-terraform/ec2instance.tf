resource "aws_instance" "myec2vm" {
	ami			= data.aws_ami.amazon-ubuntu.id
	instance_type		= var.instance_type
#	instance_type		= var.instance_type_list[1]
#	instance_type		= var.instance_type_map["prod"]
	user_data		= file("${path.module}/sonar.sh")
	key_name		= var.instance_keypair
	vpc_security_group_ids	= [aws_security_group.vpc-server.id]
	tags			= {
		Name		= "SONARQUBE_SERVER_TERRAFORM"
	}
}

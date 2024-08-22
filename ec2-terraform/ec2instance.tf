# Resource: aws instance
resource "aws_instance" "myec2vm" {
	ami			= data.aws_ami.amazon-ubuntu.id
	instance_type		= var.instance_type
	key_name		= var.instance_keypair
	vpc_security_group_ids	= [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]

	tags			= {
		Name		= "EC2 Demo"
	}
}

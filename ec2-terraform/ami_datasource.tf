data "aws_ami" "amazon-ubuntu" {
	most_recent		= true
	owners			= ["amazon"]
	
	filter {
		name		= "name"
		values		= ["ubuntu/images/hvm-ssd/ubuntu-*-20.04-amd64-server-*"]
	}

	filter {
		name		= "root-device-type"
		values		= ["ebs"]
	}

	filter {
		name		= "virtualization-type"
		values		= ["hvm"]
	}

	filter {
		name		= "architecture"
		values		= ["x86_64"]
	}
}

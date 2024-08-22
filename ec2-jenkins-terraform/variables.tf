variable "aws_region" {
	description		= "Region in which AWS EC2 Instance to be created"
	type			= string
	default			= "ap-south-1"
}

variable "instance_type" {
	description		= "EC2 Instance Type"
	type			= string
	default			= "t2.medium"
}

variable "instance_keypair" {
	description		= "EC2 Key Pair which need to be associated with the EC2 Instance"
	type			= string
	default			= "terraform-key"
}

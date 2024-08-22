# AWS Region
variable "aws_region" {
	description	= "Region in which AWS resources to be created"
	type		= string
	default		= "ap-south-1"
}

# AWS Instance Type
variable "instance_type" {
	description	= "EC2 Instance Type"
	type		= string
	default		= "t2.micro"
}

# AWS Key Pair
variable "instance_keypair" {
	description	= "AWS EC2 Key pair which need to associated with EC2 Instance"
	type		= string
	default		= "terraform-key"
}

# AWS EC2 Instance Type_List
variable "instance_type_list" {
	description	= "EC2 Instance Type"
	type		= list(string)
	default		= ["t2.micro", "t2.small", "t2.large"]
}

# AWS EC2 Instance Type_Map
variable "instance_type_map" {
	description	= "EC2 Instance Map"
	type		= map(string)
	default		= {
		"dev"	= "t2.micro"
		"qa"	= "t2.small"
		"prod"	= "t2.large"
}
}

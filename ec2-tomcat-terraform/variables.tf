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
	default		= "t2.medium"
}

# AWS Key Pair
variable "instance_keypair" {
	description	= "AWS EC2 Key pair which need to associated with EC2 Instance"
	type		= string
	default		= "terraform-key"
}
/*
# AWS Credentials
variable "aws_access_key" {
	description	= "AWS Access Key"
	type		= string
	sensitive	= true
}
variable "aws_secret_key" {
        description     = "AWS Access Key"
        type            = string
        sensitive       = true
}
*/

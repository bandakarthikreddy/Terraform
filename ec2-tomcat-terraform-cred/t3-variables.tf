# Declaring the AWS Region
variable "aws_region" {
	description	= "Region in which resources need to be created"
	type		= string
	default		= "ap-south-1"
	}

# Declaring the AWS Instance Type
variable "aws_instance_type" {
	description	= "EC2 Instance Type"
	type		= string
	default		= "t2.medium"
	}

# Declaring the AWS Key Pair
variable "instance_keypair" {
	description	= "AWS Key Pair which need to associated to the EC2 Instance"
	type		= string
	default		= "terraform-key"
	}

# Declaring the Tomcat Manager Credentials
variable "tomcat_username" {
	description	= "Tomcat - Username"
	type		= string
	sensitive	= true
	}
variable "tomcat_password" {
        description     = "Tomcat - Password"
        type            = string
        sensitive       = true
        }
# Declaring the Tomcat Admin Credentials
variable "admin_username" {
        description     = "Admin - Username"
        type            = string
        sensitive       = true
        }
variable "admin_password" {
        description     = "Admin-Password"
        type            = string
        sensitive       = true
        }

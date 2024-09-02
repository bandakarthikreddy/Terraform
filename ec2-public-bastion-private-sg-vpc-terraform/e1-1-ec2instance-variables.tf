# AWS EC2 INSTANCE TERRAFORM VARIABLES
# EC2 INSTANCE VARIABLE

## AWS EC2 INSTANCE TYPE
variable "aws_instance_type" {
	description	= "EC2 INSTANCE TYPE"
	type		= string
	}
## AWS EC2KEY PAIRE
variable "aws_instance_key_pair" {
        description     = "AWS KEY PAI WHICH NEED TO BE ASSOICATED TO THE EC2 INSTANCE"
        type            = string
        }
## AWS EC2 PRIVATE INSTANCE COUT
	variable "aws_private_instance_count" {
        description     = "AWS PRIVATE INSTANCE COUNT"
        type            = number
        }


# Input Variables
# AWS REGION
variable "aws_region" {
	description	= "REGION IN WHICH AWS RESOURCES TO BE CREATED"
	type		= string
	}

# Environment
variable "environment" {
	description	= "Environment Variables used as a Prefix"
	type		= string
	}

# Business Division
variable "business_division" {
	description	= "Business Division in the Larget Organization this Infrastructure Belongs"
	type		= string
	}

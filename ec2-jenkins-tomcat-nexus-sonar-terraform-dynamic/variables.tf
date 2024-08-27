# AWS Region
variable "aws_region" {
	description	= "Region in which AWS resources to be created"
	type		= string
	default		= "ap-south-1"
}

#AWS KEY Pair
variable "instance_keypair" {
	description	= "AWS EC2 Key pair which need to associated with EC2 Instance"
	type		= string
	default		= "terraform-key"
}

# AWS Instance Type Map
variable "instance_type_map" {
    description = "AWS Instance Type Map"
    type        = map(string)
    default     = {
        "jenkins" = "t2.medium"
        "nexus"   = "t2.large"
        "tomcat"  = "t2.medium"
        "sonar"   = "t2.large"
    }
}

#Local user_data
locals {
    user_data_map = {
        "jenkins" = "${path.module}/jenkins.sh"
        "nexus"   = "${path.module}/nexus.sh"
        "tomcat"  = "${path.module}/tomcat.sh"
        "sonar"   = "${path.module}/sonar.sh"
    }
}

variable "instance_key" {
    description = "Key to select the instance type and user data script"
    type        = string
}

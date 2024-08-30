# AWS EC2 INSTANCE TERRAFORM VARIABLES
# EC2 INSTANCE VARIABLE

## AWS EC2 INSTANCE TYPE
variable "aws_instance_type" {
        description     = "EC2 INSTANCE TYPE"
        type            = string
        default         = "t2.micro"
        }
## AWS EC2 KEY PAIR
variable "aws_instance_key_pair" {
        description     = "AWS Key Pair which need to be assoicated to the EC2 Instance"
        type            = string
        default         = "terraform-key"
        }
## AWS EC2 PRIVATE INSTANCE COUNT
variable "aws_private_instance_count" {
        description     = "AWS PRIVATE INSTANCE COUNT"
        type            = number
        default         = 1
        }

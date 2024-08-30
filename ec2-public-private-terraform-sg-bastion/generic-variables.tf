# Input Variables

# AWS Region
variable "aws_region" {
        description     = "Region in which AWS Resources to be created"
        type            = string
        default         = "ap-south-1"
        }

# Environment
variable "environment" {
        description     = "Environment Variables used as a Prefix"
        type            = string
        default         = "dev"
        }

# Business Division
variable "business_division" {
        description     = "Business Division in the large Organization this Infrastructure Belongs"
        type            = string
        default         = "karthik"
        }

# VPC INPUT VARIABLES
# VPC NAME
variable "vpc_name" {
        description     = "VPC NAME"
        type            = string
        default         = "vpc-karthik"
        }
# VPC CIDR BLOCK
variable "vpc_cidr_block" {
        description     = "VPC CIDR BLOCK"
        type            = string
        default         = "10.0.0.0/16"
        }
# VPC AVAILABILITY ZONES
variable "vpc_availability_zones" {
        description     = "VPC AVAILABILITY ZONES"
        type            = list(string)
        default         = ["ap-south-1a", "ap-south-1b"]
        }
# VPC PRIVATE SUBENTS
variable "vpc_private_subnets" {
        description     = "VPC PRIVATE SUBNETS"
        type            = list(string)
        default         = ["10.0.1.0/24", "10.0.2.0/24"]
        }
# VPC PUBLIC SUBNETS
variable "vpc_public_subnets" {
        description     = "VPC PUBLIC SUBNETS"
        type            = list(string)
        default         = ["10.0.101.0/24", "10.0.102.0/24"]
        }
# VPC ENABLE NAT GATEWAY
variable "vpc_enable_nat_gateway" {
        description     = "VPC ENABLE NAT GATEWAY"
        type            = bool
        default         = true
        }
# VPC ENABLE SINGLE NAT GATEWAY
variable "vpc_enable_single_nat_gateway" {
        description     = "VPC ENABLE SINGLE NAT GATEWAY"
        type            = bool
        default         = true
        }
/*
# VPC DATABASE SUBENTS
variable "vpc_database_subnets" {
        description     = "VPC DATABSE SUBENTS"
        type            = list(string)
        default         = ["10.0.151.0/24","10.0.152.0/24"]
        }
# VPC CREATE DATABASE SUBENT GROUP (TRUE OR FALSE)
variable "vpc_create_database_subnet_group" {
        description     = "VPC CREATE DATABASE SUBNET GROUP"
        type            = bool
        default         = true
        }
# VPC CREATE DATABASE SUBNET ROUTE TABLE (TRUE OR FALSE)
variable "vpc_create_database_subnet_route_table" {
        description     = "VPC CREATE DATABASE SUBNET ROUTE TABLE"
        type            = bool
        default         = true
        }
*/

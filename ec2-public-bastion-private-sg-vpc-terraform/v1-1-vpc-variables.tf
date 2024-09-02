# VPC INPUT VARIABLES

# VPC BASIC DETAILS
variable "vpc_name" {
	description	= "THE VPC ID"
	type		= string
	}
# VPC CIDR BLOCK
variable "vpc_cidr_block" {
	description	= "VPC CIDR BLOCK"
	type		= string
	}
# VPC AVAILABILITY ZONES
variable "vpc_availability_zones" {
	description	= "VPC AVAILABILITY ZONES"
	type		= list(string)
	}
# VPC PRIVATE SUBNETS
variable "vpc_private_subnets" {
	description	= "VPC PRIVATE SUBNETS"
	type		= list(string)
	}
# VPC PUBLIC SUBNETS
variable "vpc_public_subnets" {
        description     = "VPC PUBLIC SUBNETS"
        type            = list(string)
        }
/*
# VPC DATABASE SUBNETS
variable "vpc_database_subnets" {
        description     = "VPC DATABASE SUBNETS"
        type            = list(string)
        }
*/
# VPC ENALBE NAT GATEWAY
variable "vpc_enable_nat_gateway" {
	description	= "VPC ENABLE NATGATEWAY"
	type		= bool
	}
# VPC ENABLE SINGLE NAT GATEWAY
variable "vpc_enable_single_nat_gateway" {
	description	= "VPC ENABLE SINGLE NATGATEWAY"
	type		= bool
	}
/*
# VPC CREATE DATABASE SUBNET GROUP (TRUE OR FALSE)
variable "vpc_create_database_subnet_group" {
	description	= "VPC CREATE DATABASE SUBNET GROUP"
	type		= bool
	}
# VPC CREATE DATABASE SUBNET ROUTE TABLE (TRUE OR FALSE)
variable "vpc_create_database_subnet_route_table" {
        description     = "VPC CREATE DATABASE SUBNET ROUTE TABLE"
        type            = bool
        }
*/

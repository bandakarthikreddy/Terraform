module "vpc" {
	source  = "terraform-aws-modules/vpc/aws"
	version = "5.13.0"
	
	# VPC BASIC DETAILS
	name		= "${local.name}-${var.vpc_name}"
	cidr		= var.vpc_cidr_block
	azs		= var.vpc_availability_zones
	public_subnets	= var.vpc_public_subnets
	private_subnets	= var.vpc_private_subnets

/*	
	# DATABASE SUBNETS
	database_subnets			= var.vpc_database_subnets
	create_database_subnet_group		= var.vpc_create_database_subnet_group
	create_database_subnet_route_table	= var.vpc_create_database_subnet_route_table
#	create_database_internet_gateway_route	= true
#	create_datase_nat_gateway		= true
*/

	# VPC DNS PARAMETERS
	enable_dns_hostnames	= true
	enable_dns_support	= true
 # ADDITIONAL TAGS TO SUBNETS
        public_subnet_tags      = {
                Type            = "Public Subnets"
        }

        private_subnet_tags     = {
                Type            = "Private Subnets"
        }

/*
        database_subnet_tags    = {
                Type            = "Database Subnets"
        }
*/
}

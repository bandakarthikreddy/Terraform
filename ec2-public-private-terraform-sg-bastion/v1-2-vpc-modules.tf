module "vpc" {
        source  = "terraform-aws-modules/vpc/aws"
        version = "5.13.0"

        # VPC BASIC DETAILS
        name    = "${local.name}-${var.vpc_name}"
#       cidr_block      = var.vpc_cidr_block
	azs	= var.vpc_availability_zones
        public_subnets  = var.vpc_public_subnets
        private_subnets = var.vpc_private_subnets

/*
        # DATABASE SUBENTS
        database_subnets        = var.vpc_database_subnets
        create_database_subnet_group    = var.vpc_create_database_subnet_group
        create_database_subnet_route_table      = var.vpc_create_database_subnet_route_table
#       create_database_internet_gateway_route  = true
#       create_database_nat_gateway_route       = true
*/

        # NAT GATEWAYS - OUTBOUND COMMUNICATION
        enable_nat_gateway      = var.vpc_enable_nat_gateway
        single_nat_gateway      = var.vpc_enable_single_nat_gateway

        # VPC DNS PARAMETERS
        enable_dns_hostnames    = true
        enable_dns_support      = true

        tags    = local.common_tags
        vpc_tags        = local.common_tags

        # ADDITIONAL TAGS TO SUBNETS
        public_subnet_tags      = {
                Type            = "Public Subnets"
        }

        private_subnet_tags      = {
                Type            = "Private Subnets"
        }

/*
        database_subnet_tags      = {
                Type            = "Database Subnets"
        }
*/
}

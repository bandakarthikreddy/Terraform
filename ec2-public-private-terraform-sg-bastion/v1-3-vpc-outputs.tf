# AWS VPC TERRAFORM OUTPUTS

# AWS VPC ID
output "vpc_id" {
        description     = "The ID of the VPC"
        value           = module.vpc.vpc_id
        }
# AWS VPC CIDR BLOCK
output "vpc_cidr_block" {
        description     = "VPC CIDR BLOCK"
        value           = module.vpc.vpc_cidr_block
        }
# AWS AVAILABILITY ZONES
output "azs" {
        description     = "VPC AVAILABILITY ZONES"
        value           = module.vpc.azs
        }
# AWS VPC PUBLIC SUBNETS IPS
output "vpc_public_subnets" {
        description     = "VPC PUBLIC SUBNETS IPS"
        value           = module.vpc.public_subnets
        }
# AWS VPC PRIVATE SUBNETS IPS
output "vpc_private_subnets" {
        description     = "VPC PUBLIC SUBNETS IPS"
        value           = module.vpc.private_subnets
        }
/*
# AWS VPC DATABASE SUBNETS IPS
output "vpc_database_subnets_ips" {
        description     = "VPC DATABASE SUBNETS IPS"
        value           = module.vpc.database_subnets
        }
*/
# AWS NAT GATEWAY IPS
output "nat_public_ips" {
        description     = " VPC NAT GATEWAY IPS"
        value           = module.vpc.nat_public_ips
        }

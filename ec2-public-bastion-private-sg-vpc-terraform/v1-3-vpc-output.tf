# AWS VPC TERRAFORM OUTPUTS
# AWS VPC ID
output "vpc_id" {
	description	= "THE ID OF THE VPC"
	value	= module.vpc.vpc_id
	}
# AWS VPC CIDR BLOCK
output "vpc_cidr_block" {
        description     = "OUTPUT OF VPC CIDR BLOCK"
        value   = module.vpc.vpc_cidr_block
        }
# AWS VPC AVAILABILITY ZONES
output "vpc_availability_zones" {
        description     = "AVAILABILITY ZONES OF THE VPC"
        value   = module.vpc.azs
	}
# AWS VPC PUBLIC SUNETS IPS
output "vpc_public_subnets" {
        description     = "VPC PUBLIC SUBNET IPS"
        value   = module.vpc.public_subnets
        }
# AWS VPC PRIVATE SUNETS IPS
output "vpc_private_subnets" {
        description     = "VPC PRIVATE SUBNET IPS"
        value   = module.vpc.private_subnets
        }
/*
# AWS VPC DATABASE SUNETS IPS
output "vpc_database_subnets" {
        description     = "VPC DATABASE SUBNET IPS"
        value   = module.vpc.database_subnets
        }
*/

# AWS VPC NAT GATEWAY ROUTE IDS
output "vpc_private_nat_gatway_route_ids" {
        description     = "VPC NAT GATEWAY ROUTE IDS"
        value   = module.vpc.private_nat_gateway_route_ids
        }
# AWS VPC NAT GATEWAY IPS
output "nat_public_ips" {
        description     = "VPC NAT GATEWAY PUBLIC IPS"
        value   = module.vpc.nat_public_ips
       }

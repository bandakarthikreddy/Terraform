# AWS SECURITY GROUP OUTPUTS TERRAFORM MODULE
# PUBLIC BASTION HOST SECURITY GROUP OUTPUTS
## PUBLIC BASTION SG VPC ID
output "public_bastion_sg_group_vpc_id" {
        description     = "VPC ID"
        value           = module.public_bastion_sg.security_group_vpc_id
        }
## PUBLIC BASTION SG GROUP ID
output "public_bastion_sg_group_group_id" {
        description     = "THE ID OF THE SECURITY GROUP"
        value           = module.public_bastion_sg.security_group_id
        }
## PUBLIC BASTION SG GROUP NAME
output "public_bastion_sg_group_group_name" {
        description     = "NAME OF THE SECURITY GROUP"
        value           = module.public_bastion_sg.security_group_name
        }
# PRIVATE HOST SECURITY GROUP VPC ID
output "private_sg_group_vpc_id" {
        description     = "VPC ID"
        value           = module.private_sg.security_group_vpc_id
        }
## PRIVATE SG GROUP ID
output "private_sg_group_group_id" {
        description     = "THE ID OF THE SECURITY GROUP"
        value           = module.private_sg.security_group_id
        }
## PUBLIC BASTION SG GROUP NAME
output "private_sg_group_group_name" {
        description     = "NAME OF THE SECURITY GROUP"
        value           = module.private_sg.security_group_name
        }

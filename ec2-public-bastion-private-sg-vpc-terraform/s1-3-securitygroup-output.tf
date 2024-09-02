# AWS SECURIYT GROUP OUTPUTS TERRAFORM MODULE
# PUBLIC BASTION HOST SECURITY GROUP OUTPUTS
## PUBLIC BASHTION SG VPC ID
output "public_bastion_sg_security_group_vpc_id" {
	description	= "VPC ID OF SECURITY GROUP FOR PUBLIC BASTION"
	value		= module.public_bastion_sg.security_group_vpc_id
	}
## PUBLIC BASTION SG ID
output "public_bastion_sg_security_group_id" {
        description     = "SECURITY ID FOR PUBLIC BASTION"
        value           = module.public_bastion_sg.security_group_id
        }
## PUBLIC BASTION SG NAME
output "public_bastion_sg_security_group_name" {
        description     = "NAME OF THE SECURITY GROUP"
        value           = module.public_bastion_sg.security_group_name
        }

# PRIVATE HOST SECURITY GROUP OUTPUTS
## PUBLIC BASHTION SG VPC ID
output "private_sg_security_group_vpc_id" {
        description     = "VPC ID OF SECURITY GROUP FOR PRIVATE"
        value           = module.private_sg.security_group_vpc_id
        }
## PUBLIC BASTION SG ID
output "private_sg_security_group_id" {
        description     = "SECURITY ID FOR PRIVATE"
        value           = module.private_sg.security_group_id
	}
## PUBLIC BASTION SG NAME
output "private_sg_security_group_name" {
        description     = "NAME OF THE SECURITY GROUP FOR PRIVATE"
        value           = module.private_sg.security_group_name
	}

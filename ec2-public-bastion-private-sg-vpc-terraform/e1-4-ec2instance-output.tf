# AWS EC2 INSTANCE OUTPUTS TERRAFORM
# PUBLIC EC2 INSTANCES - BASTION HOST

## EC2 BASTION PUBLIC INSTANCE IDS
output "ec2_public_instance_ids" {
	description	= "EC2 INSTANCE ID - PUBLIC"
	value		= module.ec2_public.id
	}

## EC2 BASTION PUBLIC IP
output "ec2_public_public_ip" {
        description     = "EC2 INSTANCE IP ADDRESS - PUBLIC"
        value           = module.ec2_public.public.ip
        }

## EC2 BASTION PUBLIC DNS
output "ec2_public_public_dns" {
	description	= "EC2 INSTANCE PUBLIC DNS"
	value		= module.ec2_public.public_dns

# PRIVATE EC2 INSTANCES - PRIVATE HOST

## EC2 PRIVATE INSTANCE IDS
output "ec2_private_instance_ids" {
        description     = "EC2 INSTANCE ID -PRIVATE"
        value           = module.ec2_private.id
        }

## EC2 PRIVATE PUBLIC IP
output "ec2_private_public_ip" {
        description     = "EC2 INSTANCE IP ADDRESS - PRIVATE"
        value           = module.ec2_private.private.ip
        }

## EC2 PRIVATE DNS
output "ec2_private_private_dns" {
        description     = "EC2 INSTANCE PRIVATE DNS"
        value           = module.ec2_private.private_dns

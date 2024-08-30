# AWS EC2 INSTANCE OUTPUTS TERRAFORM
# PUBLIC EC2 INSTANCEs - BASTION HOST

## EC2_BASTION_PUBLIC_INSTANCE_IDS
output "ec2_bastion_public_instance_ids" {
        description     = "EC2 Instance ID"
        value           = module.ec2_public.id
        }
## EC2_BASTION_PUBLIC_IP
output "ec2_bastion_public_ip" {
        description     = "Public IP address EC2 Instance"
        value           = module.ec2_public.public_ip
        }
# PRIVATE EC2 INSTANCES
## EC2 PRIVATE INSTANCE IDS
output "ec2_private_instance_ids" {
        description     = "Private Instance ID"
        value           = [for ec2_private in module.ec2_private: ec2_private.id]
        }
## EC2_PRIVATE_INSTANCE_IP
output "ec2_private_ip" {
        description     = "Private IP address EC2 Instance"
        value           = [for ec2_private in module.ec2_private: ec2_private.private_ip]
        }

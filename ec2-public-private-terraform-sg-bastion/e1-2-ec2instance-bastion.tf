# AWS EC2 PUBLIC BASTION INSTANCE TERRAFORM MODULE
module "ec2_public" {
        source  = "terraform-aws-modules/ec2-instance/aws"
        version = "5.7.0"

        name    = "${var.environment}-BastionHost"
#       instance_count  = 4
        instance_type   = var.aws_instance_type
        key_name        = var.aws_instance_key_pair
        subnet_id       = module.vpc.public_subnets[0]
        vpc_security_group_ids  = [module.public_bastion_sg.security_group_id]
        tags    = local.common_tags
        }

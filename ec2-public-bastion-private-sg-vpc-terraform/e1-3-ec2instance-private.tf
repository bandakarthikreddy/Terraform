# AWS EC2 PRIVATE INSTANCE TERRAFORM MODULE

module "ec2_private" {
        depends_on	= [ module.vpc ]
	source  = "terraform-aws-modules/ec2-instance/aws"
        version = "5.7.0"

        name    = "${var.environment}-PrivateHost"
	ami	= data.aws_ami.amazon-ubuntu.id
        instance_type   = var.aws_instance_type
        key_name        = var.aws_instance_key_pair
        vpc_security_group_ids      = [module.private_sg.security_group_id]
#       subnet_id       = module.vpc.public_subnets[0]
        tags    = local.common_tags
	user_data	= "${file("jenkins.sh")}"
	for_each	= toset(["0", "1"])
	subnet_id	= element(module.vpc.private_subnets, tonumber(each.key))
        }

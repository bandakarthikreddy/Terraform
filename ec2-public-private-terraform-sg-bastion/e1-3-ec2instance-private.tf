# AWS EC2 PRIVATE INSTANCE TERRAFORM MODULE
module "ec2_private" {
        source  = "terraform-aws-modules/ec2-instance/aws"
        version = "5.7.0"

        name    = "${var.environment}-Private"
        ami     = data.aws_ami.amazon-ubuntu.id
        instance_type   = var.aws_instance_type
        key_name        = var.aws_instance_key_pair
        user_data       = file("${path.module}/jenkins.sh")
        tags    = local.common_tags
        vpc_security_group_ids  = [module.private_sg.security_group_id]
        for_each        = toset(["0", "1"])
        subnet_id       = element(module.vpc.private_subnets, tonumber(each.key))
        }

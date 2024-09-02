# AWS EC2 SECUIRTY GROUP TERRAFORM MODULE
# SECURITY GROUP FOR PRIVATE EC2 INSTANCE
module "private_sg" {
        source  = "terraform-aws-modules/security-group/aws"
        version = "5.1.2"

	name	= "private-sg"
	description	= "Security Group with HTTP and SSH port open for entire VPC BLOCK (IPv4 CIDR), egress ports are all world open"
	vpc_id	= module.vpc.vpc_id
	# INGRESS RULES AND CIDR BLOCK
	ingress_rules	= ["ssh-tcp", "http-80-tcp"]
	ingress_cidr_blocks	= [module.vpc.vpc_cidr_block]
	# EGRESS RULES - ALL - ALL OPEN
	egress_rules	= ["all-all"]
	tags	= local.common_tags
	}
	

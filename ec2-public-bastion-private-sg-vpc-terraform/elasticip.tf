# CREATE ELASTIC IP FOR BASTION HSOT
# RESOURCE - DEPENDS ON META ARGUMENT
resource "aws_eip" "bastion_eip" {
	depends_on	= [module.vpc, module.ec2_public]
	tags		= local.common_tags
	instance	= module.ec2_public.id
	domain		= "vpc"
	
## LOCAL EXEC PROVISIONER: LOCAL _ EXEC PROVISIONER (DESTROY TIME - TRIGGERED DURING DELETION OF THE RESOURCES)
provisioner "local-exec" {
	command		= "echo Destroy time prov `date` >> destroy_time_prov.txt"
	working_dir	= "local-exec-output-files/"
	when		= destroy
#	onfailure	= continue
	}
}

resource "aws_eip_association" "bastion_eip_association" {
  instance_id = module.ec2_public.id
  allocation_id = aws_eip.bastion_eip.id
}

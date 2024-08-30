# Create Elastic IP for Bastion Host
# Resource - depends on Meta Argument
resource "aws_eip" "bastion_eip" {
        depends_on      = [module.vpc, module.ec2_public]
        tags    = local.common_tags
        instance        = module.ec2_public.id
        domain  = "vpc"

## Local Exec Provisioner: local-exec provisioner (Destroy Time - Triggered during deletion of Resources)
provisioner "local-exec" {
        command = "echo Destroy time prov date >> destroy-time-prov.txt"
        working_dir     = "local-exec-output-files/"
        when    = destroy
        # onfailure     = continue
        }
}

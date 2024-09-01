# Create a NULL RESOURCE and Provisioners
resource "null_resource" "name" {
        depends_on      = [aws_eip.bastion_eip]
        # Connection Block for Provisioners to connect to EC2 Instances
        connection      {
                type    = "ssh"
                host    = "aws_eip.bastion_eip.public_ip"
                user    = "ubuntu"
                password        = ""
                private_key     = file("private-key/terraform-key.pem")
        }

## REMOTE EXEC PROVISIONER: Using Remote Exec fix the private key permissions on Bastion Host
provisioner "remote-exec" {
        inline  = [
                "sudo chmod 400 /tmp/terraform-key.pem"
                ]
        }

## FILE PROVISIONER: Copies the terraform-key.pem file /tmp/terraform-key.pem
provisioner "file" {
        source  = "private-key/terraform-key.pem"
        destination     = "/tmp/terraform-key.pem"
        }

## LOCAL EXEC PROVISIONER: Local Exec Provisioner (Creation Time Provisioner - Triggered during Create Resource)
provisioner "local-exec" {
        command = "echo VPC created on date and VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
        working_dir     = "local-exec-output-files/"
        #on_failure     = continue
        }
/*
## LOCAL EXEC PROVISIONER: Local Exec Provisioner (Destroy Time Provisioner - Triggered during Create Resource)
provisioner "local-exec" {
        command = "echo Destroy time prov date >> destroy-time-prov.txt"
        working_dir     = "local-exec-output-files/"
        when    = destroy
        #on_failure     = continue
        }
*/
}

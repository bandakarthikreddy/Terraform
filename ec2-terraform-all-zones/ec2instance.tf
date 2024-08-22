# Resource: aws instance
resource "aws_instance" "myec2vm" {
    ami                     = data.aws_ami.amazon-ubuntu.id
    instance_type           = var.instance_type_list[1]
    key_name                = var.instance_keypair
    vpc_security_group_ids  = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]

    # Create EC2 Instance in all Availability Zones of a VPC
    for_each = {
        for az, details in data.aws_ec2_instance_type_offerings.my_ins_type :
        az => az if length(details.instance_types) != 0
    }

    tags = {
        Name = "For_Each-Demo-${each.key}"  # Using each.key to reflect the availability zone
    }
}

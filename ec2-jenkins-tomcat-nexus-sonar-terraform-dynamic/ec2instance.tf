resource "aws_instance" "myec2vm" {
    ami                     = data.aws_ami.amazon-ubuntu.id
    instance_type           = var.instance_type_map[var.instance_key]
    user_data               = file(local.user_data_map[var.instance_key])
    key_name                = var.instance_keypair
    vpc_security_group_ids  = [aws_security_group.vpc-server.id]

    tags = {
        Name = "${var.instance_key}"
    }

    lifecycle {
        create_before_destroy = true
    }
}

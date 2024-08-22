resource "aws_instance" "myec2vm" {
  ami                   = data.aws_ami.amazon-ubuntu.id
  instance_type         = var.instance_type
  user_data             = file("${path.module}/jenkins.sh")
  key_name              = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.sg-jenkins.id]

  tags = {
    Name = "Jenkins-Server"
  }
}

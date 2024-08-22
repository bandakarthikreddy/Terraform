output "instance_public_dns" {
  description = "Display the Instance Public DNS"
  value       = aws_instance.myec2vm.public_dns
}

output "instance_public_ip" {
  description = "Display the Instance Public IP"
  value       = aws_instance.myec2vm.public_ip
}

# Display output for Public IP
#output "instance_publicip" {
#       description             = "EC2 Instance Public IP"
#        value                   = aws_instance.myec2vm.public_ip
#}

# Display out for Public DNS
#output "instance_publicdns" {
#	description		= "EC2 Instance Public DNS"
#	value			= aws_instance.myec2vm.public_dns
#}

# Output - For Loop with list
output "for_output_list" {
	description		= "For loop with list"
	value			= [for instance in aws_instance.myec2vm: instance.public_dns]
}

# Output - For Loop with Map
output "for_output_map" {
	description		= "For loop with map"
	value			= {for instance in aws_instance.myec2vm: instance.id => instance.public_dns}
}

# Output - For Loop with Map Advanced
output "for_output_map_adv" {
	description		= "For loop with map advanced"
	value			= {for c, instance in aws_instance.myec2vm: c => instance.public_dns}
}

# Output Legacy Splat Operator (Legacy) - Returns the list
#output "legacy_splat_output" {
#	description		= "Legacy splat output"
#	value			= aws_instance.myec2vm.*.public_dns
#}

# Output Latest Generalised Splat Operator - Returns the list
#output "latest_legacy_splat_outlet" {
#	description		= "Latest Legacy splat output"
#	value			= aws_instance.myec2vm[*].public_dns
#}

# EC2 Instance Public IP with TOSET
output "instance_publicip" {
	description		= "EC2 Instance Public IP"
	value			= toset([for instance in aws_instance.myec2vm: instance.public_ip])
}

# EC2 Instance Public DNS with TOSET
output "instance_publicdns" {
        description             = "EC2 Instance Public IP"
        value                   = toset([for instance in aws_instance.myec2vm: instance.public_dns])
}

# EC2 Instance Public DNS with TOMAP
output "instance_publicdns2" {
	description		= "EC2 Instance Public DNS"
	value			= tomap({for az, instance in aws_instance.myec2vm: az => instance.public_dns})
}


output "availability_zones" {
  value = data.aws_availability_zones.my_azones.names
}

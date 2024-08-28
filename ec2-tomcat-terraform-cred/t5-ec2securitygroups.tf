resource "aws_security_group" "vpc-karthik" {
	name		= "vpc-karthik"
	description	= " Create of Security Group Karthik"

	ingress	{
		description	= "Allow Port 22"
		from_port	= 22
		to_port		= 22
		protocol	= "tcp"
		cidr_blocks	= ["0.0.0.0/0"]
	}
        ingress {
                description     = "Allow Port 8080"
                from_port       = 8080
                to_port         = 8080
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        ingress {
                description     = "Allow Port 8081"
                from_port       = 8081
                to_port         = 8081
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        ingress {
                description     = "Allow Port 9000"
                from_port       = 9000
                to_port         = 9000
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
	egress {
		description	= "Allow all ip and ports outbound"
		from_port	= 0
		to_port		= 0
		protocol	= "-1"
		cidr_blocks	= ["0.0.0.0/0"]
	}

	tags			= {
		Name		= "vpc-karthik"
	}
}

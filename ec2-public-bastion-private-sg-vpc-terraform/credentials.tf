# Variables for Tomcat Users and Passwords
variable "manager_username" {
	description	= "Provide the username for Tomcat"
	type		= string
	sensitive	= true
	}
variable "admin_username" {
        description     = "Provide the username for Tomcat"
        type            = string
	sensitive       = true
        }
variable "manager_password" {
        description     = "Provide the username for Tomcat"
        type            = string
        sensitive       = true
        }
variable "admin_password" {
        description     = "Provide the username for Tomcat"
        type            = string
        sensitive       = true
        }

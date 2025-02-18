variable "vpc_id" {
  description = "VPC ID where the instances will be deployed"
  type        = string
}

variable "instance_type" {
  description = "Name of the project"
  type        = string
  default     = "t2.micro"
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = ["20.0.0.0/28"]
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = ["20.0.1.0/28"]
}

variable "key_name" {
  description = "Name of the key pair"
  type        = string
  default     = "aws_access_key"
}

variable "public_instance_per_subnet" {
  description = "Number of amazon linux host"
  type        = number
  default     = 3
}

variable "private_instance_per_subnet" {
  description = "Number of amazon linux host"
  type        = number
  default     = 2
}

variable "private_key_location" {
  description = "Location of the private key"
  type        = string
  default     = "/Users/shamimmd/.ssh/aws_access_key.pem"
}

variable "public_instance_sg_ports" {

  description = "Define the ports and protocols for the security group"
  type        = list(any)
  default = [
    {
      "port" : 22,
      "protocol" : "tcp"
    },
  ]
}

variable "private_instance_sg_ports" {

  description = "Define the ports and protocols for the security group"
  type        = list(any)
  default = [
    {
      "port" : 22,
      "protocol" : "tcp"
    },
    {
      "port" : -1,
      "protocol" : "icmp"
    }
  ]
}

variable "public_instance_conf" {
  description = "Configuration for public instances"
  type        = list(object({
    ami                    = string
    instance_type          = string
    subnet_id              = string
    key_name               = string
    vpc_security_group_ids = list(string)
  }))
}

variable "private_instance_conf" {
  description = "Configuration for private instances"
  type        = list(object({
    ami                    = string
    instance_type          = string
    subnet_id              = string
    key_name               = string
    vpc_security_group_ids = list(string)
  }))
}

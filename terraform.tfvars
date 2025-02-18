cidr = "20.0.0.0/16"
instance_type = "t2.micro"
aws_region = "us-east-1"
public_subnets = [ "20.0.0.0/28" ]
private_subnets = [ "20.0.1.0/28" ]
public_instance_conf = [
  {
    ami                    = "ami-04b4f1a9cf54c11d0"
    instance_type          = "t2.micro"
    subnet_id              =  "" 
    key_name               = "key_name"
    vpc_security_group_ids = [""] 
  }
]

private_instance_conf = [
  {
    ami                    = "ami-04b4f1a9cf54c11d0"
    instance_type          = "t2.micro"
    subnet_id              = "" 
    key_name               = "key_name"
    vpc_security_group_ids = [""] 
  }
]
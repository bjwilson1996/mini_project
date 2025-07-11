variable ami {
  default= "ami-0b8607d2721c94a77"   #ubuntu AMI
}
variable instance_type{
  default= "t2.micro"
}

variable v_tags{
  type= string
  default= "webapp"
}

# Vpc CIDR Block

variable vpc_cidr {
   default= "10.0.0.0/16"
}

variable v_azs {
  type= list
  default=["ap-southeast-1a","ap-southeast-1b"]
  }
variable pub_cidr_block {
  description = "CIDR block for public subnets"
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable priv_cidr_block {
  description = "CIDR block for private subnets"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.11.0/24"]
}



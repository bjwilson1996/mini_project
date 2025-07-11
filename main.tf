#VPC

resource aws_vpc "vpc"{
  cidr_block = var.vpc_cidr
  
  tags= {
      Name= join("-",[var.v_tags, "VPC"])
	  }
}

#Internet Gateway

resource aws_internet_gateway "igw"{
  vpc_id = aws_vpc.vpc.id
  tags= {
     Name= join("-",[var.v_tags, "igw"])
	 }
}

#private subnet

resource aws_subnet "Priv_sub"{
  count= length(var.v_azs)
  vpc_id= aws_vpc.vpc.id
  cidr_block = var.priv_cidr_block[count.index]
  availability_zone= var.v_azs[count.index]
  tags= {
      Name= join("-",[var.v_tags, "priv"])
	  }
}

#public subnet

resource aws_subnet "pub_sub"{
  count= length(var.v_azs)
  vpc_id= aws_vpc.vpc.id
  cidr_block = var.pub_cidr_block[count.index]
  availability_zone= var.v_azs[count.index]
  tags= {
      Name= join("-",[var.v_tags, "pub"])
	  }
}

#ROUTE TABLE for public Subnet

resource aws_route_table "pub_rt"{
  vpc_id= aws_vpc.vpc.id
  
   route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags= {
    Name= join("-",[var.v_tags,"pub_RT"])
	}
}

resource aws_route_table_association "pub_ass" {
  count=length(var.v_azs)
  subnet_id      = aws_subnet.pub_sub[count.index].id
  route_table_id = aws_route_table.pub_rt.id
}

#security Group 

resource aws_security_group "sg" {
  name        = "sg"
  description = "Allow HTTP and SSH"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags= {
      Name= join("-",[var.v_tags, "sg"])
	  }
}

# EC2 Instance

resource aws_instance "inc1"{
  count= length(var.v_azs)
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.pub_sub[count.index].id
  user_data = file("./1.sh")
  key_name= "Nani"
  vpc_security_group_ids      = [aws_security_group.sg.id]
  associate_public_ip_address = true
   tags= {
      Name= join("-",[var.v_tags, "Inc",count.index])
	  }
}
  
    
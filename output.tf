output public_ips {
  value = [for instance in aws_instance.inc1 : instance.public_ip]
}
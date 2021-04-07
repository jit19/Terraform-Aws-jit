provider "aws" {
    region = var.region
    access_key = "AKIAZZIDJYWMRFNTEXW3"
    secret_key = "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"
  
}
resource "aws_instance" "myec2" {
    ami = var.ami_id
    instance_type = var.Instance_type
    key_name = var.keyname
    #security_groups =  [ "${aws_security_group.ec2-security.name}" ]
    security_groups = ["allow_ssh"]
    tags = {
      Name = "myce2"
    }

  
}
/* resource "aws_security_group" "ec2-security" {
    name = "allow_ssh"
    description = "Allow TLS inbound traffic"
    ingress {
    description = ""
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
    tags = {
      Name = "allow_ssh"
    }
} **/
output "publicIp" {
    value = aws_instance.myec2.public_ip
  
}
output "ec2_dns_name" {
    value = aws_instance.myec2.public_dns
  
}

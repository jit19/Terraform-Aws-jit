provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAZZIDJYWMYCE2P7FG"
  secret_key = "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"
}

resource "aws_instance" "DevServer" {
  ami           = "ami-026669ec456129a70"
  instance_type = "t2.micro"
  key_name="kubernetes"

  # Assign security group to instance devsever
  #vpc_security_group_ids = ["aws_security_group.allow_ssh.id"]
  #security_groups = [ "aws_security_group.allow_ssh.name" ]
  # security_groups for Ec2-Classic Instance
  security_groups = [ "${aws_security_group.web_security.name}" ]
  

  tags = {
    Name = "HelloWorld"
  }
}
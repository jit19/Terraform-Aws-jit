resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "ap-south-1a"
  size              = 2
  type              = "gp2"

  tags = {
    Name = "ebs-volume-terraform-demo"
  }
}

resource "aws_volume_attachment" "ebc_volume_attachment" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.ebs_volume.id
  instance_id = aws_instance.DevServer.id
}
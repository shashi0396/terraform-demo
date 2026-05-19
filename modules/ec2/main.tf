resource "aws_instance" "demo_ec2_instance" {
  ami               = var.ami
  availability_zone = var.avail_zone
  instance_type     = var.inst_type

  root_block_device {
    volume_size = var.vol_size
    volume_type = "gp3"
  }

  # ebs_block_device {
  #   device_name = "/dev/sdh"
  # }

  tags = {
    Name = "demo-ec2-instance"
  }
}
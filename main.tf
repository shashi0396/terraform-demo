# provider "aws" {
#   region = var.region
# }

###########################################################################################

# resource "aws_s3_bucket" "demo_bucket" {
#   bucket = var.bucket_name

#   tags = {
#     Env = "dev"
#   }
# }


# resource "aws_instance" "demo_ec2_instance" {
#   ami               = var.ami
#   availability_zone = var.avail_zone
#   instance_type     = var.inst_type

#   root_block_device {
#     volume_size = var.vol_size
#     volume_type = "gp3"
#   }

#   # ebs_block_device {
#   #   device_name = "/dev/sdh"
#   # }

#   tags = {
#     Name = "demo-ec2-instance"
#   }
# }


###############################################

module "ec2" {
  source     = "./modules/ec2"
  region     = var.region
  ami        = var.ami
  inst_type  = var.inst_type
  vol_size   = var.vol_size
  avail_zone = var.avail_zone
}

module "ec2-prod" {
  source     = "./modules/ec2"
  region     = var.region
  ami        = var.ami
  inst_type  = var.inst_type
  vol_size   = var.vol_size
  avail_zone = var.avail_zone
}

module "ec2-dev" {
  source     = "./modules/ec2"
  region     = var.region
  ami        = var.ami
  inst_type  = var.inst_type
  vol_size   = var.vol_size
  avail_zone = var.avail_zone
}

# module "ec2-dev2" {
#   source     = "./modules/ec2"
#   region     = "us-west-1"
#   ami        = var.ami
#   inst_type  = var.inst_type
#   vol_size   = var.vol_size
#   avail_zone = var.avail_zone
# }

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "s3-dev" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}
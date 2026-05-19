output "public_ip" {
  value = module.ec2-dev.public_ip
}

output "public_ip_prod" {
  value = module.ec2-prod.public_ip
}

output "public_ip_ec2" {
  value = module.ec2.public_ip
}

# output "bucket_name" {
#   value = module.s3.bucket_name
# }
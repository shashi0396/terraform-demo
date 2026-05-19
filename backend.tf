terraform {
  backend "s3" {
    bucket         = "my-terraform-state-demo-md-195"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
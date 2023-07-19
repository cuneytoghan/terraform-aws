terraform {
  backend "s3" {
    bucket = "terraform-backend-startup"
    key    = "us-east-1/vpc"
    region = "us-east-1"
  }
}

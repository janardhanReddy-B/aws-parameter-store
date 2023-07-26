terraform {
  backend "s3" {
    bucket = "bucketforterraforme"
    key    = "parameter/terraform.tfstate"
    region = "us-east-1"
  }
}
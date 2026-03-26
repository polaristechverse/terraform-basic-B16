provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket = "polaris-state-store-bucket"
    key    = "polaris-basic.tfstate"
    region = "ap-south-2"
    use_lockfile = true
  }
}

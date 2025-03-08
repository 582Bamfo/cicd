terraform {
  backend "s3" {
    bucket         = "serl-s3-datastack-test"  # Replace with your S3 bucket name
    key            = "terraform/state.tfstate"   # Path to store the state file
    region         = "eu-west-2"                  # AWS region of the S3 bucket
  }
}
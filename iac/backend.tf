terraform {
  backend "s3" {
    bucket = "devopstechproject"    # Your specified S3 bucket name
    key    = "terraform/state/terraform.tfstate"  # Path where the state file will be stored
    region = "us-west-1"            # AWS region (replace with the appropriate region if necessary)
  }
}

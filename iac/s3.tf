# Define the S3 bucket for Terraform state storage
resource "aws_s3_bucket" "devopstechproject" {
  bucket = "devopstechproject"  # Your specified bucket name
  acl    = "private"            # Set access control to private

  tags = {
    Name        = "devopstechproject"
    Environment = "Production"
  }
}

# Optionally, you can create a versioning setting for the bucket (recommended for state files)
resource "aws_s3_bucket_versioning" "devopstechproject_versioning" {
  bucket = aws_s3_bucket.devopstechproject.bucket

  versioning_configuration {
    status = "Enabled"  # Enable versioning for the bucket to store previous versions of the state file
  }
}

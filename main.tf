# main.tf

provider "aws" {
  region = "us-east-1
}

resource "aws_s3_bucket" "example" {
  bucket = "my-insecure-bucket"
  acl    = "public-read"  # This makes the bucket publicly accessible, which is a security risk!
}

output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}

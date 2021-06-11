resource "aws_s3_bucket" "vm_bucket" {
  bucket = "vm-store-chi-zhang"
  acl    = "private"
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket                  = aws_s3_bucket.vm_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
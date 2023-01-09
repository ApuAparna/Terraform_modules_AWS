#CREATING S3 BUCKET:

resource "aws_s3_bucket" "bucket" {
  bucket = "indiumak23456"

  tags = {
    Name        = "indium"
  }
}

# BUCKET ACCELEARATION CONFIGURATION

resource "aws_s3_bucket_accelerate_configuration" "bucketAccelearation" {
  bucket = "${aws_s3_bucket.bucket.id}"
  status = var.status
}

# BUCKET PUBLIC ACCESS BLOCK:

resource "aws_s3_bucket_public_access_block" "Public_Access" {
  bucket = "${aws_s3_bucket.bucket.id}"

  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_bucket
}

# BUCKET OWNERSHIP:

resource "aws_s3_bucket_ownership_controls" "bucket_ownership" {
  bucket = "${aws_s3_bucket.bucket.id}"

  rule {
    object_ownership = var.bucket_ownership
  }
}

# BUCKET ACL:

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = "${aws_s3_bucket.bucket.id}"
  acl    = var.bucket_acl
}


# BUCKET VERSIONING:

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = var.bucket_versioning_status
  }
}

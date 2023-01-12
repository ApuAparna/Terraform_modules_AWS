# CREATING S3 BUCKET:

resource "aws_s3_bucket" "bucket_2" {

  bucket = "desxyzus2"
  tags = {
    Name        = "indium"
  }
}
#BUCKET ACCELEARATION CONFIGURATION

resource "aws_s3_bucket_accelerate_configuration" "bucketAccelearation_2" {
  bucket = "${aws_s3_bucket.bucket_2.id}"
  status = var.status_1
}

# BUCKET PUBLIC ACCESS BLOCK:

resource "aws_s3_bucket_public_access_block" "Public_Access_2" {
  bucket = "${aws_s3_bucket.bucket_2.id}"

  block_public_acls       = var.block_public_acls_1
  block_public_policy     = var.block_public_policy_1
  ignore_public_acls      = var.ignore_public_acls_1
  restrict_public_buckets = var.restrict_public_bucket_1
}

# BUCKET OWNERSHIP:

resource "aws_s3_bucket_ownership_controls" "bucket_ownership_2" {
  bucket = "${aws_s3_bucket.bucket_2.id}"

  rule {
    object_ownership = var.bucket_ownership_1
  }
}

# BUCKET ACL:

resource "aws_s3_bucket_acl" "bucket_acl_2" {
  bucket = "${aws_s3_bucket.bucket_2.id}"
  acl    = var.bucket_acl_1
}


# BUCKET VERSIONING:

resource "aws_s3_bucket_versioning" "versioning_2" {
  bucket = aws_s3_bucket.bucket_2.id
  versioning_configuration {
    status = var.bucket_versioning_status_1
  }
}

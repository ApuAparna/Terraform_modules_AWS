# Bucket Name:

output "bucket_name"{
    value="${aws_s3_bucket.bucket.id}"
}
# IAM role:
output "role_name" {
  value= "${aws_iam_role.s3_role.id}"
}

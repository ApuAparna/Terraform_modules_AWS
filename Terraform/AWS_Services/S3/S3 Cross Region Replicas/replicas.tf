#Bucket CROSS-REGION
resource "aws_s3_bucket_replication_configuration" "CRR" {
   depends_on = [aws_s3_bucket_versioning.versioning]
   role   = aws_iam_role.s3_role.arn
   bucket = aws_s3_bucket.bucket.id
   rule {
    id = "index.html"
    status= "Enabled"
    destination {
      bucket        = aws_s3_bucket.bucket_2.arn
      storage_class = "STANDARD"
    }
 }
}

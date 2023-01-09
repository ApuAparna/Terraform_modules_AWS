#Bucket object upload:

resource "aws_s3_bucket_object" "object_1" {
  bucket =  "${aws_s3_bucket.bucket.id}"
  key    = var.Bucket_Key
  acl = var.bucket_acl
  source = var.path_one
  content_type = var.Object_Content_Type
}

#Bucket object upload Two:

resource "aws_s3_bucket_object" "object_2" {
  bucket = "${aws_s3_bucket.bucket.id}"
  key    = var.Bucket_Key_two
  acl = var.bucket_acl_action
  source = var.path_one_objTwo
  content_type = var.Object_Content_Type
}

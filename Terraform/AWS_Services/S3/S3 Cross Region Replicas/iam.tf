# CREATING IAM POLICY:

resource "aws_iam_policy" "bucket_policy" {
  name        = "my-bucket-policy_1"

  description = "Allow "

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
})

}

# CREATING IAM ROLE:

resource "aws_iam_role" "s3_role" {
  name = "my_role_s3_1"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "s3.amazonaws.com"
        }
      },
    ]
  })
}

# ATTACHING POLCIY TO IAM :

resource "aws_iam_role_policy_attachment" "some_bucket_policy" {
  role       = aws_iam_role.s3_role.name
  policy_arn = aws_iam_policy.bucket_policy.arn
}

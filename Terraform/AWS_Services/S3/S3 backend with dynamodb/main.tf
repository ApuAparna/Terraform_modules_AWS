# CREATING A DYNAMODB TABLE:

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-statelock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}

# SETTING UP S3 BACKEND WITH DYNAMODB:

terraform {
  backend "s3" {
    encrypt = true
    bucket = "dynodb"
    dynamodb_table = "terraform-statelock-dynamo"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

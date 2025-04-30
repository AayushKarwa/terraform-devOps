resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "terraform-state-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
  depends_on = [ aws_s3_bucket.remote_s3 ]

  tags = {
    Name = "terraform-state-table"
  }
}
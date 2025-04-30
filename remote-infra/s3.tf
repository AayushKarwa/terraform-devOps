resource "aws_s3_bucket" "remote_s3" {
  bucket = "terraform-state-bucket-2029"

  tags = {
    Name = "terraform-state-bucket-2029"
    
  }
}
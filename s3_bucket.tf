provider "aws"{
  region     = "us-east-1"
  access_key = "AKIA54RR4PJJPQVIXUFS"
  secret_key = "CMI2zJaeQjginZvynbYVH/pj3MuX06rCAIzTqeVU"
}
resource "aws_s3_bucket" "first"{
  bucket = "aws-encisor-tech001"
}
resource "aws_s3_bucket_acl" "example1" {
  bucket = aws_s3_bucket.first.id
  acl    = "private"

}

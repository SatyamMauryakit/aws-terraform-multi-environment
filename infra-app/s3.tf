resource "aws_s3_bucket" "remote_s3" {
    bucket = "${var.env}-${var.bucket_name}"

    tags = {
        name = "remote-s3-bucket-terraform"
       Environment = var.env
    }
  
}
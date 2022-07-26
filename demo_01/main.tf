resource "aws_instance" "foo" {
  ami           = var.image_id
  instance_type = var.instance_type
  
  tags = local.common_tags
}

data "aws_s3_bucket" "bucket" {
    bucket = "lkravi-demo-01"
}
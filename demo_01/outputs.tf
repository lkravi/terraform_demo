output "bucket_arn" {
    value = data.aws_s3_bucket.bucket.arn
}

output "instance_private_ip" {
    value = aws_instance.foo.private_ip
}
output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.main_public_a.id
}

output "private_subnet_id" {
  value = aws_subnet.main_private_a.id
}
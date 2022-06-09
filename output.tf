output "aws_created_url" {
    value = aws_instance.ec2_instance.public_dns
}
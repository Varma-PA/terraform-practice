
resource "aws_instance" "ec2_instance" {
  
    ami = var.ami_image.imageId

    instance_type = "t2.micro"

    vpc_security_group_ids = [aws_security_group.security_group]

    key_name = "AWS_MACBOOK_PRO_NEU"

    user_data = file("init-spring-boot-app.sh")

    tags = {
      "Name" = "Created using Terraform"
    }

}

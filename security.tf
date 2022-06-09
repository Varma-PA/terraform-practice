
resource "aws_security_group" "security_group" {
  
    name = "Terraform created group"
    description = "Allowing port 8081, SSH and HTTP"
    vpc_id = "vpc-09b699301aa034ed3"

    ingress {
        description = "SSH to EC2"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "HTTO to EC2"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "8081 to EC2"
        from_port = 8081
        to_port = 8081
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      "Name" = "Now"
    }

}
